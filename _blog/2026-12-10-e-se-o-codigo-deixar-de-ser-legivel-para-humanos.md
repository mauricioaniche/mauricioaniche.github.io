---
title: "E se o código deixar de ser legível para humanos?"
layout: post
date: "2026-12-10T00:00:00-03:00"
category: Engenharia
tags: [ia, qualidade, testes, observabilidade, fundamentos, compreensao-de-codigo, educacao]
description: "A provocação de Nir Shavit sobre código otimizado por máquinas e suas implicações para especificações, testes, arquitetura e educação."
image: /assets/images/content/cartoon/blog-2026-12-10-e-se-o-codigo-deixar-de-ser-legivel-para-humanos.jpg
image_alt: "Uma enxadrista observa curiosa um robô fazendo um lance inesperado num tabuleiro sem letras nem números, ao lado de uma caixa mecânica transparente com engrenagens intrincadas."
---

Li o texto do Nir Shavit — "Farewell to human readable code", e achei uma provocação interessante, e meio desconfortável: e se grande parte do código passar a ser obra de máquinas, otimizado por máquinas e simplesmente ilegível para humanos?

A parte com a analogia da evolução do xadrez, que vocês sabem que eu amo, faz sentido. Os primeiros modelos inteligentes que jogavam xadrez primeiro imitaram os lances feitos por humanos. Mas depois, quando esses modelos começaram a ser treinados com jogos jogados entre máquinas, eles começaram a encontrar lances que nem grandes mestres conseguiam entender tão naturalmente.

E se a mesma coisa estiver acontecendo pra código? Primeiro, os modelos foram treinados com código escrito por humanos, então qualquer código que a IA escreve hoje, de uma forma ou outra, é reconhecível por um humano. Mas e se no futuro ela começar a otimizar ainda mais para performance e corretude e perceber que "clean code" não é necessário? Em outras palavras, se o objetivo vira otimização pura, clareza e estilo humano podem virar custo desnecessário.

Minhas reflexões rápidas sobre o que isso muda na prática:

- O foco do engenheiro tende a migrar da leitura do código para a especificação, teste e observabilidade. Se o artefato é uma "caixa preta" com comportamento testável, a habilidade crítica passa a ser: como escrever especificações, propriedades e cenários que capturem o que importa?

- Isso não elimina a necessidade de entender arquitetura, abstrações e trade-offs. Pelo contrário: vamos precisar de mais gente que saiba formular invariantes, modelar limites e projetar contratos. Saber "por que" um sistema falha continua sendo trabalho humano importante.

- Ferramentas e processos mudam. Em vez de code review de linhas, teremos review de harnesses de teste, suítes de propriedade, fuzzing, simulações, canaries, etc. Rastreabilidade vira prioridade: quero saber qual modelo e qual prompt gerou aquele trecho, e conseguir reproduzir ou regenerar com segurança.

- Segurança, performance e custo não desaparecem. Se a IA gera algo super-otimizado mas instável em casos limite, o custo de operação pode subir. FinOps para IA e SLAs para artefatos gerados serão temas reais.

- Educação: ensinar sintaxe e truques de linguagem vai perder espaço para ensinar especificação formal, testes automatizados, engenharia de confiabilidade, e interpretação de comportamentos. Mas ensinar fundamentos de algoritmos e arquiteturas continua valendo, pois é o que permite criticar e direcionar as IAs.

Dito isso, estamos "longe" de isso acontecer. Estamos num período híbrido nesse momento. Hoje os modelos ainda refletem nosso jeito de programar. Mas a transição acontece em camadas.

Invista desde já em especificações, rastreabilidade, observabilidade e testes em produção, e governança de modelos.

Link para o post original: <https://csailmit.substack.com/p/farewell-to-human-readable-code>
