---
id: 616
title: Como começar a refatorar seu legado em PHP/ASP/JSP?
date: 2015-08-09T02:41:03+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=616
permalink: /2015/08/como-comecar-a-refatorar-seu-legado-em-php-asp-jsp/
categories:
  - Blog em Português
tags:
  - código legado
  - mvc
  - php
  - refatoração
---
**_TL;DR: O primeiro passo na refatoração de arquivos de script é mover todo o código de acesso a banco de dados, regras de negócio existentes e fluxo para o topo do arquivo. Para isso, crie as variáveis que serão usados na parte de baixo. Em seguida, o HTML que contém código PHP apenas para regras de visualização._**

Não é difícil encontrarmos aqueles arquivos de script imensos, em PHP, ASP ou JSP, misturando um pouco de tudo: HTML, lógica, acesso a dados, mais HTML, mais lógica, etc:

<div id="wrap_githubgist61acbacbaae3693a59dd" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

A pergunta é: Como começar a refatorar esse código? Muitos anos atrás, tive uma experiência bastante interessante com um sistema enorme escrito só em JSP. O primeiro passo que costumava fazer é fazer com que todo código JSP ficasse no começo do arquivo. Assim, toda lógica de negócio, acesso a banco de dados ficaria agrupado. O resto da página com HTML conteria scripts apenas para alguma lógica de visualização.

Veja o código anterior refatorado. Tanto _rs_ quanto _rs2_ foram para cima. Criei a variável _total_ também para deixar o código um pouco melhor.

<div id="wrap_githubgist5aa99be82088e45013c5" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Porque fiz isso? Para começar a separar as responsabilidades desse código. Colocar todo &#8220;controle de fluxo&#8221; em um único lugar, e regras de visualização em outro. Mesmo que estando no mesmo arquivo, a separação já é visível e facilita a manutenção. Sim, no fim, estou tentando separar o M, do V, do C.

Aqui, começamos a separar o C do V. O M (modelo) não existe nesse código! O próximo passo seria começar a criar classes de domínio e lidar com elas, ao invés de manipular diretamente o array que as funções de acesso a banco geralmente devolvem. Mas isso é assunto para um próximo post!

_PS: rs e rs2 são péssimos nomes. Você, claro, escolha nomes que tenham a ver com o seu domínio._