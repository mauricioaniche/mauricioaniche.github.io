---
id: 744
title: O que são testes de mutantes?
date: 2016-02-15T23:13:36+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=744
permalink: /2016/02/o-que-sao-testes-de-mutantes/
categories:
  - Blog em Português
tags:
  - mutation testing
  - teste de mutantes
  - teste de software
---
Como garantir que nossa bateria de testes está boa? Essa é uma pergunta importante, afinal de nada adianta termos testes automatizados se eles não forem bons o suficiente. Uma maneira bem conhecida é calcular a cobertura do código. Ferramentas como o [Cobertura](http://cobertura.github.io/cobertura/) dizem pra você quais linhas do seu código de produção não são executadas pela sua bateria de teste. Assim, você pode facilmente ver qual _if_ você esqueceu de testar, e escrever um teste pra ele.

Mas essa não é a única maneira. Uma delas, bastante interessante e muito popular na academia (mas não tão popular na indústria) é o **teste de mutante**. A ideia é genial. Imagine que tenhamos testes verdes para o seguinte trecho de código:

<div id="wrap_githubgistc16290595a10b4dd317b" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>404: Not Found
&lt;/pre></code>
    </noscript>
  </div>
</div>

Veja que o if verifica se a é MAIOR que 10. O que deveria acontecer com os testes se mudássemos o sinal de MAIOR para MENOR? Nossa bateria de testes deveria quebrar, certo? Pois é exatamente isso que testes de mutantes fazem. Um mutante é simplesmente uma versão alterada do seu código de produção. Alterar o sinal de maior para menor é uma maneira de gerar um mutante. Mudar o sinal de + pra -, * por /, e assim por diante. E a ideia é que, se rodarmos os testes trocando a classe por um mutante, algum teste deve falhar. Afinal, o mutante faz coisa errada!

Ferramentas como o Pitest pegam seu código de produção, geram diferentes mutantes, e executam a bateria de testes. Se algum teste falha, dizemos então que o mutante foi morto. Agora, se algum mutante sobrevive, então você precisa melhorar seus testes.

Para exemplificar, veja meu repositório [pitest-fizzbuzz](https://github.com/mauricioaniche/pitest-fizzbuzz). Ele tem uma simples implementação do jogo Fizz Buzz. É o mesmo exemplo que usei na pequena série de começando com testes, aqui no meu blog. Você entenderá o jogo pelo código:

<div id="wrap_githubgist1f4f157a97576bfb0b4f" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>404: Not Found
&lt;/pre></code>
    </noscript>
  </div>
</div>

Veja os testes dele (que fizemos juntos no blog):

<div id="wrap_githubgist7d69fa956c952672d12f" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>404: Not Found
&lt;/pre></code>
    </noscript>
  </div>
</div>

A bateria de testes parece bem completa. Veja o resultado do relatório emitido pelo Pitest. Tudo verde, ou seja todos os mutantes foram mortos (ahá, eu mandei bem quando escrevi os testes! 🙂

<a href="http://www.aniche.com.br/2016/02/o-que-sao-testes-de-mutantes/pitest-sucesso/" rel="attachment wp-att-745"><img class="alignnone size-full wp-image-745" src="http://www.aniche.com.br/wp-content/uploads/2016/02/pitest-sucesso.png" alt="pitest-sucesso" width="1030" height="645" srcset="http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-sucesso.png 1030w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-sucesso-300x188.png 300w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-sucesso-768x481.png 768w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-sucesso-1024x641.png 1024w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-sucesso-624x391.png 624w" sizes="(max-width: 1030px) 100vw, 1030px" /></a>

Agora, vamos supor que tivéssemos esquecido o teste deveRetornarFizzBuzzQuandoMultiploDe5e7(). Olha só o relatório. Ele nos mostra bem a linha do código de produção onde ele fez a mutação (nesse caso, as mutações), a descrição, e mostra que o mutante sobreviveu. Nesse caso, ele mudou o % por *, e nenhum teste pegou.

<a href="http://www.aniche.com.br/2016/02/o-que-sao-testes-de-mutantes/pitest-erro/" rel="attachment wp-att-746"><img class="alignnone size-full wp-image-746" src="http://www.aniche.com.br/wp-content/uploads/2016/02/pitest-erro.png" alt="pitest-erro" width="1076" height="650" srcset="http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro.png 1076w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro-300x181.png 300w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro-768x464.png 768w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro-1024x619.png 1024w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro-624x377.png 624w" sizes="(max-width: 1076px) 100vw, 1076px" /></a>

Até aí, parece que o cobertura também pegaria isso. Afinal, essa linha não foi coberta. No entanto, testes de mutantes vão além. Mas imagine uma nova regra no jogo: Números maiores ou iguais a 500 imprimem &#8220;big&#8221;. Implementamos:

<div id="wrap_githubgistc4088f52130388b9f70a" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>404: Not Found
&lt;/pre></code>
    </noscript>
  </div>
</div>

E adicionamos o teste:

<div id="wrap_githubgist316e6e378af927c7bdcb" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>404: Not Found
&lt;/pre></code>
    </noscript>
  </div>
</div>

Agora, a cobertura desse código é 100%.

<a href="http://www.aniche.com.br/2016/02/o-que-sao-testes-de-mutantes/pitest-cobertura/" rel="attachment wp-att-749"><img class="alignnone size-full wp-image-749" src="http://www.aniche.com.br/wp-content/uploads/2016/02/pitest-cobertura.png" alt="pitest-cobertura" width="443" height="352" srcset="http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-cobertura.png 443w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-cobertura-300x238.png 300w" sizes="(max-width: 443px) 100vw, 443px" /></a>

No entanto, veja o teste de mutante. Ele pegou! Afinal, não testamos o caso do igual no maior-ou-igual. Uma mutação ali (trocar por exemplo para só maior), e o mutante sobrevive!

<a href="http://www.aniche.com.br/2016/02/o-que-sao-testes-de-mutantes/pitest-erro3/" rel="attachment wp-att-748"><img class="alignnone size-full wp-image-748" src="http://www.aniche.com.br/wp-content/uploads/2016/02/pitest-erro3.png" alt="pitest-erro3" width="871" height="648" srcset="http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro3.png 871w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro3-300x223.png 300w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro3-768x571.png 768w, http://www.mauricioaniche.com/wp-content/uploads/2016/02/pitest-erro3-624x464.png 624w" sizes="(max-width: 871px) 100vw, 871px" /></a>

Testes de mutantes são bastante interessantes, e ainda muito desafiadores para a academia. Afinal, em um sistema grande, o número de mutantes pode ser muito grande. Como encontrar os melhores mutantes? Como remover mutantes redundantes? No site do pitest, você pode [ler um pouco mais sobre mutantes](http://pitest.org/quickstart/basic_concepts/) e ver as [operações de mutação](http://pitest.org/quickstart/mutators/) que ele implementa.

A ferramenta tem plugin para o Maven, então é fácil de executar. No repositório de exemplo, o pom.xml está configurado.