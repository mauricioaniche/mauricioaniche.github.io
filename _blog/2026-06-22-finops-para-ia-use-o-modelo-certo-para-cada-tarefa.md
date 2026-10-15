---
tags: [ia]
title: "FinOps para IA: use o modelo certo para cada tarefa"
layout: "post"
date: "2026-06-22T10:00:15.767178-03:00"
image: "/assets/images/content/cartoon/blog-2026-06-22-finops-para-ia-use-o-modelo-certo-para-cada-tarefa.jpg"
category: "Engenharia"
description: "A IA acelerou demais a escrita do código. Mas ela tem um preço, e esse preço é alto. Se você usa os planos da Anthropic ou OpenAI que tem subsídio por trás, aqueles…"
source_network: "LinkedIn"
source_post_id: "c2aaca3a-aa46-4f93-8d28-a6d27b0861c7"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma engenheira escolhe entre três robôs de tamanhos diferentes para carregar caixas pequenas e grandes sem desperdiçar energia."
---

A IA acelerou demais a escrita do código. Mas ela tem um preço, e esse preço é alto. Se você usa os planos da Anthropic ou OpenAI que tem subsídio por trás, aqueles de 20 ou 100 dólares, você percebe que sua janela acaba rápido. Pra quem paga por token então... Não à toa você vê Uber, Microsoft, todas tentando fazer a conta de IA fechar.

No longo prazo, minha expectativa é que o custo do token caia, mesmo para esses super modelos como Opus ou GPT 5.5, que hoje são caríssimos. Mas esse custo nunca vai ser zero. Vejo aqui um desafio análogo ao que tivemos no cloud. O cloud é barato, mas se você deixar a torneirinha aberta, vai pagar muito no fim do mês. Do mesmo jeito que criamos toda uma disciplina de finops para cloud, vamos criar pra IA.

Será que você precisa mesmo do Opus para resolver TODAS as suas tarefas de código? Sabe aquela tarefa de mudar um label no seu HTML, adicionar um if a mais no seu código Java, tem certeza que precisa de um canhão como o Opus pra matar essa formiguinha? O Kimi, o GLM, ou até mesmo o Deepseek Flash, que custa 51x (CINQUENTA E UMA VEZES!) mais barato do que o Opus, podem dar conta. 

Por quê não "rotear" a sua requisição para modelos mais baratos, caso a tarefa seja mais simples? E deixa o Opus e o GPT 5.5 pras tarefas que realmente precisam de ultra inteligência? Já tenho visto exemplos na internet, e os números fecham muito melhor. Deixo um exemplo nas referências ao final.

Aqui na Alura ainda não estamos roteando. Mas eu já sou bloqueado pelo meu Codex com mais frequência do que gostaria. Está na hora de experimentar. E você, já cogitou rotear pra modelo mais barato quando a tarefa é mais simples? Como você implementou isso em escala?

## Referências

- [Post no twitter relacionado](https://x.com/0xdepressionn/status/2065044012793201001?s=46&t=83Fo6IcQ9bNl-SS6uJZuMA)
