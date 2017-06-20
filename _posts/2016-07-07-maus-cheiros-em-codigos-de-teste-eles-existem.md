---
id: 813
title: 'Maus cheiros em códigos de teste&#8230; Eles existem!'
date: 2016-07-07T19:10:56+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=813
permalink: /2016/07/maus-cheiros-em-codigos-de-teste-eles-existem/
categories:
  - Blog em Português
tags:
  - code smells
  - qualidade de código
  - testes automatizados
---
Acabei de ler um paper muito legal sobre code smells em código de testes [1]. Resumindo aqui os resultados:

  1. **Maus cheiros em testes não são percebidos pelos desenvolvedores como problemas reais de código. **Ou seja, desenvolvedores não costumam enxergá-los como problemas.
  2. **Na maioria dos casos, as classes de teste são afetadas pelos smells desde o momento da sua criação. **Ou seja, a maioria dos testes mal escritos foram mal escritos desde o começo.
  3. **Os maus cheiros tem uma taxa de sobrevivência altíssima. **Ou seja, o mau cheiro fica lá no código por muito tempo, até alguém decidir refatorá-lo.
  4. **Existe uma relação entre maus cheiros no código de teste e maus cheiros no código de produção. **Ou seja, código de produção ruim faz com que desenvolvedores escrevam testes problemáticos também.

Você quer ler mais sobre possíveis maus cheiros em código de teste? Então veja o excelente paper do [Arie van Deursen](http://www.avandeursen.com) et al. [2], onde eles listam diversos maus cheiros que podem acontecer nesse tipo de classe.

[1] Tufano, M., Palomba, F., Bavota, G., Di Penta, M., Oliveto, R., De Lucia, A., Poshyvanyk, D.Towards Automated Tools for Detecting Test Smells: An Empirical Investigation into the Nature of Test Smells. In 31st Automated Software Engineering, 2016. [Link aberto pro paper](https://dibt.unimol.it/staff/fpalomba/documents/C14.pdf).

[2] A. van Deursen, L. Moonen, A. Bergh, and G. Kok. Refactoring test code. In Proceedings of the 2nd International Conference on Extreme Programming and Flexible Processes in Software Engineering (XP), pages 92–95, 2001. [Link aberto pro paper](http://www.isa.ewi.tudelft.nl/~arie/papers/xp2001.pdf).