---
id: 292
title: Cuidado com seus baby steps!
date: 2010-11-19T21:59:07+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=292
permalink: /2010/11/cuidado-com-seus-baby-steps/
categories:
  - Blog em Português
tags:
  - baby steps
  - refatoração
  - simplicidade
  - tdd
---
TDD sugere que o programador ande sempre em passos de bebê (os famosos baby steps): ele deve escrever testes sempre para a menor funcionalidade possível, escrever o código mais simples que faça o teste passar e fazer sempre apenas uma refatoração por vez.

Às vezes vejo pessoas interpretando errado o “escrever o código mais simples que faça o teste passar”. Na opinião delas, um if a mais é o código mais simples que ela pode escrever. E de repente, você tem um código cheio de if, praticamente ilegível, e só a partir daí é que começam as refatorações.

A ideia de escrever o código mais simples é justamente fazer com que o programador evite criar complexidade desnecessária. E na minha opinião, evitar na verdade complexidade de design (sabe aquela história de você criar uma façade que chama uma factory que cria um strategy que invoca um command, e por aí vai? Ou criar uma classe acoplada com outras 10 porque você acha que ela vai precisar?).
  
Se você for implementar uma soma (péssimo exemplo?), e escrever:

<pre>public class CalculadoraTest {
  @Test
  public void DoisMaisDoisEhQuatro() {
    assertEquals(4, new Calculadora().soma(2,2));
  }
}

public class Calculadora {
  public int soma(int a, int b) {
    return 2;
  }
}
</pre>

E logo em seguida…

<pre>public class CalculadoraTest {
  ...

  @Test
  public void TresMaisDoisEhCinco() {
    assertEquals(5, new Calculadora().soma(3,2));
  }
}

public class Calculadora {
  public int soma(int a, int b) {
    if(a==3) return 5;
    return 2;
  }
}
</pre>

E depois…

<pre>public class CalculadoraTest {
  ...

  @Test
  public void QuatroMaisDoisEhSeis() {
    assertEquals(6, new Calculadora().soma(4,2));
  }
}

public class Calculadora {
  public int soma(int a, int b) {
    if(a==3) return 5;
    if(a==4) return 6;
    return 2;
  }
}
</pre>

para só então chegar no código:

<pre>public class Calculadora {
  public int soma(int a, int b) {
    return a + b;
  }
}
</pre>

… você não entendeu muito bem o objetivo de escrever o código mais simples que faça o teste passar! 

No livro do Kent Beck [1], ele mostra o exemplo da classe Money, e ele faz os passos mais simples que fazem o teste passar. Passos realmente simplórios, parecidos com os do exemplo acima, que qualquer programador poderia considerar desnecessários. Mas logo em seguida, ele faz a seguinte afirmação: “Se eu faço assim o tempo todo? Claro que não. Mas eu fico feliz em saber que poderia fazer!”.

Ou seja, TDD não é fazer baby steps o tempo todo, e sim poder fazer baby steps quando necessário! Se você está escrevendo algum trecho de código complicado, você pode andar mais devagar; agora, se está escrevendo algum trecho de código simples, e você está confiante sobre isso, você pode dar um passo maior!

Um exemplo que me agrada muito em um outro artigo do Beck [2] é o exemplo de uma classe que lida com tabelas de mortalidade, ou seja, ela deve calcular valores de acordo com a idade de uma pessoa. Uma classe que poderia ser escrita naturalmente da seguinte maneira:

<pre>public class MortalityTable {
  public MortalityTable(Person person) {
    // ...
  }

  public Table calculate() {
    // usa Person aqui para calcular a tabela
  }
}
</pre>

E ele mostra que, ao usar TDD para gerar essa classe, ele percebeu que (i) gerar uma entidade Person era complicado e (ii) a classe MortalityTable só precisava realmente da idade da pessoa para fazer o cálculo. Então, ele refatorou:

<pre>public class MortalityTable {
  public MortalityTable(int age) {
    // ...
  }

  public Table calculate() {
    // usa apenas a idade para calcular a tabela
  }
}
</pre>

Ou seja, passar a idade para a classe MortalityTable era o jeito mais simples que ele tinha para resolver o problema! Isso sim é escrever o código mais simples que faz o teste passar! Perceberam a diferença?

Para terminar o post, gostaria de parafrasear o Jason Gorman: [If “doing the simplest thing” tends to lead to lots of IF’s or Switch statements, it’s possible you’ve misunderstood TDD](http://twitter.com/jasongorman/status/29567110190).

**Referências**

[1] Beck, K. _Test-Driven Development: By Example_. Addison-Wesley Professional, 2002.
  
[2] Beck, K. _Aim, Fire_. IEEE Software Volume 18 Issue 5, September 2001.