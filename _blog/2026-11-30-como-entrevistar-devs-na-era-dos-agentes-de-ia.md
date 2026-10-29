---
tags: [ia, carreira, agentes, julgamento, revisao-de-codigo, fundamentos]
title: "Como entrevistar devs quando todo candidato tem um agente de IA?"
layout: post
date: "2026-11-30T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-30-como-entrevistar-devs-na-era-dos-agentes-de-ia.jpg"
image_alt: "Um candidato ajusta uma pista de bolinhas numa oficina enquanto uma entrevistadora observa e um robô segura peças de reposição."
category: "Engenharia"
description: "As experiências de JD Pruett com entrevistas técnicas na era da IA: avaliar o raciocínio, a compreensão do código e as decisões além da demo funcionando."
---

Li o texto do JD Pruett sobre contratação na era da IA. Ele conta o que funcionou e o que não funcionou depois de experimentar diferentes formatos de entrevista técnica.

A pergunta que ele tenta responder é boa: se todo candidato consegue produzir uma demo com um agente, o que a gente deveria avaliar?

A ideia central do texto é olhar para os primeiros 20% e os últimos 10% de um projeto. No começo, precisamos entender o problema, decidir o que construir, pensar na arquitetura. No final, precisamos colocar aquilo na mão do usuário e resolver todos aqueles pequenos problemas que aparecem na entrega.

Os 70% do meio são execução, que os modelos estão fazendo cada vez melhor. E é justamente nessa parte que muitas entrevistas técnicas tradicionais se concentram.

Esses percentuais são uma forma de organizar o argumento, claro. Mas gostei da provocação.

Alguns pontos que me chamaram atenção:

- **Dar um problema grande e liberar IA não resolveu.** Os candidatos entregavam demos funcionando, mas ficavam com uma compreensão superficial da arquitetura. E o entrevistador também não conseguia entender todo aquele código no tempo disponível. A avaliação acabava virando uma análise da apresentação e da capacidade do candidato de falar sobre a solução.

Demo funcionando é um sinal. Mas, sozinha, diz pouco sobre quanto a pessoa entendeu do problema e das decisões que foram tomadas.

- **Revisão de código, sem IA, deu um sinal melhor.** Ele apresenta um pseudocódigo de umas 100 linhas e pede para o candidato explicar o comportamento. Depois, muda as condições: e se dois agentes processarem as mesmas informações ao mesmo tempo? E se precisarmos desfazer as últimas ações?

Gostei dessa parte. Entender um código é o começo. Conseguir raciocinar sobre as consequências de uma mudança mostra que a pessoa construiu um modelo mental do que está acontecendo. Os bugs discutidos são de lógica e concorrência, não pegadinhas de sintaxe.

- **Vários problemas menores ajudaram a enxergar como o candidato pensa.** Na etapa com IA, eles passaram a usar três desafios, com duas horas, uma hora e meia hora. O objetivo é observar a pessoa entendendo e estruturando problemas diferentes.

O favorito dele é o de meia hora. Quase não dá tempo de implementar. O candidato usa o agente para explorar ideias e depois explica o que construiria. É uma forma de concentrar a avaliação naqueles primeiros 20%.

- **Os últimos 10% importam, mas são mais difíceis de avaliar numa entrevista.** Como a pessoa se comporta quando os bugs chegam, o usuário faz algo inesperado e a entrega precisa acontecer? Para essa parte, ele busca sinais nas experiências anteriores e nas referências.

Faz sentido olhar para isso também. A demo é só uma etapa. Precisamos de gente que investigue os problemas e leve a solução até o usuário.

- **Fundamentos continuam aparecendo por baixo dos problemas de agentes.** Um dos exemplos do texto é “memória”. Dependendo do problema, estamos falando de compressão de informação, busca ou invalidação de cache. Orquestrar agentes pode envolver os mesmos problemas de concorrência que já conhecemos.

Esse ponto conversa bastante com o que tenho discutido aqui. As ferramentas mudam, mas ter repertório para reconhecer o problema por trás da ferramenta continua fazendo diferença.

O próprio autor deixa claro que está contratando para uma empresa em estágio inicial. Ele aceita adaptar desafios aos candidatos e ter mais trabalho operacional para conseguir avaliá-los melhor. Não dá para assumir que o mesmo processo funciona em qualquer organização. E sentir mais confiança na decisão de contratação ainda não comprova que o processo prevê melhor o desempenho no trabalho.

Mas a pergunta fica: quando gerar código fica mais fácil, nossas entrevistas conseguem avaliar quem entende o problema, toma boas decisões e sabe explicar o que está fazendo?

Liberar ou proibir IA é só uma parte dessa discussão. Precisamos repensar o que queremos descobrir sobre o candidato.

## Referências

- [How to Hire in the Age of AI, de JD Pruett](https://x.com/jdpruettt/status/2107579719462035889)
