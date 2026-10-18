import fs from 'node:fs/promises';
import path from 'node:path';
import crypto from 'node:crypto';
import { execFileSync } from 'node:child_process';
import satori from 'satori';
import { Resvg } from '@resvg/resvg-js';
import { imageSize } from 'image-size';

// Commit the cards and metadata so plain Jekyll builds also have working previews.
const manifest = JSON.parse(execFileSync('bundle', ['exec', 'ruby', 'scripts/og-manifest.rb'], { encoding: 'utf8' }));
const font = await fs.readFile('assets/fonts/Manrope.ttf');
await fs.mkdir('assets/og', { recursive: true });
const cards = {};
for (const entry of manifest) {
  const slug = entry.url.replace(/^\/+|\/+$/g, '').replace(/[^a-zA-Z0-9-]+/g, '-') || 'inicio';
  const hash = crypto.createHash('sha256').update(entry.url).digest('hex').slice(0, 8);
  const image = `/assets/og/${slug}-${hash}.png`;
  const svg = await satori({ type: 'div', props: { style: {
    width: 1200, height: 630, display: 'flex', position: 'relative', background: '#f7f7f2',
    color: '#203b30', borderTop: '20px solid #b9d67a', fontFamily: 'Manrope'
  }, children: [
    { type: 'div', props: { style: { position: 'absolute', top: 62, left: 76, fontSize: 26, color: '#49674f' }, children: entry.type } },
    { type: 'div', props: { style: { position: 'absolute', top: 180, left: 76, width: 1048, fontSize: entry.title.length > 85 ? 49 : 60, fontWeight: 700, lineHeight: 1.18 }, children: entry.title } },
    { type: 'div', props: { style: { position: 'absolute', top: 530, left: 76, fontSize: 26 }, children: 'mauricioaniche.com' } }
  ] } }, { width: 1200, height: 630, fonts: [{ name: 'Manrope', data: font, weight: 700, style: 'normal' }] });
  await fs.writeFile(`.${image}`, new Resvg(svg).render().asPng());
  cards[entry.url] = image;
}
await fs.writeFile('_data/og_images.json', JSON.stringify(cards, null, 2) + '\n');

const images = {};
async function walk(directory) {
  for (const entry of await fs.readdir(directory, { withFileTypes: true })) {
    const filename = path.join(directory, entry.name);
    if (entry.isDirectory()) await walk(filename);
    else if (/\.(jpe?g|png|webp)$/i.test(filename)) {
      const buffer = await fs.readFile(filename);
      const { width, height, type } = imageSize(buffer);
      images[`/${filename}`] = { width, height, bytes: buffer.length, type: `image/${type === 'jpg' ? 'jpeg' : type}` };
    }
  }
}
await walk('assets');
await fs.writeFile('_data/image_metadata.json', JSON.stringify(images, null, 2) + '\n');
console.log(`${manifest.length} social cards; ${Object.keys(images).length} image metadata entries`);
