(() => {
  const pageSize = 6;

  document.querySelectorAll("[data-topic-pagination]").forEach((section) => {
    const cards = [...section.querySelectorAll("[data-topic-items] > article")];
    const controls = section.querySelector("[data-topic-page-controls]");
    const previous = section.querySelector("[data-topic-previous]");
    const next = section.querySelector("[data-topic-next]");
    const select = section.querySelector("[data-topic-page]");
    const status = section.querySelector("[data-topic-page-status]");
    const totalPages = Math.ceil(cards.length / pageSize);
    let currentPage = 1;

    for (let page = 1; page <= totalPages; page++) {
      select.add(new Option(String(page), String(page)));
    }
    section.querySelector("[data-topic-page-total]").textContent = `de ${totalPages}`;
    controls.hidden = totalPages <= 1;

    function render(moveToHeading = false) {
      const start = (currentPage - 1) * pageSize;
      cards.forEach((card, index) => {
        card.hidden = index < start || index >= start + pageSize;
      });
      previous.disabled = currentPage === 1;
      next.disabled = currentPage >= totalPages;
      select.value = String(currentPage);
      status.textContent = cards.length
        ? `Mostrando ${start + 1}–${Math.min(start + pageSize, cards.length)} de ${cards.length}`
        : "Nenhum conteúdo disponível.";

      if (moveToHeading) {
        const heading = section.querySelector("h2");
        heading.focus({ preventScroll: true });
        heading.scrollIntoView({
          behavior: window.matchMedia("(prefers-reduced-motion: reduce)").matches
            ? "auto"
            : "smooth",
          block: "start",
        });
      }
    }

    previous.addEventListener("click", () => {
      currentPage = Math.max(1, currentPage - 1);
      render(true);
    });
    next.addEventListener("click", () => {
      currentPage = Math.min(totalPages, currentPage + 1);
      render(true);
    });
    select.addEventListener("change", () => {
      currentPage = Number(select.value);
      render(true);
    });
    render();
  });
})();
