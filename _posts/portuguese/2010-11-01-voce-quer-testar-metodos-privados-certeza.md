---
id: 205
title: Você quer testar métodos privados? Certeza?
date: 2010-11-01T11:30:00+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=205
permalink: /2010/11/voce-quer-testar-metodos-privados-certeza/
categories:
  - Blog em Português
tags:
  - coesão
  - design
  - métodos privados
  - srp
  - tdd
---
Essa é uma discussão frequente, que inclusive [apareceu recentemente](http://groups.google.com.br/group/dotnetarchitects/browse_thread/thread/f3753557a6d7827d/e1a4cbbf60a8a9ee?#e1a4cbbf60a8a9ee) no .NET Architects: devo ou não devo testar métodos privados? Minha opinião é que **não, você nunca precisa testar métodos privados**!

Se você está escrevendo testes para uma classe, e sente a necessidade de testar um determinado método privado de maneira isolada, isso é bom: você está recebendo _feedback_ do seu teste em relação ao seu design! Afinal, não é isso que todos dizem sobre TDD?

E o que o teste está dizendo? Ele está te dizendo que sua classe **não está coesa**. Quando uma classe não é coesa, ou seja, ela tem mais do que uma responsabilidade (ela faz coisas demais!), geralmente existem um conjunto de métodos nela que são responsáveis por uma das responsabilidades, e um outro conjunto de métodos responsáveis pela outra responsabilidade.

_Uma situação real:_ O programador criou uma classe para lidar com uma funcionalidade específica, e para isso criou um método público. A outra necessidade surgiu com o passar do tempo (às vezes nem tanto tempo assim; de repente ela apareceu 3 ou 4 testes depois!), e por ser algo que a funcionalidade inicial precisa, acabou virando um método privado dentro dessa classe. Esse método privado começa a crescer tanto que você quer testá-lo.

O que fazer? **Extraia esse comportamento para uma nova classe**. Essa nova classe será responsável somente por isso. Em seguida, faça a primeira classe depender dessa nova classe. Você conseguirá dar um nome bem significativo para essa nova classe, pois ela muito provavelmente representa um conceito de domínio, que até então estava escondido.

Extrair comportamentos para novas classes é algo muito comum ao se fazer TDD. Conforme o programador vai evoluindo a funcionalidade, novas responsabilidades aparecem e é muito tentador colocar todas elas no mesmo lugar. Que sorte a nossa termos o teste pra nos avisar! 🙂

**Referências:**

Martin, Robert. _Principles of OOD_. <http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod>

Feathers, Michael. _The Deep Synergy between Testability and Good Design_. [http://michaelfeathers.typepad.com/michael\_feathers\_blog/2007/09/the-deep-synerg.html](http://michaelfeathers.typepad.com/michael_feathers_blog/2007/09/the-deep-synerg.html)

Caroli, Paulo. _Testing Private Methods, TDD and Test-Driven Refactoring._ <http://agiletips.blogspot.com/2008/11/testing-private-methods-tdd-and-test.html>, 2008.