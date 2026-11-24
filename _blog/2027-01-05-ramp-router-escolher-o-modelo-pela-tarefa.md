---
title: "Ramp Router: escolher o modelo pela tarefa"
layout: post
date: "2027-01-05T00:00:00-03:00"
category: Engenharia
tags: [ia, modelos, custos, avaliacoes, roteamento-de-modelos]
description: "Como a Ramp usa roteamento central e benchmarks com tarefas reais para escolher modelos conforme custo, latência e trabalho a realizar."
image: /assets/images/content/cartoon/blog-2027-01-05-ramp-router-escolher-o-modelo-pela-tarefa.jpg
image_alt: "Uma controladora de tráfego orienta pequenos veículos de tamanhos diferentes para rotas diferentes em uma rotatória de brinquedo."
---

O Eric Glyman, CEO da Ramp, escreveu sobre como eles diminuíram os custos de tokens deles.

Como fizeram?

- Toda requisição de IA passa pelo Ramp Router deles. O roteador define valores como qual modelo usar baseado em variáveis como custo, latência e tipo de trabalho a ser feito. Não é o time que escolhe, é o roteador.

- Eles taggeiam por tarefa e não por time. Times são muito diferentes e fazem coisas diferentes. A tag tem que ser por tipo de tarefa.

- Testam em tarefas reais. Eles fizeram benchmarks com tarefas reais pra entender quais tipos de tarefas realmente precisam de super modelos e quais se dão bem com modelos menores.

Eles vão vender isso como produto, então o post tem lá o seu viés, mas a ideia de rotear para o melhor modelo que atenda àquela tarefa de maneira automática é o caminho que muitos estão seguindo.

Link para o post: <https://www.linkedin.com/posts/eglyman_at-ramp-our-price-per-million-tokens-is-share-7524108865718681600-H9zP/>
