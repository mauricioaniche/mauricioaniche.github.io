---
id: 528
title: 'ICSE2015 &#8211; When and Why Your Code Starts to Smell Bad'
date: 2015-05-22T17:53:52+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=528
permalink: /2015/05/icse2015-when-and-why-your-code-starts-to-smell-bad/
categories:
  - Blog em Português
tags:
  - icse
  - icse2015
---
**When and Why Your Code Starts to Smell Bad**
  
_Michele Tufano, Fabio Palomba, Gabriele Bavota, Rocco Oliveto, Massimiliano Di Penta, Andrea De Lucia, Denys Poshyvanyk_

> _**TL;DR. Na maioria dos casos, os artefatos já são criados com maus cheiros. Novas funcionalidades ou melhorias nas existentes é o que mais fazem artefatos ficaram mau cheirosos também. Novatos não são os maiores responsáveis, mas sim pressão pra release e quantidade de trabalho que ele fez (medido pelo número de commits).**_

Maus cheiros de código (code smells) é o nome que damos para quando o projeto ou a implementação são mais pobres do que deveriam. A indústria gosta do termo, e muitos maus cheiros tem nomes populares, como &#8220;spaghetti code&#8221;, &#8220;feature envy&#8221;, e assim por diante. A pergunta é: quando e por quê esses maus cheiros são criados?

Para tal, os autores analisaram meio milhão de commits, bem como o issue tracking em 200 projetos de código aberto diferentes. Para dizer se um determinado arquivo contém ou não um mau cheiro, eles fizeram uso do DECOR, uma ferramenta que busca por alguns dos mais conhecimentos maus cheiros.

Interessantemente, eles perceberam que a maioria dos maus cheiros foram introduzidos no momento em que os arquivos foram criados. Como esperado, maus cheiros são inseridos geralmente perto do deadline final de entrega &#8212; eles também notaram um número considerado de maus cheiros inseridos no primeiro ano do projeto. E, contrariando a lógica, novatos não são os maiores responsáveis pelos maus cheiros, mas sim, os próprios &#8220;donos&#8221; das classes ou aqueles que tem um fluxo grande de trabalho (no trabalho, calculado como a quantidade de commits feitos durante um período de tempo).

No entanto, todo o trabalho confia nos resultados da DECOR. E, claro, como todo trabalho que avalia uma grande quantidade de projetos, ele não leva em consideração o contexto de cada um deles (apesar dos autores terem inspecionado por volta de 9k classes).