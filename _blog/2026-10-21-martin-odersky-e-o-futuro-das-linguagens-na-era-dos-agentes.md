---
tags: ["ia", "agentes", "seguranca", "fundamentos"]
title: "Martin Odersky e o futuro das linguagens na era dos agentes"
layout: "post"
date: "2026-10-21T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-10-21-martin-odersky-e-o-futuro-das-linguagens-na-era-dos-agentes.jpg"
image_alt: "Uma pesquisadora instala um encaixe de chave que permite a um pequeno robô pegar apenas a caixa autorizada num armário luminoso."
category: "Engenharia"
description: "Reflexões sobre o keynote de Martin Odersky: segurança de agentes, garantias do compilador e o papel das linguagens de programação."
---

Eu assisti o keynote do Martin Odersky, chamado "O fim da programação?". Pra quem não sabe, o Martin é o criador da linguagem Scala e de muitas outras importantes contribuições para o mundo das linguagens de programação.

Martin começa o keynote mostrando, com um tom razoavelmente negativo (ou ao menos, foi assim que senti), que IA para programação não tem volta. Mas que a IA e agentes abrem portas para diferentes vulnerabilidades de segurança. Por exemplo, um agente pode enviar para fora uma informação considerada sigilosa. E técnicas atuais para garantir a segurança dos agentes não resolvem o problema, pois ou elas são frouxas demais ou fortes demais. Em seguida, ele mostra as novidades que está propondo para a Scala 3, onde a linguagem e o compilador vão garantir que, se um agente não deve ter acesso aquela informação, ele não terá, e isso será verificado de maneira forte.

O que me veio à cabeça:

- Primeiro, sempre achei fascinante a paixão dos pesquisadores em linguagem de programação em querer garantir a corretude dos programas de maneira determinística. Eles não são como eu ou como outro engenheiro de software que se satisfazem com apenas testes automatizados ou revisão de código. Eles buscar por garantia total da corretude e da segurança. Saudades de quanto era acadêmico e tinha mais tempo e energia pra ler esse tipo de paper.

- Segundo, estamos todos falando que linguagem de programação não importa mais. Tanto faz se é Java, Python, ou Rust. O agente coda em qualquer coisa. Mas e se, de repente, o futuro está em uma linguagem nova de programação, uma que entenda o não-determinismo e a falta de controle que temos com agentes? Mais do que nunca precisamos de mecanismos fortes para garantir que o agente não faça coisas erradas.

Tem muita coisa da palestra que não entendi, e não li os papers que explicam o trabalho a fundo. Mas gostei da provocação.

## Referências

- [Talk no youtube](https://www.youtube.com/watch?v=jlJyuJhDnlc)
