---
tags: [ia, pesquisa, contexto, fundamentos]
title: "Tipos e contexto ajudam os LLMs a completar código"
layout: "post"
date: "2026-11-23T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-23-tipos-e-contexto-ajudam-os-llms-a-completar-codigo.jpg"
image_alt: "Uma engenheira oferece a um robô uma peça de madeira com formato adequado ao encaixe, ao lado de uma estrutura de bolas e hastes."
category: "Engenharia"
description: "Um estudo com Diomidis Spinellis sobre perplexidade em code completion inspira reflexões sobre tipos, contexto e representações de código com grafos."
---

O professor Diomidis Spinellis, com quem tive o prazer de trabalhar durante meu tempo na TU Delft, escreveu com Zoe Kotti, Konstantina Dritsa e Panos Louridas um paper sobre LLMs e o quão difícil é para elas prever código.

Eles mediram uma propriedade chamada “perplexidade” para avaliar a confiança dos LLMs em tarefas de preenchimento de código (*autocomplete*), abrangendo diferentes linguagens de programação, modelos e conjuntos de dados. Quanto menor a perplexidade, mais previsível é aquela sequência de código para o modelo. Isso, por si só, não garante que o código gerado esteja correto.

Eles notaram que linguagens de tipagem forte apresentam uma perplexidade menor do que linguagens de tipagem dinâmica, enquanto linguagens de script, de modo geral, demonstram uma perplexidade mais elevada. A perplexidade varia conforme o LLM, mas, mantendo um mesmo modelo, a ordenação relativa das linguagens é em grande parte estável entre os conjuntos de dados avaliados.

Faz sentido. Quanto mais informação para um modelo de IA, melhor. E os tipos são uma informação rica para o modelo.

Me lembro do mundo pré-LLMs, em que a pesquisa em IA para engenharia de software era basicamente tentar encontrar a melhor representação de código-fonte para que os modelos pudessem entender cada vez mais das estruturas de código. O estado da arte na época eram redes neurais de grafos (GNNs), em que você representava o código como um grafo, com arestas ricas em informação: control-flow, data-flow, tipo do dado etc., justamente para o modelo aprender melhor.

Os LLMs são inteligentes e você não precisa mais passar o control-flow e o data-flow mastigadinhos, mas quanto mais informação, melhor.

## Referências

- [Post original de Diomidis Spinellis](https://www.linkedin.com/posts/dspinellis_how-difficult-is-it-for-large-language-models-share-7511040792421969920-5BkT)
- [The fools are certain; the wise are doubtful: Exploring LLM confidence in code completion — Zoe Kotti, Konstantina Dritsa, Diomidis Spinellis e Panos Louridas](https://doi.org/10.1007/s10515-026-00683-0)
