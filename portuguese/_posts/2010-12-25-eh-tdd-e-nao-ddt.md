---
id: 304
title: 'É &#8220;Test-Driven Design&#8221; e não &#8220;Design Done by Tests&#8221;'
date: 2010-12-25T19:52:39+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=304
permalink: /2010/12/eh-tdd-e-nao-ddt/
categories:
  - Blog em Português
tags:
  - design ágil
  - experiência do programador
  - orientação à objetos
  - SOLID
  - tdd
  - tdd não faz milagre
---
Muitos códigos legados possuem graves problemas de design. Classes gigantes que fazem tudo ou classes altamente acopladas são exemplos reais de código presentes no dia-a-dia de muitos desenvolvedores. E isso não é uma exceção: [as leis da evolução do software](http://en.wikipedia.org/wiki/Software_evolution) mostram que o código de um software tende a degradar. O trabalho do programador é evitar que isso aconteça ou, no pior caso, diminuir a velocidade desse processo de apodrecimento do design.

A busca por um design perfeito, que esteja preparado para aceitar mudanças e evoluir de forma simples, é difícil. Por esse motivo, a prática de TDD tem sido muito comentada pois, segundo seus praticantes, ela ajuda o programador a criar um design melhor.

Mas, a mais famosa frase da área de engenharia de software já nos diz que _não existe bala de prata_. Nenhuma prática garante o sucesso de um projeto ou um código de qualidade. As práticas estão lá para tentar manter o programador nessa direção.

E é a mesma coisa com TDD: a prática não resolverá todos os problemas de design que um programador enfrentará. O programador, na verdade, utiliza os testes para guiar o design. É através dele que o programador sabe se está indo no caminho certo ou não. Isso não quer dizer que TDD faz o design sozinho para o programador. É óbvio que o programador precisa ter experiência e conhecimento necessários para que o design saia realmente com qualidade.

Mas um programador que tenha alto conhecimento e experiência em desenvolvimento também pode criar um design com a mesma qualidade. A diferença é que TDD (e os testes gerados) dão feedback muito mais rápido sobre a qualidade. O gráfico abaixo, feito pelo Gleen Vanderburg, mostra o [tempo de feedback de várias práticas ágeis](http://portal.acm.org/citation.cfm?id=1103845.1094854). Veja que TDD dá feedback em minutos, ou seja, em alguns minutos o programador tem informações sobre o seu design. Através dos testes ele pode obter informações como a coesão da classe, o acoplamento, a simplicidade, etc. Novamente, o programador usa sua experiência para receber e entender esse feedback.

<p style="text-align: center;">
  <img class="alignnone" src="wp-content/uploads/2010/12/PráticaságeisefeedbackVanderburg.jpg" alt="" width="428" height="352" />
</p>

<p style="text-align: center;">
  <strong>Figura 1. </strong>Práticas e tempo de feedback
</p>

Essa é na verdade a grande diferença para o design feito pelo arquiteto-astronauta, famoso no modelo Waterfall, para os designs ágeis. O arquiteto pode ter muita experiência, mas o design que ele faz leva tanto tempo para ser validado e receber feedback que, quando isso acontece, o custo de mudança é altíssimo.

Além disso, o programador ao usar TDD (e por consequência guiar seu design através dos testes) é &#8220;forçado&#8221; a utilizar bons princípios de orientação a objetos. Os tão falados [princípios SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod) passam a fazer mais sentido no momento em que o programador precisa escrever um código que seja fácil de testar. Parafraseando Feathers, [existe uma grande sinergia entre código fácil de testar e código bom](http://michaelfeathers.typepad.com/michael_feathers_blog/2007/09/the-deep-synerg.html). Esses bons padrões facilitam o programador a escrever um código mais fácil de testar, [apesar do Mark Seemann discordar](http://blog.ploeh.dk/2010/12/22/TheTDDApostate.aspx).

Novamente, a experiência do programador conta. O programador experiente sabe que deve gerenciar as dependências entre classes (DIP), sabe que as classes devem ser coesas (SRP), sabe que elas devem evoluir sem a necessidade de reescrevê-la (OCP), e etc. Programadores que não usam TDD também podem fazer uso desses bons princípios. A diferença é que TDD dá feedback quase instantâneo: a necessidade da utilização dessas ideias aparece após alguns minutos programando, o que não é verdade quando o programador não faz TDD.

Enfim, TDD não faz milagre. Mas ele fica lembrando o programador constantemente sobre a necessidade de manter o código limpo. E a necessidade disso é evidente. Com certeza outros programadores irão encontrar outras práticas que também dão feedback sobre qualidade de design ao desenvolvedor. Mas, enquanto isso não acontece, eu recomendo a utilização de TDD.

_Mas lembre-se: é **design guiado pelos testes (Test-Driven Design)** e não design feito pelos testes!_