---
tags: [ia]
title: "Como a Prosus reduziu seus custos de IA em 90%"
layout: "post"
date: "2026-10-09T10:37:25.825202-03:00"
image: "/assets/images/content/cartoon/blog-2026-10-09-como-a-prosus-reduziu-seus-custos-de-ia-em-90.jpg"
category: "Engenharia"
description: "O Fabricio Bloisi postou sobre como eles cortaram 90% dos custos de IA dentro da Prosus, que é o grupo que tem o iFood."
source_network: "LinkedIn"
source_post_id: "77710fec-2506-4963-b14d-1d3b5d5e8408"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma equipe e pequenos robôs organizam uma oficina eficiente, reciclando energia, usando ferramentas de tamanhos adequados e enchendo um cofrinho alegre."
---

O Fabricio Bloisi postou sobre como eles cortaram 90% dos custos de IA dentro da Prosus, que é o grupo que tem o iFood.

Dicas do post deles:

* Nem todos os problemas precisam do melhor modelo. Conseguir selecionar o modelo certo, e mais barato, ajuda a diminuir custo sem perder precisão.

* Metade da memória, o dobro da capacidade. Entender bem o que precisa ser enviado pro agente pode fazer a diferença no custo final. Em conversas mais longas, descartar informação que o modelo não precisa mais, e trazer o dado somente quando o modelo realmente precisa faz diferença.

* GPUs que estão paradas também tem custo. Diminuir o "custo" de cada chamada dá mais fôlego aos requests dos usuários. Você também não precisa competir o trabalho do humano, que trabalha em horários específicos, com batch jobs que podem trabalhar de madrugada quando as GPUs estão livres.

* Crie modelos especialistas. Modelos destilados, que focam em tarefas específicas, são menores e por consequência mais baratos de serem servidos.

Em termos da redução de custo de cada uma dessas iniciativas, eles reportaram:

* Encaminhamento de tarefas para o modelo adequado: 50%
* Redução da carga de cada solicitação: 20%
* Destilação de modelos especializados para tarefas repetitivas: 20%
* Utilização de GPU e balanceamento de carga: 10%

## Referências

- [Post da Prosus](https://www.linkedin.com/pulse/how-we-cut-our-ai-costs-90-while-growing-fabricio-bloisi-jvbte/)
