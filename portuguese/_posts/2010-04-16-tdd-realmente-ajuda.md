---
id: 120
title: TDD realmente ajuda?
date: 2010-04-16T10:43:17+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=120
permalink: /2010/04/tdd-realmente-ajuda/
categories:
  - Blog em Português
tags:
  - agile
  - experimentos
  - tdd
---
Geralmente um programador que nunca praticou TDD tem essa dúvida: será que TDD realmente ajuda na qualidade do código? E na redução de defeitos? Ele aumenta ou diminui a produtividade, afinal? Mas como toda e qualquer prática em engenharia de software, é muito difícil avaliar e chegar a uma conclusão exata sobre seus ganhos e benefícios.

Nos últimos anos, a comunidade acadêmica vem rodando diversos experimentos para tentar mostrar de maneira empírica que TDD realmente ajuda no processo de desenvolvimento de software. Alguns desses estudos são feitos por professores bastante conhecidos na comunidade, como a prof. Laurie Williams (North Carolina State University) e o prof. David Janzen (California Polytechnic State University).

Algumas dessas pesquisas investigam o fato de TDD reduzir o número de defeitos de um software; já outros investigam o fato de TDD produzir código de melhor qualidade. Alguns até pesquisam por indícios de aumento de produtividade.****

**Estudos na indústria**

Janzen [5] mostrou que programadores usando TDD na indústria produziram código que passaram em aproximadamente 50% mais testes caixa-preta do que o código produzido por grupos de controle que não usavam TDD. Além do mais, o grupo que usava TDD gastou menos tempo debugando. Janzen também mostrou que a complexidade dos algoritmos era muito menor e a quantidade e cobertura dos testes era maior nos códigos escritos com TDD.

Um estudo feito pelo Maximillien e Williams [6] mostrou uma redução de 40-50% na quantidade de defeitos e um impacto mínimo na produtividade quando programadores usaram TDD.

Outro estudo feito por Lui e Chan [7] comparando dois grupos, um utilizando TDD e o outro escrevendo testes apenas após a implementação, mostrou uma redução significante no número defeitos. Além do mais, os defeitos que foram encontrados eram corrigidos mais rapidamente pelo grupo que utilizou TDD. O estudo feito por Damm, Lundberg e Olson [8] também mostra uma redução significante nos defeitos.

O estudo feito por George e Williams[9] mostrou que, apesar de TDD poder reduzir inicialmente a produtividade dos desenvolvedores mais inexperientes, o código produzido passou entre 18% a 50% mais em testes caixa-preta do que códigos produzidos por grupos que não utilizavam TDD. Esse código também apresentou uma cobertura entre 92% a 98%. Uma análise qualitativa mostrou que 87.5% dos programadores acreditam que TDD facilitou o entendimento dos requisitos e 95.8% acreditam que TDD reduziu o tempo gasto com debug. 78% também acreditam que TDD aumentou a produtividade da equipe. Entretanto, apenas 50% acreditam que TDD ajuda a diminuir o tempo de desenvolvimento. Sobre qualidade, 92% acreditam que TDD ajuda a manter um código de maior qualidade e 79% acreditam que ele promove um design mais simples.

Nagappan [12] mostrou um estudo de caso na Microsoft e na IBM e os resultados indicaram que o número de defeitos de quatro produtos diminuir entre 40% a 90% em relação à projetos similares que não usaram TDD. Entretanto, o estudo mostrou também TDD aumentou o tempo inicial de desenvolvimento entre 15% a 35%.

Langr [10] mostrou que TDD aumenta a qualidade código, provê uma facilidade maior de manutenção e ajuda a produzir 33% mais testes comparados a abordagens tradicionais.

**Estudos na academia**

Um estudo feito por Erdogmus et all [11] com 24 estudos de graduação mostrou que TDD aumenta a produtividade. Entretanto nenhuma diferença de qualidade no código foi encontrada.

Outro estudo feito por Janzen[13] com três diferentes grupos de alunos (cada um deles usando uma abordagem diferente: TDD, test-last, sem testes), mostrou que o código produzido pelo time que fez TDD usou melhor conceitos de orientação a objetos e as responsabilidades foram separadas em 13 diferentes classes enquanto que os outros times produziram um código mais procedural. O time de TDD também produziu mais código e entregou mais features. Os testes produzidos por esse time teve duas vezes mais asserções que os outros e cobriu 86% mais branches do que o time test-last. Além do mais, as classes testadas tinham valores de acoplamento 104% menor do que as classes não testadas e os métodos eram, na média, 43% menos complexos do que os não-testados.

O estudo de Müller e Hagner [17] mostrou que TDD não resulta em melhor qualidade ou produtividade. Entretanto, os estudantes perceberam um melhor reuso dos códigos produzidos com TDD.

Steinberg [15] mostrou que código produzido com TDD é mais coeso e menos acoplado. Os estudantes também reportaram que os defeitos eram mais fáceis de serem corrigidos.

O estudo do Edwards [16] com 59 estudantes mostrou que código produzido com TDD tem 45% menos defeitos e faz com que o programador se sinta mais a vontade com ele.

**Conclusão**

A maioria dos experimentos feitos tanto na indústria quanto na academia mostram que TDD melhora o processo de desenvolvimento de software, aumentando a qualidade do código, reduzindo o número de defeitos, diminuindo o tempo gasto com depuração e até aumentando a produtividade dos desenvolvedores.

Entretanto, mais experimentos devem ser conduzidos, levando em consideração diferentes fatores de influência que existem em um ambiente de desenvolvimento de software.

**Referências**

Podem ser encontradas <a href="http://www.aniche.com.br/2010/04/referencias-sobre-tdd/" target="_self">aqui</a>.