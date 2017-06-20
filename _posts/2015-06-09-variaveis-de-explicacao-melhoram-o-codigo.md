---
id: 569
title: Variáveis de explicação melhoram o código?
date: 2015-06-09T10:00:20+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=569
permalink: /2015/06/variaveis-de-explicacao-melhoram-o-codigo/
categories:
  - Blog em Português
tags:
  - qualidade de código
  - refatoração
  - xp2015
---
É impressionante nossa capacidade de escrever &#8220;ifs&#8221; complicados ou com condições malucas. Veja, por exemplo, o if que escrevi no fim de semana. _Consegue me dizer o que ele faz em 5 segundos?_

`<br />
if(!m.wasDeleted() && m.getFileName().toLowerCase().endsWith(".java") && m.hasDiff()) {<br />
// ...<br />
}<br />
` 

Uma simples maneira de refatorá-lo é extraindo partes da condição para variáveis com nomes significativos, que explicam melhor o que aquela condição significa. Por exemplo:

`<br />
boolean naoDeletado = !m.wasDeleted();<br />
boolean ehJava = m.getFileName().toLowerCase().endsWith(".java");<br />
boolean temDiff = m.hasDiff();</p>
<p>if(naoDeletado && ehJava && temDiff) {<br />
// ...<br />
}<br />
` 

Perceba como é muito fácil agora ler a condição. Afinal, &#8220;as variáveis explicam&#8221;. Essa refatoração é conhecida por **&#8220;Introducing Explaining Variable&#8221;**, e você pode vê-la no famoso livro de Refatoração do Martin Fowler, ou mesmo nos atalhos da sua IDE favorita de desenvolvimento.

Li um artigo sobre esse tipo de refatoração há pouco tempo [1]. Nele, os autores mostram que desenvolvedores costumam fazer essa refatoração justamente em classes que já apresentaram muitos defeitos no passado. Para tal, ele observou refatorações feitas em 5 diferentes releases do projeto Eclipse.

O artigo tem lá seus viéses. O autor separa classes que receberam essa refatoração, e classes que não receberam essa refatoração, e mostra a média e a mediana da propensão das classes terem defeitos. Apesar da média ser realmente diferente, a mediana é igual em alguns casos. E, claro, em distribuições como essas, a mediana faz muito mais sentido. Ou seja, os resultados dele parecem ser mais fracos do que o que eles argumentam. Um ponto positivo é que o autor preocupou-se em mostrar que as classes tinham os mesmos tamanhos (afinal, classes maiores são mais propensas a terem bugs).

A pergunta que o artigo nos levanta é: **Por que os desenvolvedores resolveram aplicar essa refatoração, justamente em classes problemáticas?** Será que é por que essa refatoração realmente deixa o código mais claro de ler e, por consequência, menos suscetível a defeitos? Meu coração diz que sim.

Eu, particularmente, costumo sempre aplicar esse tipo de refatoração em ifs complicados como esse. Aliás, sempre que extraio variáveis de explicação, penso se esse código não deveria estar dentro da classe de origem.

A condição da variável `ehJava`, por exemplo, poderia estar dentro da classe `Modification` (que é o tipo da variável `m`). Dessa forma, fica fácil reusar a condição, e fácil de ler:

`<br />
boolean ehJava = m.isJava();<br />
` 

[1] S. Counsell, X. Liu, S. Swift, J. Buckley, M. English, S. Herold, S. Eldh, and A. Ermedahl. 2015. An exploration of the &#8216;introduce explaining variable&#8217; refactoring. In _Scientific Workshop Proceedings of the XP2015_ (XP &#8217;15 workshops). ACM, New York, NY, USA, , Article 9 , 5 pages. DOI=10.1145/2764979.2764988 http://doi.acm.org/10.1145/2764979.2764988