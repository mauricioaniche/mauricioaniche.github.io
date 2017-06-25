---
id: 154
title: O que aconteceu na conferência TDD 2010?
date: 2010-04-29T23:35:59+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=154
permalink: /2010/04/1st-international-workshop-on-tdd-2010/
categories:
  - Blog em Português
tags:
  - atdd
  - common mistakes in tdd
  - paris
  - tdd
  - TDD2010
---
No dia 11 de abril participei do 1st International Workshop on Test Driven Devevelopment ([TDD2010](http://agile.csc.ncsu.edu/tdd/)), realizado em Paris. Fui apresentar meu paper entitulado _&#8220;Most Common Mistakes in TDD Practice: Results From An Online Survey With Developers&#8221;_ (que pode ser baixado [aqui](http://www.ime.usp.br/~aniche/tdd-survey)). A plateia contava com pessoas de renome na comunidade como Michael Feathers, Steve Freeman, Laurie Williams, David Janzen, John Clements, entre outros.

O keynote foi feito pelo Steve Freeman, autor de um dos melhores livros de OO e TDD que já li ([Growing Object-Oriented Software, Guided by Tests](http://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627)). Ele basicamente mostrou seu ponto de vista sobre TDD. Segundo ele, &#8220;programação comum está para TDD assim como programação procedural está para programação orientada à objetos&#8221;. Foco bem definido, bom feedback e progredir sem medo também foram citados como vantagens. Uma citação muito interessante, e que venho pensando há muito tempo sobre como transmitir essa idéia é a de que &#8220;o programador deve entender o porquê TDD funciona; caso contrário, é apenas burocracia&#8221;.

Em seguida, o aluno de mestrado Theodore Hellman nos apresentou a ferramenta que seu grupo desenvolve em Calgary, Canadá. Ela testa interfaces de uma maneira muito interessante: antes de desenvolver cada interface, o programador faz protótipos na ferramenta, desenhando caixas de texto, botões (parecidos com os que desenhamos no papel). A mágica acontece depois que o protótipo está pronto: você testa o protótipo, clicando nos botões e digitando valores nas caixas de texto fictícias, e a aplicação os executa na aplicação real! O problema é que funciona apenas para aplicações .NET Windows Forms.

Em seguida a apresentação do John Clements (um dos criadores do Dr. Scheme) e do David Janzen (professor da Politecnica da California, possui muitas publicações relacionadas a experimentos com TDD) sobre o quão difícil é ensinar TDD para os alunos. Apresentaram algumas técnicas de ensino e problemas que já tiveram nas primeiras aulas sobre o assunto.

O alemão Florian Barth, da Universidade de Manheim, mostrou a ferramenta para testes de aceitação que seu grupo trabalha. É uma mistura de Fitnesse com linguagem de programação, onde você escreve não só os casos de testes como a implementação do teste em planilhas. É bem interessante, já que basicamente elimina o trabalho de codificação dos testes. O problema é que algumas coisas ainda são um pouco complicadas e exigem um trabalho extra na planilha. Mas sem dúvida é um projeto para ficar de olho.

Robert Chatney apresentou seu framework LiFT, uma DSL para testes de aceitação em Java, inspirada no Cucumber. Ela faz com que seus testes em Java fiquem muito fluentes. Totalmente extensível, é um projeto que pretendo colaborar em breve. O código pode ser encontrado no Google Code.

Em seguida, apresentei meu paper sobre erros (ou desvios) que os programadores cometem quando praticam TDD. Apesar de algumas críticas em relação à metodologia (problemas esses que já eram conhecidos e estavam na seção de &#8220;ameaças a validar&#8221; do paper), as ideias ali foram elogiadas e todos concordaram com os problemas levantados pelo artigo. Lembrando que esse artigo é apenas um trabalho em andamento, parte da minha dissertação de mestrado. Espero postar partes dela em breve.

Chris Agmen-Smith apresentou sua experiência em um projeto real com ATDD, e fez questão de mostrar que é possível fazer ATDD sem grandes custos, mas com muitos benefícios.

No final do dia, Raj Mudhar solicitou ajuda para pesquisar na área de ATDD em projetos de grande porte. Qualquer empresa que tenha projetos grandes pode participar, divulgando seus dados e juntos publicarem os resultados em conferências de peso.

Resumindo, o evento foi muito muito bom. Um dia inteiro com riquíssimas discussões sobre as mais variadas pesquisas em TDD. Além disso, pude validar muitas ideias com pessoas realmente influentes na área. Um ponto muito interessante é que não estamos tão longe do que eles praticam no dia-a-dia, mas ainda temos um longo caminho a percorrer!

Até a TDD2011, em Berlin! 🙂