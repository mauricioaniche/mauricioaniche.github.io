(() => {
  // Keep links to the former external-articles section working.
  const url = new URL(location.href);
  if (url.searchParams.has('assunto-externo') || url.hash === '#outros-artigos') {
    url.searchParams.getAll('assunto-externo').forEach((topic) => {
      if (!url.searchParams.getAll('assunto').includes(topic)) url.searchParams.append('assunto', topic);
    });
    url.searchParams.delete('assunto-externo');
    if (url.hash === '#outros-artigos') url.hash = 'artigos';
    history.replaceState(null, '', url);
    if (url.hash === '#artigos') document.getElementById('artigos')?.scrollIntoView();
  }

  document.querySelectorAll('[data-topic-pagination]').forEach((section) => {
    const pageSize = Math.max(1, parseInt(section.dataset.topicPageSize, 10) || 6);
    const cards = [...section.querySelectorAll('[data-topic-items] > article')];
    const controls = section.querySelector('[data-topic-page-controls]');
    const previous = section.querySelector('[data-topic-previous]');
    const next = section.querySelector('[data-topic-next]');
    const select = section.querySelector('[data-topic-page]');
    const status = section.querySelector('[data-topic-page-status]');
    const filters = section.querySelector('[data-topic-filters]');
    const buttons = [...section.querySelectorAll('[data-topic-filter]')];
    const reset = section.querySelector('[data-topic-reset]');
    const empty = section.querySelector('[data-topic-empty]');
    const queryKey = section.dataset.topicQuery;
    const knownTopics = new Set(buttons.map((button) => button.dataset.topicFilter));
    let selected = new Set();
    let currentPage = 1;
    let totalPages = 0;

    function readFilters() {
      selected = new Set(new URLSearchParams(location.search).getAll(queryKey)
        .filter((topic) => knownTopics.has(topic)));
      currentPage = 1;
    }

    function render(moveToHeading = false) {
      const matching = cards.filter((card) => {
        const topics = new Set((card.dataset.topics || '').split(' '));
        return [...selected].every((topic) => topics.has(topic));
      });
      totalPages = Math.ceil(matching.length / pageSize);
      currentPage = Math.max(1, Math.min(currentPage, totalPages));
      const start = (currentPage - 1) * pageSize;
      const visible = new Set(matching.slice(start, start + pageSize));
      cards.forEach((card) => { card.hidden = !visible.has(card); });
      select.replaceChildren();
      for (let page = 1; page <= totalPages; page++) {
        select.add(new Option(String(page), String(page)));
      }
      section.querySelector('[data-topic-page-total]').textContent = `de ${totalPages}`;
      controls.hidden = totalPages <= 1;
      previous.disabled = currentPage === 1;
      next.disabled = currentPage >= totalPages;
      select.value = String(currentPage);
      status.textContent = matching.length
        ? `Mostrando ${start + 1}–${Math.min(start + pageSize, matching.length)} de ${matching.length}${selected.size ? ' artigos filtrados' : ''}`
        : 'Nenhum artigo encontrado.';
      buttons.forEach((button) => {
        button.setAttribute('aria-pressed', String(selected.has(button.dataset.topicFilter)));
      });
      if (reset) reset.hidden = selected.size === 0;
      if (empty) empty.hidden = matching.length !== 0;

      if (moveToHeading) {
        const heading = section.querySelector('h2');
        heading.focus({ preventScroll: true });
        heading.scrollIntoView({
          behavior: window.matchMedia('(prefers-reduced-motion: reduce)').matches ? 'auto' : 'smooth',
          block: 'start',
        });
      }
    }

    function changeFilters() {
      currentPage = 1;
      const url = new URL(location.href);
      url.searchParams.delete(queryKey);
      selected.forEach((topic) => url.searchParams.append(queryKey, topic));
      history.pushState(null, '', url);
      render();
    }

    if (filters) {
      filters.hidden = false;
      readFilters();
      buttons.forEach((button) => button.addEventListener('click', () => {
        const topic = button.dataset.topicFilter;
        if (selected.has(topic)) selected.delete(topic);
        else selected.add(topic);
        changeFilters();
      }));
      reset.addEventListener('click', () => {
        selected.clear();
        changeFilters();
        buttons[0]?.focus({ preventScroll: true });
      });
      window.addEventListener('popstate', () => { readFilters(); render(); });
    }
    previous.addEventListener('click', () => {
      currentPage = Math.max(1, currentPage - 1);
      render(true);
    });
    next.addEventListener('click', () => {
      currentPage = Math.min(totalPages, currentPage + 1);
      render(true);
    });
    select.addEventListener('change', () => {
      currentPage = Number(select.value);
      render(true);
    });
    render();
  });
})();
