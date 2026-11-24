---
title: "Com agentes de IA, precisamos ir além dos testes de unidade"
layout: post
date: "2026-12-03T00:00:00-03:00"
category: Engenharia
tags: [ia, agentes, testes, qualidade, testes-end-to-end, geracao-de-testes]
description: "Testes de unidade dão feedback rápido aos agentes de IA, mas testes e2e e exploração da aplicação ajudam a construir confiança na experiência do usuário."
image: /assets/images/content/cartoon/blog-2026-12-03-com-agentes-de-ia-precisamos-ir-alem-dos-testes-de-unidade.jpg
image_alt: "Uma engenheira e um robô observam um barco de brinquedo percorrer um canal, com peças avulsas na margem."
---

Eu sempre fui um defensor do teste de unidade, por vários motivos. Barato de escrever, fácil de aprender, feedback rápido, e te dá a possibilidade de ir mais rápido ou mais devagar à medida que você vai entendendo mais sobre as unidades de código que você está criando.

Sempre também defendi o teste e2e, pois eram esses que me davam a certeza de que a app ia funcionar pro usuário final. Mas como era muito mais caro de escrever e de rodar, precisava escolher bem quando escrever um.

Em muito sistema, se os testes de unidade estavam todos verdes, eu "confiava o suficiente", e não tinha medo de subir pra produção.

Nesse novo mundo agêntico, onde a IA escreve código, eu confio menos no teste de unidade. Mesmo que você faça uso de escrita de teste adversarial, onde um agente implementa e outro agente (ou talvez até outro modelo!) escreve os testes, esses testes de unidade me parecem todos enviesados.

E olha que os modelos ficaram muito melhores em escrever teste. Lembro-me de revisar teste escrito pelo Haiku e muitos deles eram inúteis.

Os testes de unidade, baratos, ainda têm uma utilidade: eles dão feedback rápido para o agente, ajudando ele a perceber que algo "muito simples" parou de funcionar.

Mas precisamos ir além. Precisamos de testes e2e pra provar que a app funciona do ponto de vista de usuário.

O lado bom é que agentes também são muito bons em executar testes e2e. E note o "executar". Eles não só são bons em escrever testes com Playwright ou Selenium, eles são muito bons em abrir sua app, navegar nela, e procurar por problemas. Tenho tido boas experiências com "testes agênticos" tanto em web apps quanto em apps mobile.

É assunto pra outro post o quanto balancear testes escritos de maneira determinística vs testes agênticos onde o agente anda solto pela app. Mas de novo, precisamos ir além do teste de unidade.

Como disse o Kent Beck, estamos gerando código muito mais rápido do que geramos confiança. Enquanto ainda não nos acostumamos com IAs escrevendo código, precisamos de muito mais evidências pra confiar.

Vocês têm confiado apenas no teste de unidade? Ou têm pedido pro agente ir além deles?
