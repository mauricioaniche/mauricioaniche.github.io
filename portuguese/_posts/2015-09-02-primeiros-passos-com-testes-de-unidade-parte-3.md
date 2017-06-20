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

<div id="wrap_githubgist057ebf7153a9261db60d" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Além de repetida, essa é uma linha perigosa em nossos testes. Ela é a linha que instancia a classe sob teste. Isso significa que qualquer mudança em seu projeto pode fazer com que a bateria de testes inteira pare de funcionar. Faça um teste e modifique o construtor dela! Mais pra frente, mostrarei que, ao projetar para testabilidade, construtores são fundamentais e mudam com frequência.

Vamos então isolar essa linha em um método só pra ele. Esse método instancia o objeto e o guarda em um atributo da classe, para que consigamos vê-lo dentro de qualquer dos métodos de teste:

<div id="wrap_githubgistedc19a053e1d97b49d49" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Agora podemos remover a linha repetida de todos nossos métodos de teste. E como esse é um método que queremos executar antes de cada método de teste, basta avisarmos ao JUnit para fazer isso automaticamente. E só anotar o método de setUp() com @Before. Veja como ficou todo nosso código:

<div id="wrap_githubgist987dda04cbfe224c7b86" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Você pode colocar um Sysout dentro do setUp() para perceber que ele é executado sempre antes de cada teste. E veja que agora se mudarmos o construtor dessa classe, mudaremos apenas em um lugar. Muito melhor e contrado.

Por esse post, é isso. Lembre-se então de evitar código repetido nos seus testes e, em particular, o código que instancia a classe sob teste.