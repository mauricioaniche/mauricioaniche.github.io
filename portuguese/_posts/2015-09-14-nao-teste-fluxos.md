---
id: 706
title: Não teste fluxos!
date: 2015-09-14T20:31:31+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=706
permalink: /2015/09/nao-teste-fluxos/
categories:
  - Blog em Português
tags:
  - testar controladores
  - testar fluxo
  - testes de software
  - testes de unidade
---
Recebi esses dias um e-mail bastante interessante. A pergunta era: _devo ou não devo testar o código abaixo?_

<div id="wrap_githubgist8905564ab913b4629bac" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

A pergunta é bastante válida, afinal podemos pensar em dois caminhos diferentes para testar esse código:

  * Fazer um teste de integração, batendo no banco de dados de verdade. Assim, garantiríamos que o salva() realmente funciona.
  * Fazer um teste de unidade, mockar o DAO, e garantir que a regra de validação funciona, e que o salva() é invocado.

A minha abordagem seria: **não teste!**

Quando o código basicamente controla fluxo, eu evito testá-lo com testes de unidade. Simplesmente não faz sentido. Você vai ficar apanhando com mocks, e no fim, vai só garantir que os métodos são invocados na ordem certa.

Nesse código em particular, eu preferia mover a função valida() para uma classe separada, e testá-la isoladamente. O DAO também teria um teste para o salvar(). E o código acima, que apenas controla o fluxo não teria testes de unidade.

Mas como eu o testaria? Se for uma aplicação web, esse código provavelmente estaria em um controlador. Aí, eu prefiro testar via teste de sistema. Aliás, o argumento que dei aqui é o mesmo que dou para quando digo que também não testo controladores de maneira isolada.