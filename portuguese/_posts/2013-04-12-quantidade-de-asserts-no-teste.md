---
id: 425
title: A quantidade de asserts em um teste indica algo? (CSMR2013)
date: 2013-04-12T14:52:13+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=425
permalink: /2013/04/quantidade-de-asserts-no-teste/
categories:
  - Blog em Português
tags:
  - asserts
  - mau cheio de teste
  - padrões de feedback
  - tdd
  - teste de unidade
---
Em março, apresentei um pequeno pedaço da minha pesquisa de doutorado no CSMR2013, em Gênova. O CSMR é uma conferência voltada para trabalhos que discutem manutenção e evolução de software.

Meu trabalho discute a relação entre a quantidade de asserts e a qualidade do código de produção. **Será que o desenvolvedor faz uso de mais de 1 assert por teste porque o código de produção é complexo? **É mais ou menos essa a pergunta que o trabalho visa responder.

No fim, acabei encontrando que a quantidade de asserts unicamente não indica nada: os desenvolvedores usam um número arbitrário de asserts mesmo com o código sendo simples. Mas algo interessante emergiu: se ao invés de contar a quantidade de asserts, eu contar a quantidade de diferentes objetos que recebem uma asserção e fizer a mesma comparação, isso sim indica que o código de produção pode ser mais complicado do que a média.

Em código, pra ficar mais fácil de entender:

assertEquals(&#8220;esperado&#8221;, a.getAlgumaCoisa());
  
assertEquals(&#8220;esperado2&#8221;, a.getAlgumaOutraCoisa());

Veja que estou fazendo 2 asserts, mas sempre no mesmo objeto &#8220;a&#8221;. Agora:

assertEquals(&#8220;esperado&#8221;, a.getAlgumaCoisa());
  
assertEquals(&#8220;esperado2&#8221;, b.getAlgumaOutraCoisa());

Veja que tenho 2 asserts em 2 objetos diferentes: &#8220;a&#8221; e &#8220;b&#8221;. Nesse caso, os métodos &#8220;getAlgumaCoisa()&#8221; e &#8220;getAlgumaOutraCoisa()&#8221; podem estar mais complicados do que deveriam. Portanto, acabei propondo o mau cheiro de teste que é **&#8220;Mais de Uma Instância de Objeto Recebendo Asserção&#8221;**. Repare nesse padrão, pois ele pode indicar problemas no seu código de produção.

Você pode ler o [paper completo aqui](http://45.55.174.113/wp-content/uploads/2013/04/csmr2013-asserts.pdf) se preferir! 🙂