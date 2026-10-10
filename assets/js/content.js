(() => {
  const normalize = (value) =>
    value
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .toLocaleLowerCase("pt-BR");
  document.querySelectorAll("[data-content-library]").forEach((library) => {
    const cards = [...library.querySelectorAll(".content-card")];
    const buttons = [...library.querySelectorAll("[data-filter]")];
    const search = library.querySelector("[data-content-search]");
    const empty = library.querySelector("[data-content-empty]");
    const status = library.querySelector("[data-content-count]");
    const categories = new Set(buttons.map((button) => button.dataset.filter));
    let category = "all";
    const matches = (card, terms) =>
      (category === "all" || card.dataset.category === category) &&
      terms.every((term) =>
        normalize(card.dataset.search + " " + card.textContent).includes(term),
      );
    function filter(updateURL = true) {
      const terms = normalize(search.value.trim()).split(/\s+/).filter(Boolean);
      let count = 0;
      cards.forEach((card) => {
        card.hidden = !matches(card, terms);
        if (!card.hidden) count++;
      });
      buttons.forEach((button) => {
        const active = button.dataset.filter === category;
        button.classList.toggle("active", active);
        button.setAttribute("aria-pressed", String(active));
      });
      empty.hidden = count > 0;
      status.textContent = `${count} ${count === 1 ? "conteúdo encontrado" : "conteúdos encontrados"}`;
      if (updateURL) {
        const url = new URL(window.location.href);
        if (category === "all") url.searchParams.delete("tipo");
        else url.searchParams.set("tipo", category);
        if (search.value.trim()) url.searchParams.set("q", search.value.trim());
        else url.searchParams.delete("q");
        window.history.replaceState(
          null,
          "",
          url.pathname + url.search + url.hash,
        );
      }
    }
    function restoreURL() {
      const params = new URLSearchParams(window.location.search);
      category = categories.has(params.get("tipo"))
        ? params.get("tipo")
        : "all";
      search.value = params.get("q") || "";
      filter(false);
    }
    buttons.forEach((button) =>
      button.addEventListener("click", () => {
        category = button.dataset.filter;
        filter();
      }),
    );
    search.addEventListener("input", () => filter());
    library
      .querySelector("[data-content-reset]")
      .addEventListener("click", () => {
        category = "all";
        search.value = "";
        filter();
        search.focus();
      });
    window.addEventListener("popstate", restoreURL);
    restoreURL();
  });
})();
