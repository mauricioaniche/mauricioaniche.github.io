---
id: 633
title: Qual o meu problema com tipagem dinâmica?
date: 2015-07-16T21:51:16+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=633
permalink: /2015/07/qual-o-meu-problema-com-tipagem-dinamica/
categories:
  - Blog em Português
tags:
  - linguagens de programação
  - tipagem dinâmica
  - tipagem estática
---
**TL;DR: Linguagens com tipagem dinâmica não nos ajudam a pensar em tipos e/ou abstrações. Por isso, tendemos a escrever código procedural.**

_Esse post é polêmico._ Sempre que alguém me pergunta sobre linguagens dinâmicas, eu sempre solto alguma piadinha de mau gosto. Mas, bem, tenho lá meus motivos.

O primeiro deles é o que todos já conhecem. A falta da existência do tipo em tempo de compilação &#8220;desarma&#8221; um grande aliado: o compilador. Qualquer um que já programou mais do que 2 ou 3 métodos em uma linguagem dinâmica já confundiu a ordem dos parâmetros em uma função, ou já passou um array onde deveria vir lista. Quando você percebe isso? Só em tempo de execução. A desculpa de testes automatizados também não me é justa: por que preciso gastar tempo escrevendo testes para algo que poderia ser feito automaticamente pelo compilador, sem qualquer trabalho para mim?

O segundo é que discordo da &#8220;produtividade&#8221; em que todos os programadores de linguagens dinâmica alegam, afinal você  &#8220;escreve menos&#8221;. Quando você cria uma função, você pensa no tipo de todas as coisas que estão lá (_esse será o meu ponto principal, que vem a seguir_). A diferença é que (novamente) ao deixar isso implícito, você novamente perde o compilador.

Por fim, o que mais me incomoda, é que, quando o programador acostuma a deixar o tipo implícito em seu código, ele passa a &#8220;pensar menos nos tipos&#8221;. **E pensar em tipos/abstrações é, pra mim, o que separa um simples escrevedor de código de um desenvolvedor.** Se a linguagem não te dá maneiras claras de definir contratos, tendemos a escrever código linha abaixo de linha, de maneira procedural. Raramente expressamos nossas ideias como abstrações conversando entre si.

Obviamente, a tipagem dinâmica também tem seu espaço. Concordo muito com o artigo, do Erik Meijer e Peter Drayton [1]. **Use tipagem estática onde possível, e tipagem dinâmica onde necessário**.

<blockquote class="twitter-tweet" width="550">
  <p lang="en" dir="ltr">
    In ruby, you don't ask where the bathroom is, you just redefine it to be wherever you are and then shit all over everything.
  </p>
  
  <p>
    &mdash; Rev. Johnny Healey (@rev_null) <a href="https://twitter.com/rev_null/status/385952011952214017">October 4, 2013</a>
  </p>
</blockquote>



 <small>[1] Meijer, Erik, and Peter Drayton. &#8220;Static typing where possible, dynamic typing when needed: The end of the cold war between programming languages.&#8221; OOPSLA, 2004.<br /> </small>