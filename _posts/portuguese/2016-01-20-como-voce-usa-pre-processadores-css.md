---
id: 736
title: Como você usa pré-processadores CSS?
date: 2016-01-20T09:10:06+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=736
permalink: /2016/01/como-voce-usa-pre-processadores-css/
categories:
  - Blog em Português
tags:
  - css
  - research
---
Pré-processadores CSS estão na moda. Afinal, eles dão poder para CSS que, por natureza são simples, mas nada fáceis de manter. O pessoal da Universidade de Concórdia acabou de fazer um estudo empírico bem legal sobre o uso de SASS e LESS.

De forma resumida, os resultados encontrados foram:

  * Desenvolvedores declaram principalmente variáveis globais (89% dos casos), especialmente para armazenar cores (45% dos casos).
  * Aninhamento (_nesting_) é bastante popular. 78% dos seletores são aninhados.
  * 2/3 dos _mixins_ são reusados duas ou mais vezes. Interessantemente, 42% deles são usados para lidar com propriedades específicas de browsers (-webkit-*, etc).
  * Desenvolvedores preferem _mixins_ sem parâmetros do que usar herança.

O artigo vai mais a fundo, sugerindo razões e possíveis ferramentas focadas para ajudar desenvolvedores nessas situações (refatorações, por exemplo). Você pode ler mais no _preprint_ do artigo que será apresentado no SANER 2016:

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    Preprint of our paper "An empirical study on the use of CSS preprocessors" to be presented <a href="https://twitter.com/SANERconf">@SANERconf</a> 2016&#10;<a href="https://t.co/lcXYzbJsXN">https://t.co/lcXYzbJsXN</a>
  </p>
  
  <p>
    &mdash; Nikos Tsantalis (@NikosTsantalis) <a href="https://twitter.com/NikosTsantalis/status/687260949636608000">January 13, 2016</a>
  </p>
</blockquote>



E aí? Os números são o que você esperava? Ou você faz diferente?