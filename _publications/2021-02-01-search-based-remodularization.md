---
title: "Search-Based Software Re-Modularization: A Case Study at Adyen"
download: "https://arxiv.org/abs/2102.00701"
authors: "Casper Schröder, Adriaan van der Feltz, Annibale Panichella, Maurício Aniche"
conference: "IEEE/ACM 43rd International Conference on Software Engineering: Software Engineering in Practice (ICSE-SEIP)"
doi: "10.1109/ICSE-SEIP52600.2021.00017"
categories: ["publication", "maintenance", "ml4se", "icse", "conference", "industry-collaboration", "adyen", "selected-maintenance"]
posters: ["icse21"]
videoen: "l3zGu1N27gE"
tags: [ia]
year: 2021
image: "/assets/images/content/cartoon/publications-2021-02-01-search-based-remodularization.jpg"
image_alt: "Ilustração cartoon: pesquisadores reorganizam bairros de uma cidade modular, aproximando peças relacionadas e reduzindo caminhos longos."
---

Decidir o que constitui um único módulo, quais classes pertencem a qual módulo ou o conjunto certo de módulos para um sistema de software específico sempre foi uma tarefa desafiadora. O problema é ainda mais difícil em sistemas de software de grande escala compostos por milhares de classes e centenas de módulos. Ao longo dos anos, os pesquisadores têm proposto diferentes técnicas para apoiar os desenvolvedores na remodularização de seus sistemas de software. Em particular, a modularização de software baseada em pesquisa é um tópico de pesquisa ativo na comunidade de engenharia de software há mais de 20 anos.

Este artigo descreve nossos esforços na aplicação de abordagens de remodelularização de software baseadas em pesquisa na Adyen, uma empresa de pagamentos em grande escala. A base de código da Adyen tem mais de 5,5 milhões de linhas de código, divididas em cerca de 70 módulos diferentes. Aproveitamos o conhecimento existente na área para desenvolver nosso próprio algoritmo de pesquisa e aplicá-lo à nossa base de código.

Nossos resultados mostram que as abordagens baseadas em pesquisa escalam para grandes bases de código como a nossa. Nosso algoritmo pode encontrar soluções que melhorem a base de código de acordo com as métricas que otimizamos, e os desenvolvedores veem valor nas recomendações. Com base em nossas experiências, listamos então um conjunto de desafios e oportunidades para futuros pesquisadores, visando tornar a remodularização de software baseada em busca mais eficiente para empresas de software de grande escala.
