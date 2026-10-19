---
tags: ["ia", "fabrica-de-software", "agentes", "julgamento", "arquitetura"]
title: "Fábricas de software ainda precisam de luz e de humanos"
layout: "post"
date: "2026-10-23T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-10-23-fabricas-de-software-ainda-precisam-de-luz-e-de-humanos.jpg"
image_alt: "Uma engenheira ilumina uma oficina de robôs com uma grande luminária e orienta a montagem de uma máquina complexa."
category: "Engenharia"
description: "A palestra de Dex Horthy provoca uma discussão sobre qualidade, autonomia de agentes e o papel humano nas fábricas de software."
---

Assisti uma talk legal do Dex Horthy, CEO do Humanlayer, sobre "Why software factories fail", ou "Porquê fábricas de software falham". Eu ando pensando muito em software factories, então a talk me chamou a atenção.

O Dex argumenta que os modelos de código melhoraram demais, mas ainda assim não conseguem produzir código que seja fácil de manter no longo prazo. Não só porque saber que um código está "mal escrito" e vai dar problema no futuro é bem difícil, mas também os modelos nem são treinados pra isso, já que o reward function deles é basicamente se o código passa ou não nos testes. Por causa disso, as famosas "dark software factories", ou seja, fábricas de software agênticas onde um humano não chega nem perto são ainda inviáveis.

Ele conclui então que precisamos de "light software factories" onde o humano ainda monitora a fábrica, e ainda garante que as decisões corretas de arquitetura, design, e produto são tomadas, em particular para funcionalidades complexas.

Estou com ele em quase tudo. Minha opinião:

Ele diz que não consegue provar que os agentes de código escrevem código ruim, mas que esse é o feeling dele e da bolha dele. Tenho um sentimento um pouco diferente, sinto que os agentes de código melhoraram demais na capacidade de escrever código de qualidade e são também ótimos de aprender com os exemplos da própria base de código. Tenho meu viés aqui. Depois de passar por um monte de código que eu não entendia nada mas tinha que manter, estou mais tranquilo em viver com "código não perfeito". Poucas vezes o que realmente me impediu de entregar algo era o código feio.

Concordo com ele quando ele diz que ainda não conseguimos rodar uma fábrica de software no escuro, sem humanos. Os agentes de código são absurdamente capazes e melhoram a cada dia, mas tomam decisões ruins. Não vou chamá-las de erros, pois são geralmente decisões válidas também, mas que não a melhor para aquele problema. Em particular, em funcionalidades complexas. E aqui, o agente precisa sim de empurrão humano. Dito isso, para funcionalidades menores, que nosso backlog é sempre cheio, muita coisa já pode ser feita de maneira bem autônoma pelo agente, com pouca necessidade de pessoas.

Esse pra mim é nosso futuro próximo, e que não acho que estamos muito longe. Delegar as milhares de tarefas simples e pequenas que temos o tempo todo no nosso backlog para os agentes, enquanto o humano foca nas entregas complexas de verdade.

## Referências

- [Talk no youtube](https://www.youtube.com/watch?v=Ib5GBkD555M)
