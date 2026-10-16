(() => {
  const root = document.querySelector('[data-remissive-index]');
  if (!root) return;

  const normalize = (value) => value.normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '').toLocaleLowerCase('pt-BR')
    .replace(/[^\p{L}\p{N}]+/gu, ' ').trim();
  const search = root.querySelector('[data-index-search]');
  const kind = root.querySelector('[data-index-kind]');
  const buttons = [...root.querySelectorAll('[data-index-type]')];
  const groups = [...root.querySelectorAll('[data-index-letter]')];
  const letters = [...root.querySelectorAll('[data-index-letter-link]')];
  const reference = (element) => ({
    element,
    type: element.dataset.type,
    url: element.querySelector('a').getAttribute('href'),
    text: normalize(element.textContent),
  });
  const terms = [...root.querySelectorAll('[data-index-term]')].map((element) => ({
    element,
    name: normalize(element.dataset.aliases),
    count: element.querySelector('[data-index-term-count]'),
    references: [...element.querySelectorAll('[data-index-reference]')].map(reference),
  }));
  const titles = [...root.querySelectorAll('#index-titulos [data-index-reference]')].map(reference);
  const types = new Set(buttons.map((button) => button.dataset.indexType));
  const kinds = new Set([...kind.options].map((option) => option.value));
  let type = 'all';

  function filter(updateURL = true) {
    const query = normalize(search.value).split(' ').filter(Boolean);
    const matches = (text) => query.every((word) => word.length < 3
      ? ` ${text} `.includes(` ${word} `) : text.includes(word));
    const matchingTitles = new Set();
    let termCount = 0;
    terms.forEach((term) => {
      const nameMatches = matches(term.name);
      const kindMatches = kind.value === 'all' || kind.value === term.element.dataset.kind;
      let count = 0;
      term.references.forEach((ref) => {
        const visible = (type === 'all' || type === ref.type) && (nameMatches || matches(ref.text));
        ref.element.hidden = !visible;
        if (visible) count++;
        // The category of the index term does not restrict the full title list.
        if (nameMatches && visible) matchingTitles.add(ref.url);
      });
      term.element.hidden = !kindMatches || count === 0;
      term.count.textContent = count;
      term.count.setAttribute('aria-label', `${count} ${count === 1 ? 'conteúdo' : 'conteúdos'}`);
      if (!term.element.hidden) termCount++;
    });
    groups.forEach((group) => {
      group.hidden = !group.querySelector('[data-index-term]:not([hidden])');
    });
    letters.forEach((letter) => {
      const group = groups.find((group) => group.dataset.indexLetter === letter.dataset.indexLetterLink);
      letter.hidden = !group || group.hidden;
    });
    root.querySelector('[data-index-alphabet]').hidden = termCount === 0;
    let titleCount = 0;
    titles.forEach((ref) => {
      ref.element.hidden = !(type === 'all' || ref.type === type)
        || !(matches(ref.text) || matchingTitles.has(ref.url));
      if (!ref.element.hidden) titleCount++;
    });
    root.querySelector('[data-index-title-status]').textContent = titleCount
      ? `${titleCount} ${titleCount === 1 ? 'entrada encontrada' : 'entradas encontradas'}`
      : 'Nenhuma entrada encontrada. Tente outro termo ou tipo de conteúdo.';
    root.querySelector('[data-index-status]').textContent = `${termCount} ${termCount === 1 ? 'verbete' : 'verbetes'}. As contagens indicam o número de conteúdos relacionados.`;
    root.querySelector('[data-index-empty]').hidden = termCount > 0;
    buttons.forEach((button) => {
      const active = button.dataset.indexType === type;
      button.classList.toggle('active', active);
      button.setAttribute('aria-pressed', String(active));
    });
    if (updateURL) {
      const url = new URL(window.location.href);
      [['q', search.value.trim()], ['tipo', type === 'all' ? '' : type], ['grupo', kind.value === 'all' ? '' : kind.value]]
        .forEach(([key, value]) => value ? url.searchParams.set(key, value) : url.searchParams.delete(key));
      window.history.replaceState(null, '', url.pathname + url.search + url.hash);
    }
  }

  function restoreURL() {
    const params = new URLSearchParams(window.location.search);
    search.value = params.get('q') || '';
    type = types.has(params.get('tipo')) ? params.get('tipo') : 'all';
    kind.value = kinds.has(params.get('grupo')) ? params.get('grupo') : 'all';
    filter(false);
  }

  function revealHash() {
    let id;
    try { id = decodeURIComponent(window.location.hash.slice(1)); } catch { return; }
    const target = document.getElementById(id);
    if (!target || !root.contains(target)) return;
    if (target.matches('[data-index-term]')) {
      if (target.hidden || target.closest('[data-index-letter]').hidden) {
        search.value = '';
        type = kind.value = 'all';
        filter();
      }
      target.open = true;
      requestAnimationFrame(() => {
        target.scrollIntoView({ block: 'start' });
        target.querySelector('summary').focus({ preventScroll: true });
      });
    }
  }

  search.addEventListener('input', () => filter());
  kind.addEventListener('change', () => filter());
  buttons.forEach((button) => button.addEventListener('click', () => {
    type = button.dataset.indexType;
    filter();
  }));
  root.querySelector('[data-index-reset]').addEventListener('click', () => {
    search.value = '';
    type = kind.value = 'all';
    filter();
    search.focus();
  });
  window.addEventListener('popstate', () => { restoreURL(); revealHash(); });
  window.addEventListener('hashchange', revealHash);
  restoreURL();
  root.querySelector('[data-index-controls]').hidden = false;
  revealHash();
})();
