---
title: "Flexport: o modelo certo para cada tarefa agêntica"
layout: post
date: "2027-01-06T00:00:00-03:00"
category: Engenharia
tags: [ia, modelos, custos, avaliacoes, roteamento-de-modelos, arquitetura]
description: "Evals com interações reais ajudaram a Flexport a definir um roteamento simples entre modelos e reduzir custos com perdas limitadas de qualidade."
image: /assets/images/content/cartoon/blog-2027-01-06-flexport-o-modelo-certo-para-cada-tarefa-agentica.jpg
image_alt: "Num porto de brinquedo uma pessoa escolhe barcos de tamanhos diferentes para transportar pequenas cargas adequadas a cada embarcação."
---

Será que precisamos mesmo utilizar os modelos de IA mais poderosos para todas as tarefas dos nossos sistemas agênticos?

O time de engenharia da Flexport publicou um artigo muito interessante sobre como resolveu esse problema. A hipótese era que boa parte das tarefas executadas pelos seus agentes poderia ser resolvida por modelos significativamente mais baratos, sem grandes perdas de qualidade.

Para testar essa hipótese, o time avaliou oito modelos em 359 casos derivados de interações reais de produção. A partir dos resultados, identificou quais características das tarefas exigiam modelos mais capazes e implementou um mecanismo de roteamento automático. Curiosamente, uma regra de decisão bastante simples se mostrou mais eficaz do que estratégias mais sofisticadas.

O resultado nos evals foi uma redução de 46% nos custos, com uma perda de apenas alguns pontos percentuais na taxa de sucesso e sem impacto relevante na latência mediana.

A grande lição aqui é que a escolha do modelo de IA não deveria ser uma decisão estática de arquitetura ou que dependa de humanos, mas uma decisão dinâmica tomada por um roteador central.

Se você tem bons evals, conhece os padrões de falha dos diferentes modelos e constrói seu sistema de maneira desacoplada, consegue capturar continuamente os ganhos de qualidade, performance e custo que surgem com a evolução dos modelos.

Link para o original: <https://medium.com/flexport-engineering/choosing-the-right-model-for-the-right-task-a6847638120d>
