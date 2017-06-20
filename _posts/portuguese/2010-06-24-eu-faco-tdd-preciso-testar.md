---
id: 173
title: Eu faço TDD. Preciso testar?
date: 2010-06-24T12:00:35+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=173
permalink: /2010/06/eu-faco-tdd-preciso-testar/
categories:
  - Blog em Português
tags:
  - software design
  - tdd
  - teste de software
---
Claro que **sim**.

TDD é uma atividade de design. O teste de unidade que você escreve serve basicamente para definir suas expectativas em relação ao código que você vai escrever. E, ao fazer isso, você pensa não só no nível da implementação do algoritmo, mas em um nível um pouco mais alto: no nível de design. TDD permite que você brinque e experimente diferentes possíveis designs, dando feedback rápido sobre o resultado obtido, até que você encontre o design ideal para aquela situação.

Ou seja, quando você faz TDD, você pensa exclusivamente em design e não em testes. É uma prática de suporte para **design** de software.

Mas&#8230; É claro que você precisa testar! Você não apaga os testes que você produziu usando TDD, óbvio. Mas muito provavelmente eles não testam todas as possibilidades possíveis. E é aí que outras técnicas entram em cena, e você pode encontrar muita informação sobre elas em \[1\]\[2\].

Resumindo, use TDD quando você precisa trabalhar no design de determinada classe ou módulo. Quando você estiver satisfeito com design, é hora de testar! Aí você pode fazer test-first, test-last, ou que você preferir, mas teste de verdade!

[1] The Art of Software Testing &#8211; Myers
  
[2] Introdução ao Teste de Software &#8211; Maldonado, Delamaro, Jino