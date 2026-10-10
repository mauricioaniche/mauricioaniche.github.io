(() => {
  const cards = [...document.querySelectorAll(".post-card")];
  const buttons = [...document.querySelectorAll("[data-filter]")];
  const search = document.querySelector("#post-search");
  let category = "Todos";
  const normalize = (text) =>
    text
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .toLocaleLowerCase("pt-BR");
  function filter() {
    const term = normalize(search.value.trim());
    let count = 0;
    cards.forEach((card) => {
      const matches =
        (category === "Todos" || card.dataset.category === category) &&
        normalize(card.textContent).includes(term);
      card.hidden = !matches;
      if (matches) count++;
    });
    document.querySelector("#no-posts").hidden = count > 0;
    document.querySelector("#post-count").textContent =
      `${count} ${count === 1 ? "artigo encontrado" : "artigos encontrados"}`;
  }
  buttons.forEach((button) =>
    button.addEventListener("click", () => {
      category = button.dataset.filter;
      buttons.forEach((item) => {
        const active = item === button;
        item.classList.toggle("active", active);
        item.setAttribute("aria-pressed", String(active));
      });
      filter();
    }),
  );
  search.addEventListener("input", filter);
  filter();
})();
