---
tags: [ia, agentes, revisao-de-codigo, qualidade, operacao]
title: "Mais código com IA e uma taxa menor de incidentes"
layout: "post"
date: "2026-11-17T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-17-mais-codigo-com-ia-e-uma-taxa-menor-de-incidentes.jpg"
image_alt: "Um robô inspeciona um barquinho na bancada enquanto engenheiros testam outro em uma bacia com correntezas e pedras."
category: "Engenharia"
description: "O relato de Chris Evans, da incident.io, sobre a queda na taxa de incidentes por mudança e o desafio de detectar bugs de produção com IA."
---

Com o volume de código que estamos entregando com agentes de IA, é esperado que o número de incidentes cresça, certo? Pois é, algumas empresas estão observando o volume de código crescer e a taxa de incidentes por mudança DIMINUIR!

Chris Evans, CTO da incident.io, uma ferramenta usada justamente para gestão de incidentes, postou que eles estão entregando 3x mais código do que um ano atrás. Mas que, um ano atrás, a taxa de incidentes por mudança era de 1,4% (ou seja, a cada 1.000 mudanças deployadas, 14 incidentes). E que hoje essa taxa caiu para 0,82%, ou seja, uma redução de 41%! É uma queda na taxa por mudança; o post não informa uma redução no número absoluto de incidentes.

Segundo ele, a explicação para isso são as melhores ferramentas de código e mais defeitos sendo pegos na etapa de revisão de código. Ele cita o Cursor Bugbot como uma das ferramentas que usam.

Ele também comenta que sempre observaram dois tipos de bug. Bugs relacionados à corretude do código: aqueles que você consegue encontrar só de olhar para o código. E bugs de “produção”, em que o código é tecnicamente correto, mas falha ao entrar em produção, dada toda a complexidade do mundo real.

Mas agora, com Claude, Codex e Bugbot fazendo um excelente trabalho de revisão de código, os bugs da primeira categoria são mais detectados antes do deploy, e bugs de produção agora dominam as causas principais dos incidentes relacionados a mudanças. E esse é agora o novo desafio deles: como capturar esse tipo de bug antes de ir para o ar?

Os agentes de código são realmente capazes de encontrar bugs de lógica e, cada vez mais, bugs bem complexos. Revisão de código em que o dev revisa linha por linha tem seus dias contados. Cada vez mais, a ideia vai ser revisar a intenção da mudança e as decisões arquiteturais por trás dela.

## Referências

- [Post original de Chris Evans](https://www.linkedin.com/posts/evnsio_we-ship-3x-as-much-code-today-as-we-did-a-share-7514103822043078656-0bNQ)
