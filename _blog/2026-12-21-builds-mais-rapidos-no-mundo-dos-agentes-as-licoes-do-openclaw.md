---
title: "Builds mais rápidos no mundo dos agentes: as lições do OpenClaw"
layout: post
date: "2026-12-21T00:00:00-03:00"
category: Engenharia
tags: [ia, testes, entrega, custos]
description: "Reduzir desperdício, selecionar testes e organizar os estágios da CI para acelerar builds num cenário de mais PRs gerados por agentes."
image: /assets/images/content/cartoon/blog-2026-12-21-builds-mais-rapidos-no-mundo-dos-agentes-as-licoes-do-openclaw.jpg
image_alt: "Uma equipe organiza uma pista de bolinhas de gude, retira desvios desnecessários e escolhe caminhos curtos com pequenas comportas."
---

O Vincent Koc escreveu um texto muito completo sobre como o time do OpenClaw diminuiu o tempo de build.

O tempo de build ganhou muita atenção no mundo agêntico já que estamos abrindo mais PRs do que nunca, e agora o tempo de build não só atrasa o time, mas também custa dinheiro.

O post é bem completo e longo, então vou resumir o que achei de mais interessante.

- Delete o desperdício antes de otimizar qualquer coisa. Os agentes estão treinados para escrever novos testes para quaisquer mudanças que eles fazem. E isso cresce rápido. Eles começaram a forçar limites para novos testes em PRs. Prova pra mim que esse teste é necessário ou se todos forem, você vai precisar escolher. Eles também fizeram uma superlimpeza de testes que não eram tão importantes. O prompt exato está disponível no post, se quiser fazer o mesmo.

- Coloque cada verificação no seu estágio correto. Você não precisa rodar tudo o tempo todo e em todo lugar. Com o PR aberto, você pode rodar só testes que fazem sentido. Quando for mergear, aí sim você roda todos, por exemplo.

- Pare de começar jobs que já nascem ultrapassados. Se você vai começar a rodar um job, mas já sabe que tem mais código entrando e a execução desse job não vai importar mesmo, nem comece ele.

- Seleção de testes. O artigo gasta bastante tempo explicando a solução deles de seleção de testes. Sou fã. A seleção de testes que roda até hoje na Adyen começou comigo e tenho um post de blog bem completo sobre como ela funciona.

- Otimize sua CI. Use cache, faça uso de blobless checkouts, garanta que o ambiente tenha só o que precisa, etc.

Vocês já estão precisando otimizar o build de vocês também?

Link para o post original: <https://vincent.build/openclaw-ci-cost-reduction/>
