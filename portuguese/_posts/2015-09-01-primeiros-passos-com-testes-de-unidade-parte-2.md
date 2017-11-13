---
id: 696
title: Primeiros Passos com Testes de Unidade – Parte 2
date: 2015-09-01T10:00:35+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=696
permalink: /2015/09/primeiros-passos-com-testes-de-unidade-parte-2/
categories:
  - Blog em Português
tags:
  - tdd
  - testes automatizados
  - testes de unidade
---
No post passado, escrevemos testes para o _FizzBuzz_. E foi fácil: criamos a classe _FizzBuzzTest_ e escrevemos lá métodos, com diferentes entradas e saídas. A grande charada é que, como conhecemos a entrada, também sabemos a saída. **Mas será que os testes que temos são suficientes?** Vamos agora discutir um pouco sobre o que testar.

Veja novamente nosso código de produção:

<script src="https://gist.github.com/mauricioaniche/5827b1f8c3984c675bb0.js"></script>


O grande truque é olhar para o código e pensar nos vários caminhos diferentes que ele pode ter. Para isso, analisarmos cada instrução que faz o fluxo do código mudar. Por exemplo, ifs, fors, whiles, etc. Em nosso _FizzBuzz_, temos:

  * **Cenário 1:** O primeiro if tem duas condições: número é múltiplo de 5 E múltiplo de 7. Se esse if der verdadeiro, o programa retorna &#8220;fizzbuzz&#8221; e acaba.
  * **Cenário 2:** O segundo if valida se o número é múltiplo de 5. Se der verdadeiro, o programa retorna &#8220;fizz&#8221; e acaba.
  * **Cenário 3:** O terceiro if valida se o número é múltiplo de 7. Se der verdadeiro, o programa retorna &#8220;buzz&#8221; e acaba.
  * **Cenário 4:** O quarto caminho acontece quando nenhum dos anteriores acontece. O programa retorna o número e acaba.

O próximo passo é: qual a entrada que precisamos passar para que o cenário 1 aconteça? E depois, para o cenário 2? E assim por diante. Foi o que fizemos: passamos 35 para o cenário 1 acontecer, ou 13 para o cenário 4 acontecer.

E perceba também que temos um teste para cada cenário. Preciso de mais? Geralmente não. Se você pensar bem nos cenários, verá que não precisará exercitar mais de uma entrada em cada. Chamamos essas entradas diferentes, mas que exercitam o código da mesma maneira, de **classes de equivalência**. Um teste por classe de equivalência é uma boa regra a seguir.

No entanto, nada te impede de ter um pouco mais de segurança. Quando lidamos com algoritmos que envolvem números, como é o caso desse, podemos exercitar cenários similares. Não só para garantir que funciona, mas também para facilitar o entendimento quando outro desenvolvedor ler o teste.

<script src="https://gist.github.com/mauricioaniche/6da27d705d80aac4616.js"></script>


E casos excepcionais? Se você achar que seu programa precisa tratar casos excepcionais, como zero, nulo ou exceção, você então deve escrever o teste para garantir que seu programa se comportará corretamente.

Neste post, discuti sobre como deve ser seu pensamento na hora de escrever um teste. Mas ainda temos 3 posts. Estamos chegando lá! 🙂