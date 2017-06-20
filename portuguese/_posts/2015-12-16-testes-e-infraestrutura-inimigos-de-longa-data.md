---
id: 728
title: 'Testes e infraestrutura: inimigos de longa data'
date: 2015-12-16T19:47:37+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=728
permalink: /2015/12/testes-e-infraestrutura-inimigos-de-longa-data/
categories:
  - Blog em Português
tags:
  - boas práticas
  - tdd
  - testes automatizados
  - testes de unidade
---
_TL;DR: Suas classes com regras de negócio não podem depender de infraestrutura. Elas devem ser facilmente testáveis por meio de testes de unidade. Dependências devem ter interfaces amigáveis e serem facilmente mockadas._

Às vezes ouço perguntas como &#8220;como testo meu sistema em Android&#8221;, ou &#8220;como testo meu sistema em JSF&#8221;, ou &#8220;como testo meu sistema em <ponha-sua-tecnologia-aqui>&#8221;. Pra mim, essa pergunta faz todo sentido se você está procurando uma maneira de fazer testes de sistema. Algo como Selenium, só que Android. No entanto, se você está pensando em testes de unidade, essa pergunta não deveria ser muito importante.

**Regras de negócio são importantes. Tão importantes que merecem ficar o mais afastado possível da sua infraestrutura.** Ou seja, não importa se você usa JSF, Android, ou _whatever_, o coração do sistema deve ficar em classes Java, simples, que não dependem de nada externo. Se você pensar sempre assim, pronto, todas suas regras de negócio serão facilmente testadas.

Ah, mas e se pra realizar aquela regra de negócios, eu precisar consultar uma infraestrutura? Sei lá, pegar um dado do banco de dados, ou postar algo em um serviço web? Faça sua classe depender de uma classe que tenha uma interface bastante amigável. Algo como _bd.pegaValor()_ ou _correios.calcula(&#8220;SP&#8221;)_. Nada que você tenha que ficar escrevendo linhas e linhas para chegar no resultado que espera. Assim, fica fácil mockar depois para testar. E dentro da dependência, você faz o que tiver que fazer pra fazer a infraestrutura funcionar.

Se você pensar assim sempre, a infraestrutura que está usando deixa de ser importante. Afinal, você fugiu dela. E testou o que precisava ser testado.