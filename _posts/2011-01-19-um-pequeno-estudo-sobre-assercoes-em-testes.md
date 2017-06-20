---
id: 321
title: Um pequeno estudo sobre asserções em testes
date: 2011-01-19T12:21:25+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=321
permalink: /2011/01/um-pequeno-estudo-sobre-assercoes-em-testes/
categories:
  - Blog em Português
tags:
  - asserção
  - enquete no twitter
  - estudo
  - one assert per test
  - tdd
  - testes
  - testes de unidade
  - uma asserção por teste
---
Muitas pessoas já ouviram falar da regra &#8220;apenas uma asserção por teste&#8221; (_only one assertion per test_), famosa no [post do Dave Astels](http://www.artima.com/weblogs/viewpost.jsp?thread=35578). A regra, como o próprio nome diz, afirma que o programador nunca deve escrever mais de uma asserção pois a necessidade de mais de uma asserção em um teste poderia indicar que o método está fazendo coisas demais.

Há um mês atrás comecei a escrever um post sobre isso, mas meu exemplo era muito fraco. Corri então para olhar testes de alguns dos últimos projetos que participei, e pasmém: na maioria deles só havia uma asserção!

Ao observar os testes que continham mais de uma asserção, percebi que eles aconteciam nos seguintes casos:

<ol style="margin-bottom:10px;">
  <li>
    Quando o método retorna uma lista, array ou uma classe responsável por armazenar uma coleção de determinado objeto;
  </li>
  <li>
    Quando o método retorna um novo objeto;
  </li>
  <li>
    Quando o método é parte de uma DSL;
  </li>
</ol>

Nos testes do tipo (1), as asserções mais comuns são para verificar o tamanho da lista e se o elemento existente nela é o esperado. Além disso, se o teste espera mais de um elemento na lista, o teste faz algum tipo de loop para verificar; Nos testes do tipo (2), o método de teste realiza asserções sobre os atributos do objeto retornado; E, finalmente, nos testes do tipo (3), que geralmente testam a DSL, e nesse caso um teste realmente testa mais de um comportamento ao mesmo tempo, e por isso, verifica mais de um comportamento.

Resolvi portanto perguntar a opinião de outros desenvolvedores sobre a regra. Para isso, enviei a [pergunta no twitter](http://twitter.com/mauricioaniche/status/23113080959406080) (de forma não enviesada, perguntando apenas a opinião e, para os que me responderam de volta, exemplos de código aonde isso fizesse sentido).

Algumas pessoas concordaram com a ideia de apenas uma asserção por teste, afirmando que a regra ajuda a manter o código mais simples e mais fácil de manter. Além disso, quando o teste quebra, é fácil perceber o problema.

Outros já discordaram da regra, e afirmaram que o programador deve tentar escrever sempre o menor número possível de asserções, mas que a regra não precisa ser seguida à risca. Discutindo um pouco melhor esse ponto de vista, muitos deles afirmaram que um teste deve testar apenas uma única funcionalidade, não importando o número de asserções necessárias para tal.

Infelizmente a quantidade de códigos enviada foi muito baixa. Mas, o interessante é que [um dos códigos enviados](http://bit.ly/gK0hDU) se encaixa em (1). Já o [outro código enviado](https://gist.github.com/769839), retirado de um livro de Ruby, não se encaixa em nenhum dos exemplos acima, mas pode-se dizer que aquele teste está na verdade testando duas funcionalidades: string com espaços no começo e no fim e string sem espaços.

A ideia desse post é portanto, fomentar essa discussão. Alguém tem um outro exemplo aonde mais de uma asserção por teste faça sentido, mas que não se encaixa nos casos acima?

**Agradecimentos**

Obrigado ao [@elemarjr](http://www.twitter.com/elemarjr), [@viniciusquaiato](http://www.twitter.com/viniciusquaiato), [@FabioVazquez](http://www.twitter.com/fabiovazquez), [@pedroreys](http://www.twitter.com/pedroreys), [@pisketti](http://www.twitter.com/pisketti), [@danielsilvarj](http://www.twitter.com/danielsilvarj), [@carlosgaldino](http://www.twitter.com/carlosgaldino), [@rodbv](http://www.twitter.com/rodbv), [@cessor](http://www.twitter.com/cessor), [@alexandregazola](http://www.twitter.com/alexandregazola), que responderam no Twitter.