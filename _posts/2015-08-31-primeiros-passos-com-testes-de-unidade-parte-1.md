---
id: 691
title: 'Primeiros Passos com Testes de Unidade &#8211; Parte 1'
date: 2015-08-31T12:27:13+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=691
permalink: /2015/08/primeiros-passos-com-testes-de-unidade-parte-1/
categories:
  - Blog em Português
tags:
  - junit
  - primeiros passos
  - testes de software
  - testes de unidade
  - testes unitários
---
Olá,

Para comemorar os 50 posts do meu blog, farei uma série sobre primeiros passos com testes de unidade. Então, se ainda não pratica, essa é a hora!

Bem, pra testar código, significa que precisamos ter código, certo? Então, veja o exemplo abaixo. É uma simples implementação do jogo _fizzbuzz_. Se o número é múltiplo de 5, ele imprime &#8220;fizz&#8221;. Se é múltipo de 7, ele imprime &#8220;buzz&#8221;. Se é múltplo de 5 e 7, imprime &#8220;fizzbuzz&#8221;. Caso contrário, só imprime o número.

<div id="wrap_githubgist5827b1f8c3984c675bb0" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

A pergunta é: **como testar esse código de maneira automática?** Será que existe algum robôzinho mágico que sai por aí testando? Testar não é tão legal assim. Mas é fácil! Tudo que precisamos fazer é executar essa função várias vezes, passando dados diferentes pra ela, e ver como ela se comporta.

Pense que o programa está rodando na web, e você precisa manualmente garantir que ela funcione. Ligue sua mente destrutiva e pense nos vários casos que possam fazer esse programa não funcionar.

Como somos programadores, podemos olhar para o código e ver que ele tem 4 caminhos diferentes (um para cada if, mais o caminho onde nenhum if é verdadeiro). Precisamos executar o programa com cada um deles. Vamos começar com o primeiro, onde ele precisa retornar &#8220;fizz&#8221; se o número é múltiplo de 5.

<div id="wrap_githubgistb8e22eca75e81ffbbf18" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Legal! Ele retorna &#8220;fizz&#8221;. Está funcionando! Mas ainda não está tão automático quanto gostaríamos. Pois, você, ser humano, precisa ver que a resposta saiu certa. Precisamos pedir pra máquina comparar. Afinal, é fácil, sabemos que se a entrada for 5, a saída é &#8220;fizz&#8221;. Basta compararmos:

<div id="wrap_githubgistd1dac9d185347cf02591" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Se rodarmos, ele imprime &#8220;verdadeiro&#8221;. Quer dizer que a comparação deu certo e o programa comportou-se como esperado! Agora vá no código do FizzBuzz, e altere ali &#8220;% 5&#8221; para &#8220;% 6&#8221;. Sim, estamos colocando um bug em nosso código. O que acontece agora? Ele imprime &#8220;falso&#8221;. Ótimo, verdadeiro se está certo, falso se estiver errado.

**Parabéns! Você escreveu seu primeiro teste de unidade!** Pois é, é simples assim. Basta você pensar em entradas e saídas, e executar seu programa com elas! Agora faça um código parecido para testar a entrada 7. Você sabe que a saída será&#8230; &#8220;buzz&#8221;.

Mas agora vamos fazer isso melhor. Vamos usar o JUnit, o framework hiper-pop de testes de unidade do mundo Java. O que ele faz? Ele é um robô que vai fazer tudo pra mim? Não! Ele não faz muita coisa, além de te ajudar a dizer se seus testes estão passando ou não. Ao invés de imprimirmos verdadeiros ou falsos (que não ia funcionar bem quando tivéssemos 1000 testes desse), ele pinta a tela de verde ou vermelho, e nos mostra qual &#8220;sysout&#8221; não funcionou.

No Eclipse, é fácil plugar o JUnit. Aperte o botão direito do mouse em cima do seu projeto, escolha a opção Build Path -> Configure Build Path. Na aba Libraries, clique em Add Library. Selecione JUnit -> JUnit 4. E pronto!

Agora basta usarmos. Vamos escrever métodos de teste, um para cada diferente cenário (entrada/saída) que temos para nosso programa. Todo método deve ser anotado com @Test, ser público e retornar void. E aí, no fim, ao invés de fazermos Sysout, usaremos o Assert.assertEquals(), que é quem faz a comparação que garante que a saída bate com o esperado. Veja:

<div id="wrap_githubgist4427c1ea29b373912531" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Se você clicar com o botão direito do mouse no código-fonte, e selecionar Run -> Run as JUnit Test, verá uma tela como a abaixo. Verde, ou seja funcionou.

[<img class="alignnone size-medium wp-image-692" src="http://www.aniche.com.br/wp-content/uploads/2015/08/junit-300x183.png" alt="junit" width="300" height="183" srcset="http://www.mauricioaniche.com/wp-content/uploads/2015/08/junit-300x183.png 300w, http://www.mauricioaniche.com/wp-content/uploads/2015/08/junit.png 330w" sizes="(max-width: 300px) 100vw, 300px" />](http://www.aniche.com.br/wp-content/uploads/2015/08/junit.png)

Agora, faça o teste e coloque um bug na aplicação. Adivinha que cor vai ficar?

[<img class="alignnone size-medium wp-image-693" src="http://www.aniche.com.br/wp-content/uploads/2015/08/falhou-300x203.png" alt="falhou" width="300" height="203" srcset="http://www.mauricioaniche.com/wp-content/uploads/2015/08/falhou-300x203.png 300w, http://www.mauricioaniche.com/wp-content/uploads/2015/08/falhou.png 334w" sizes="(max-width: 300px) 100vw, 300px" />](http://www.aniche.com.br/wp-content/uploads/2015/08/falhou.png)

Fácil, né?! Agora basta continuarmos a escrever outros métodos de teste, para os vários cenários. Veja:

<div id="wrap_githubgist475e9847f36a4bb7a9dc" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Legal, né!? Sua máquina agora roda 5 testes mais rápido do que um piscar de olhos! Um ser humano nunca seria tão rápido! Testes automatizados são muito vantajosos:

  * Rodam muito rápido. Você pode ter milhares de testes e ainda assim executá-los todos em apenas alguns segundos.
  * Se rodam rápido, quer dizer que você vai rodá-los o dia todo. Ou seja, quando algum quebrar, você corrigirá mais rápido, pois tudo estará fresco na sua cabeça. Sem testes, você acha um bug muuuito depois de ter escrito o código, e isso torna tudo mais difícil.
  * Não custa caro. A máquina não cobra nada para executar. E você só gasta tempo nele na hora de escrever. Já parou pra pensar quantas vezes você executa o mesmo teste manual ao longo do dia?

**Parabéns, você sabe escrever testes automatizados!** Será que tem mais!? Aguarde o próximo post.