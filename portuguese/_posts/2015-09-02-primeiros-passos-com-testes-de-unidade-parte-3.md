---
id: 700
title: 'Primeiros Passos com Testes de Unidade &#8211; Parte 3'
date: 2015-09-02T13:03:12+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=700
permalink: /2015/09/primeiros-passos-com-testes-de-unidade-parte-3/
categories:
  - Blog em Português
tags:
  - before
  - junit
  - testes de software
  - testes de unidade
---
No post anterior, discutimos um pouco sobre pensar nos vários cenários. E conseguimos! Agora que nossa bateria de testes está legal, perceba a **segurança** que ela nos dá. Podemos abrir o método joga() e mudar sua implementação inteira. Para garantir que ela funciona, basta rodarmos os testes. Veja como eles nos dão a liberdade de mexermos no código à vontade, sem medo. Isso é um grande benefício da nossa bateria de testes.

O próximo passo é começar a pensar na qualidade do código que escrevemos em nossos testes. Afinal, você já percebeu que escreveremos muito código. E, claro, se ele não for fácil de manter, teremos problemas.

Nesse post, vamos começar devagar. Vamos remover o código repetido que existe em todos os nossos testes. Repare que a linha abaixo está em todos nossos testes:

<script src="https://gist.github.com/mauricioaniche/057ebf7153a9261db60d.js"></script>


Além de repetida, essa é uma linha perigosa em nossos testes. Ela é a linha que instancia a classe sob teste. Isso significa que qualquer mudança em seu projeto pode fazer com que a bateria de testes inteira pare de funcionar. Faça um teste e modifique o construtor dela! Mais pra frente, mostrarei que, ao projetar para testabilidade, construtores são fundamentais e mudam com frequência.

Vamos então isolar essa linha em um método só pra ele. Esse método instancia o objeto e o guarda em um atributo da classe, para que consigamos vê-lo dentro de qualquer dos métodos de teste:

<script src="https://gist.github.com/mauricioaniche/edc19a053e1d97b49d49.js"></script>


Agora podemos remover a linha repetida de todos nossos métodos de teste. E como esse é um método que queremos executar antes de cada método de teste, basta avisarmos ao JUnit para fazer isso automaticamente. E só anotar o método de setUp() com @Before. Veja como ficou todo nosso código:

<script src="https://gist.github.com/mauricioaniche/987dda04cbfe224c7b86.js"></script>


Você pode colocar um Sysout dentro do setUp() para perceber que ele é executado sempre antes de cada teste. E veja que agora se mudarmos o construtor dessa classe, mudaremos apenas em um lugar. Muito melhor e contrado.

Por esse post, é isso. Lembre-se então de evitar código repetido nos seus testes e, em particular, o código que instancia a classe sob teste.