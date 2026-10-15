---
tags: [ia]
title: "FinOps para IA: as lições da Coinbase sobre modelos, cache e contexto"
layout: "post"
date: "2026-08-19T11:04:17.482021-03:00"
image: "/assets/images/content/cartoon/blog-2026-08-19-finops-para-ia-as-licoes-da-coinbase-sobre-modelos-cache-e-contexto.jpg"
category: "Engenharia"
description: "FinOps pra IA está só começando. Vi um post legal do Brian Armstrong, co-founder do Coinbase."
source_network: "LinkedIn"
source_post_id: "9a6a09f7-90e9-4d23-b478-2557bd4ade63"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: um robô reutiliza peças guardadas em gavetas enquanto uma engenheira dirige cada encomenda ao ajudante de tamanho adequado."
---

FinOps pra IA está só começando. Vi um post legal do Brian Armstrong, co-founder do Coinbase.

- A escolha do modelo padrão importa. O dev deve ser capaz de mudar de modelo, mas o modelo padrão importa, pois é o que o povo realmente usa. Eles estão usando modelos mais baratos como padrão e percebem que os devs não estão mais batendo nos seus limites de uso pessoais mais.

- Melhor roteamento. O sistema vê o prompt do usuário e roteia para o melhor modelo. Por exemplo, se for uma tarefa de planejamento, um modelo mais avançado é melhor; mas para uma tarefa simples do dia-a-dia, um super modelo é demais.

- Cache é importante. Fazer bom uso do cache é importante para reduzir custos.

- Mantenha o contexto enxuto. Comece novas sessões quando começar uma nova tarefa. Adicione só o que precisar, incluindo arquivos e ferramentas. O objetivo não deve ser menos tokens usados, mas sim menos tokens desperdiçados.

- Mais visibilidade. O time pode usar quantos tokens quiser, mas quanto mais token você usar, maior o impacto esperado de você.

Com tudo isso em prática, os custos deles caíram pela metade enquanto o uso de tokens subiu!

Pra quem me acompanha aqui, sabe que eu sou fã (leia-se mão de vaca) da ideia de FinOps pra IA. Veja a referência ao final.

## Referências

- [Tweet original](https://x.com/brian_armstrong/status/2070670644577280109?s=46&t=83Fo6IcQ9bNl-SS6uJZuMA)
