---
id: 276
title: Quando devo apagar testes?
date: 2010-12-19T13:17:36+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=276
permalink: /2010/12/ok-quando-devo-apagar-testes/
categories:
  - Blog em Português
tags:
  - apagar código
  - apagar teste
  - classes de equivalência
  - particionamento em classes de equivalência
  - tdd
  - teste de software
  - teste de unidade
  - testes
---
O código dos testes é tão importante quanto código de produção. E provavelmente você já ouviu aquela famosa frase: _&#8220;melhor do que escrever código, é apagar código!&#8221;_. Quando é então que eu apago código de teste?

A primeira e mais óbvia resposta é: quando o teste deixar de fazer sentido! Se a funcionalidade foi removida, você deve atualizar sua bateria de testes e apagar todos os testes relacionados à ela. **Bateria de testes desatualizada não serve pra nada!** Se a funcionalidade evoluir, você deve evoluir seus testes juntos.

Até aí nada de novidade&#8230; Mas vamos lá.

A segunda resposta é: quando você tem testes repetidos! Em algumas situações, quando estamos em dúvida sobre como implementar determinada funcionalidade, optamos por escrever testes parecidos para, de alguma forma, triangularizar até chegar na implementação correta.

Voltando ao velho exemplo da calculadora. Suponha que implementar um algoritmo de soma fosse algo complicado. Você começou com testes simples, como (1+1), depois (1+2), depois (2+2). Nesse momento você encontrou uma maneira de resolver o problema para quaquer (m+n). Seus testes de unidade ficam parecidos com esses:

<div id="wrap_githubgist674641" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Esses testes, muito úteis durante o tempo de desenvolvimento do algoritmo, agora se tornaram repetidos. **Você, portanto, deve apagá-los!** Eles, além de serem inúteis, ainda dificultam o trabalho do desenvolvedor. Se um dia o método testado mudar, você terá que mudar em 10, 20 testes diferentes (mas que testam a mesma coisa!). Lembre-se do acoplamento entre seu código de teste e seu código de produção (sim, ele existe!).

Mas poxa, um testezinho só não é pouco? **Não!** Você precisa de apenas um teste para garantir a funcionalidade. Não adianta testar a mesma coisa duas vezes.

**Você deve ter apenas um teste para cada conjunto de estados válidos e inválidos para uma condição de entrada.** A ideia é que todos os elementos de uma classe se comportem de maneira similar. A esses conjuntos damos o nome de _classes de equivalência_. Escrever apenas um teste por classe de equivalência é uma prática muito comum em testes de caixa preta e é conhecida como _particionamento em classes de equivalência_. Apesar disso, acredito que ela faça sentido também para testes de caixa branca, como os testes de unidade.

No nosso exemplo da calculadora, poderíamos ter testes para, por exemplo:

  * soma de dois números positivos;
  * soma de um número positivo com outro negativo;
  * soma de um número negativo com outro positivo;
  * soma de dois números negativos;
  * soma com um dos elementos sendo zero;

<div id="wrap_githubgist674694" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Obviamente, encontrar todas as classes de equivalência não é um trabalho fácil, e por isso temos a gigante área de testes de software. Mas não é repetindo testes que você garante que seu código funciona.

**Referências**

Maldonado, Jino, Delamaro. _Introdução ao teste de software_. Editora Campus, 2007.