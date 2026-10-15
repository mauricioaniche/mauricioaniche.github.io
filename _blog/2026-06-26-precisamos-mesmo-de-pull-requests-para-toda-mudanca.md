---
tags: [ia, revisao-de-codigo, entrega]
title: "Precisamos mesmo de pull requests para toda mudança?"
layout: "post"
date: "2026-06-26T09:30:15.271538-03:00"
image: "/assets/images/content/cartoon/blog-2026-06-26-precisamos-mesmo-de-pull-requests-para-toda-mudanca.jpg"
category: "Engenharia"
description: "O Andrea LaForgia escreveu um post bem provocativo sobre se precisamos mesmo de pull requests. O resumo do próprio autor:"
source_network: "LinkedIn"
source_post_id: "5af39b0a-bd13-46d9-839d-cb4cf31bd5fa"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: duas engenheiras discutem uma cancela em uma pista de carrinhos: uma faixa livre para cargas simples e uma estação de avaliação para cargas complexas."
---

O Andrea LaForgia escreveu um post bem provocativo sobre se precisamos mesmo de pull requests. O resumo do próprio autor:

- As solicitações de pull request (Pull Requests) foram concebidas para contribuições de código aberto feitas por pessoas desconhecidas e sem qualquer vínculo de confiança. Aplicá-las a equipes confiáveis ​​é um erro de categoria.

- Trabalhos científicos mostram que o principal valor da revisão de código é a transferência de conhecimento, não a detecção de bugs. Menos de 15% dos comentários de revisão se referem a bugs reais.

- Fluxos de trabalho de Pull Requests assíncronos significam que seu código passa de 86% a 99% do seu tempo de desenvolvimento aguardando. Uma organização chegou a gastar 130.000 horas em um único ano esperando por Pull Requests que não receberam nenhum comentário.

- Uma pesquisa da DORA com mais de 36.000 profissionais mostra que o desenvolvimento baseado em trunk está correlacionado a um desempenho de entrega de software dramaticamente superior, e revisões de código mais rápidas, por si só, melhoram o desempenho em 50%.

Estamos tão acostumados com o fluxo de PRs, que nem paramos pra refletir se realmente faz sentido. Algumas provocações:

- Será que todo PR precisa mesmo de um segundo olho humano? Até aquele micro-PR onde você só troca uma label no site? Por quê não só revisar aqueles PRs mais complicados, onde você realmente precisa de feedback?

- Será mesmo que a melhor forma de passar conhecimento é ter alguém lendo cada linha de código que você escreveu? E será mesmo que todo mundo tem que estar ciente de todas linhas escritas? Tem maneiras melhores de treinar o seu dev júnior sem ser revisando cada vírgula que ele escreve em cada PR que ele abre?

- Será que é a hora da "volta do pair programming"? Sinto que a popularidade de PP deu uma caída, mas será que a melhor hora dele voltar é agora, onde não conseguimos mais revisar tanto PR?

Meu sentimento é de que realmente não precisamos de PRs como gate-keepers 100% do tempo para 100% do código escrito. Precisamos testar.

Leiam o texto original, indicado nas referências ao final.

## Referências

- [Link para o texto](https://a4al6a.substack.com/p/stop-using-pull-requests)
