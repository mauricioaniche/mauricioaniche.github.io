(() => {
  const element = document.querySelector('#search');
  if (!element) return;
  if (!window.PagefindUI) {
    document.querySelector('[data-search-error]').hidden = false;
    return;
  }
  new window.PagefindUI({
    element: '#search',
    bundlePath: element.dataset.bundlePath,
    showSubResults: true,
    showImages: false,
    translations: {
      placeholder: 'Buscar no texto completo…',
      zero_results: 'Nenhum resultado para “[SEARCH_TERM]”.',
      load_more: 'Carregar mais resultados'
    }
  });
})();
