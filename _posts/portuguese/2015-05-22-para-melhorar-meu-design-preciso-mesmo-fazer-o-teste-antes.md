---
id: 531
title: Para melhorar meu design, preciso mesmo fazer o teste antes?
date: 2015-05-22T19:29:06+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=531
permalink: /2015/05/para-melhorar-meu-design-preciso-mesmo-fazer-o-teste-antes/
categories:
  - Blog em Português
tags:
  - design
  - feedback
  - projeto de classes
  - tdd
---
Já comentei bastante sobre os efeitos que a prática de TDD tem no projeto de classes. [Meu livro](http://www.casadocodigo.com.br/products/livro-tdd), aliás, é totalmente focado nisso. No entanto, algo que não comentei nele, porquê provavelmente só soube transformar isso em palavras há pouco tempo, é que não me importo muito se o teste é escrito antes ou depois. _Ué, como assim!?_

Deixe-me explicar. Não é a &#8220;prática de TDD&#8221; que faz seu projeto de classes melhorar, mas sim, o que você consegue ver de problemas ao olhar para o código do seu teste. **Ou seja, é o teste que te mostra o problema. Se ele é escrito antes ou depois, tanto faz.**

Obviamente, se você deixar para escrever o teste 1 semana depois de escrever a classe, na hora em que ler o _feedback_ do teste, talvez seja tarde demais pra refatorar &#8212; tarde, no sentido, de caro, afinal você provavelmente precisará mudar em muitos pontos diferentes.

No entanto, se você gastar 15 minutos no código, 15 minutos no teste, 15 minutos no código, 15 minutos no teste&#8230;. o feedback será o mesmo! Afinal, para pensar no design, a implementação depende do teste e o teste depende da implementação; a ordem em que você faz não ter dará mais ou menos retorno.

**O teste é só um rascunho do seu projeto de classes. E o importante não é ter um rascunho, ou mesmo começar por ele, mas sim rascunhar com frequência.**

&nbsp;