import fs from 'node:fs/promises';
import crypto from 'node:crypto';
import { execFileSync } from 'node:child_process';
import sharp from 'sharp';

// Derive covers from Jekyll's effective front matter, including collection defaults.
// Originals remain the fallback, download and social-preview assets.
const sources = JSON.parse(execFileSync('bundle', ['exec', 'ruby', 'scripts/image-manifest.rb'], { encoding: 'utf8' }));
const directory = 'assets/images/responsive';
await fs.mkdir(directory, { recursive: true });
const manifest = {};
const generated = new Set();
for (const source of sources) {
  const buffer = await fs.readFile(`.${source}`);
  const metadata = await sharp(buffer).rotate().metadata();
  const width = metadata.autoOrient?.width ?? metadata.width;
  const height = metadata.autoOrient?.height ?? metadata.height;
  const hash = crypto.createHash('sha256').update('webp-q82-v1').update(source).update(buffer).digest('hex').slice(0, 16);
  const widths = [...new Set([320, 640, 960, Math.min(1280, width)].filter(size => size <= width))].sort((a, b) => a - b);
  const variants = [];
  for (const size of widths) {
    const filename = `${hash}-${size}.webp`;
    const destination = `${directory}/${filename}`;
    generated.add(filename);
    try { await fs.access(destination); }
    catch { await sharp(buffer).rotate().resize({ width: size, withoutEnlargement: true }).webp({ quality: 82, effort: 4 }).toFile(destination); }
    const encoded = await fs.readFile(destination);
    const info = await sharp(encoded).metadata();
    variants.push({ url: `/${destination}`, width: info.width, height: info.height, bytes: encoded.length });
  }
  manifest[source] = { width, height, variants };
}
// This directory contains only generated derivatives. Remove obsolete variants.
for (const filename of await fs.readdir(directory)) {
  if (/^[a-f0-9]{16}-\d+\.webp$/.test(filename) && !generated.has(filename)) await fs.unlink(`${directory}/${filename}`);
}
await fs.writeFile('_data/responsive_images.json', JSON.stringify(manifest, null, 2) + '\n');
console.log(`${sources.length} original images; ${generated.size} responsive WebP variants`);
