---
id: 584
title: Montando cenários em testes de sistema
date: 2015-06-17T18:42:36+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=584
permalink: /2015/06/montando-cenarios-em-testes-de-sistema/
categories:
  - Blog em Português
tags:
  - cenários
  - selenium
  - system tests
  - tdd
  - testes automatizados
  - testes de sistema
---
**TL;DR: Crie serviços web para montar os cenários que você precisa em seus testes de aceitação.**

Montar cenários é sempre a parte mais chata em qualquer teste, seja ele manual, de unidade, de integração ou de sistema. O pior é que, quanto mais o teste é parecido com o do mundo real, mais difícil é. No teste de unidade, você tem uma classe, geralmente pequena, e que lida com poucas outras classes. Montar o cenário é razoavelmente fácil; você instancia duas ou três classes e pronto. Mas e quando o teste é de sistema? _Como fazer para testar a tela de Nota Fiscal, se para isso, precisamos de um Cliente, Produto e Orçamento cadastrados?_

A primeira opção é fazer com que o próprio teste seja responsável por navegar pelas telas anteriores e montar os cenários. Ou seja, antes de ir pra tela de nota fiscal, o teste passeia pela teste de clientes, e cadastra um por lá. Depois vai pra tela de Produto e cadastra um por lá. A mesma coisa com um Orçamento, para aí sim conseguir testar a Nota Fiscal. O problema disso é que absurdamente demorado passear por todas essas telas. E a chance de você repetir código entre as várias baterias de teste é ainda maior.

Nesse momento, meu coração diz que a melhor solução é fazer com que a aplicação Web contenha um conjunto de serviços web, prontos para montar o cenário que a aplicação quiser.

  * Precisa de um Cliente? O teste faz um post para _/ws-testes/clientes_, com o Cliente desejado.
  * Precisa de um Orçamento? O teste faz um post para _/ws-testes/orcamentos_.
  * Precisa de um Estado (e não existe tela de estado?) Não tem problema, tem o _/ws-testes/estados_.

Dessa forma, fica fácil. No código do teste, você faz uso de Test Data Builders para rapidamente montar esses objetos, e simplesmente os envia para a aplicação. Fazer serviços web simples, que recebem basicamente entidades, também é fácil, e seu framework MVC deve fazer isso quase que automático.

Além disso, porquê não ter também o _/ws-testes/limpa_ ? Precisamos limpar nosso banco de dados antes de cada teste, para que um teste não influencie o outro.

Apesar de parecer pouco produtivo, na prática, os Test Data Builders usados são os mesmos que você já usa nos seus testes de unidade. E se você tem uma infraestrutura razoável, fazer serviços web é geralmente mais simples do que escrever a navegação nas funcionalidades ao redor, que você precisaria escrever de qualquer jeito.

Fuja dos XMLs malucos do DBUnit ou mesmo de testes de sistema que precisam navegar por 30 telas antes da sua. Dá trabalho? Claro que dá&#8230; Mas testar software é trabalho, não é?!