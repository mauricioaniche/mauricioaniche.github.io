---
id: 613
title: 'Classes testáveis não &#8220;buscam&#8221;, mas sim &#8220;recebem&#8221;'
date: 2015-07-08T01:06:07+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=613
permalink: /2015/07/classes-testaveis-nao-buscam-mas-sim-recebem/
categories:
  - Blog em Português
tags:
  - inversão de controle
  - orientação à objetos
  - tdd
---
**TL;DR:** _Se você quer testar sua classe por meio de teste de unidade, essa classe não deve conter código de infra estrutura (como acesso a banco de dados, e etc), e ela também deve receber toda outra informação ou dependência necessária por meio de construtores ou parâmetros de métodos &#8212; a classe nunca deve buscar a informação diretamente ou instanciar uma dependência. Dessa forma, ela será facilmente testável por meio de testes de unidade._

Regras de negócio, no fim, nada mais são do que um monte de _ifs_ e _fors_ juntos. Portanto, deveríamos ser capazes de sempre testá-las por meio de simples testes de unidade. No entanto, às vezes nós dificultamos isso.

Veja o código abaixo. Nele, o _FiltroDeFatura_ pega a lista de todas as faturas que está no banco de dados, e passeia por elas, guardando as que tem valores menor que 2000.

<div id="wrap_githubgistb0fbdc23244a13df132c" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

O código é simples, mas pense que ele poderia ser um pouco mais complicado. Portanto, precisamos testá-lo. A questão é: _como? _**Afinal, não conseguimos escrever um teste de unidade pra ela; afinal é impossível executar o método _filtra()_ sem passar por um banco de dados.**

Essa é um tipo de código bastante comum nas aplicações por aí. O desenvolvedor sabe que não pode sair misturando SQL no meio de regra de negócio, e corretamente, coloca isso dentro do DAO. No entanto, ele instancia o DAO diretamente na classe, fazendo com que não seja possível executar a regra de negócio, sem passar pelo banco de dados.

E passar pelo banco de dados, na maioria das vezes, não é boa ideia. Escrever o teste é mais difícil (afinal, precisamos fazer INSERT dos dados no começo, DELETE depois, garantir o schema do banco, e etc), e mais demorado. E, aliás, não deveríamos precisar do banco de dados, para testar a simples regra de filtro de fatura.

A solução pra isso é mais fácil do que parece. Se você tem uma classe que contém regras de negócio, essa classe deve apenas conter regras de negócio. Ou seja, ifs e fors. Se sua regra de negócio precisar de alguma informação que venha de uma outra classe qualquer (seja um DAO, seja outra coisa), **ela nunca deve &#8220;buscar&#8221; essa informação, mas sim &#8220;recebê-la&#8221;.**

Ou seja, nesse código em particular, ou passamos a _List<Fatura>_ para o método _filtra(), _ou passamos o _FaturaDao_ pelo construtor. Veja:

<div id="wrap_githubgist935dfb86c4fb182f7cfe" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Dessa forma, com o DAO sendo recebido pelo construtor da classe, conseguimos simular seu comportamento durante o teste, por meio de _mock objects_. E agora sim, nada de depender do banco para fazer um teste tão simples.

**Portanto, guarde essa regra: se sua classe é uma classe que contém regras de negócio, ela nunca pode buscar as informações ou dependências que precisa por conta própria; ela deve sempre recebê-las.**

Ah, essa ideia tem um nome bonito, inclusive: chama-se inversão de controle. Ou seja, &#8220;invertemos&#8221; a maneira tradicional de programar, que é sempre buscar pela dependência. Agora, alguém nos dá a dependência. Você pode ler mais sobre isso no [meu livro de orientação a objetos e SOLID](http://www.casadocodigo.com.br/products/livro-oo-solid).