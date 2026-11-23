/* O conteúdo dos slides fica inteiramente em index.html. */
const deckOptions = {
  width: 1280,
  height: 720,
  margin: 0.025,
  minScale: 0.1,
  maxScale: 2,
  hash: true,
  history: true,
  center: false,
  controls: true,
  progress: true,
  slideNumber: 'c/t',
  transition: 'none',
  backgroundTransition: 'none',
  pdfSeparateFragments: false,
  pdfMaxPagesPerSlide: 1,
  plugins: [RevealSearch, RevealZoom]
};

const query = new URLSearchParams(location.search);
// ?apoio=1 inclui os slides complementares. ?tweets=1 carrega os embeds ao vivo.
if (query.get('apoio') !== '1') {
  document.querySelectorAll('[data-appendix]').forEach(slide => {
    slide.dataset.visibility = 'hidden';
  });
}

let twitterLoader;
function loadTwitter() {
  if (window.twttr?.widgets) return Promise.resolve(window.twttr);
  if (!twitterLoader) {
    twitterLoader = new Promise((resolve, reject) => {
      const script = document.createElement('script');
      const timeout = setTimeout(() => reject(new Error('O X não respondeu.')), 12000);
      script.src = 'https://platform.twitter.com/widgets.js';
      script.async = true;
      script.onload = () => {
        if (!window.twttr?.ready) {
          clearTimeout(timeout);
          reject(new Error('Embed indisponível.'));
          return;
        }
        window.twttr.ready(api => { clearTimeout(timeout); resolve(api); });
      };
      script.onerror = () => { clearTimeout(timeout); reject(new Error('Sem conexão com o X.')); };
      document.head.appendChild(script);
    }).catch(error => { twitterLoader = undefined; throw error; });
  }
  return twitterLoader;
}

async function showTweet(block) {
  const button = block.querySelector('.tweet-action');
  if (block.dataset.loading || block.classList.contains('has-live')) return;
  block.dataset.loading = 'true';
  if (button) button.textContent = 'Carregando publicação…';
  try {
    const api = await loadTwitter();
    const target = block.querySelector('.tweet-live');
    const widget = await Promise.race([
      api.widgets.createTweet(block.dataset.tweetId, target, {
        dnt: true, conversation: 'none', width: 550, align: 'center', theme: 'light'
      }),
      new Promise((_, reject) => setTimeout(() => reject(new Error('Tempo esgotado.')), 15000))
    ]);
    if (!widget) throw new Error('Publicação indisponível.');
    block.classList.add('has-live');
    if (button) button.textContent = 'Publicação ao vivo';
  } catch {
    if (button) button.textContent = 'Tentar carregar publicação ao vivo';
  } finally {
    delete block.dataset.loading;
  }
}

document.querySelectorAll('.tweet-block').forEach(block => {
  block.querySelector('.tweet-action')?.addEventListener('click', () => showTweet(block));
});

Reveal.initialize(deckOptions).then(() => {
  if (query.get('tweets') === '1') {
    const loadCurrent = () => Reveal.getCurrentSlide().querySelectorAll('.tweet-block').forEach(showTweet);
    Reveal.on('slidechanged', loadCurrent);
    loadCurrent();
  }
});
