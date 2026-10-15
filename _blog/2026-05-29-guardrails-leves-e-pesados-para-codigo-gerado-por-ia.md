---
tags: [ia]
title: "Guardrails leves e pesados para código gerado por IA"
layout: "post"
date: "2026-05-29T10:00:17.645584-03:00"
image: "/assets/images/content/cartoon/blog-2026-05-29-guardrails-leves-e-pesados-para-codigo-gerado-por-ia.jpg"
category: "Engenharia"
description: "Garantir que o código gerado pela IA funcione é um dos desafios que mais me interessam hoje. Eu e o Guilherme Silveira falamos muito sobre isso no nosso dia-a-dia, e…"
source_network: "LinkedIn"
source_post_id: "36ea9ec7-7fd0-4040-b5dc-1d77a57cb54b"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: um robô percorre uma pista com cordas macias de orientação em um trecho e barreiras firmes de proteção em outro."
---

Garantir que o código gerado pela IA funcione é um dos desafios que mais me interessam hoje. Eu e o Guilherme Silveira falamos muito sobre isso no nosso dia-a-dia, e recentemente vi um post do Prof Philipp Leitner formalizando a discussão, que gostei muito. 

Dá pra separar esses mecanismos, que nós e a comunidade tem chamado de 'guardrails', de duas formas:

- Primeiro é o "guardrail leve" (ou soft em inglês). Esse é aquele guardrail onde você define para a LLM as suas estratégias para garantir qualidade. Por exemplo, você diz pra ela, no seu prompt, arquivo de contexto, skill, etc, que ela deve sempre fazer boundary testing (prática de teste de software), que ela deve sempre garantir que todo código trate possíveis null pointers, e que ela deve sempre rodar os testes antes de marcar a tarefa como pronta. Guardrails leves são fáceis de serem criados. A LLM vai dar o seu melhor, mas sabemos que ela é não-determinística e pode "sem querer" não seguir a sua instrução. 

- O segundo é o "guardrail pesado" (ou hard em ingles). Esse é aquele onde não é possível "pular". É a sua integração contínua garantindo que os testes rodem antes do merge. É a sua análise estática para garantir que realmente NPEs não acontecem. Esses geralmente são mais difíceis de serem implementados, especialmente se você precisa de customização.

No mundo ideal, e acredito que chegaremos lá eventualmente, guardrails via AI seriam suficientes. Mas hoje eles sozinhos não são suficientes, e portanto precisamos encontrar o balanço entre esses dois tipos de guardrails, para que possamos entregar cada vez mais código.

## Referências

- [Post do prof Philipp Leitner](https://www.linkedin.com/posts/philipp-leitner-aa5b52156_soft-vs-hard-guardrails-when-share-7464952600233385984-Bmy2/?utm_source=share&utm_medium=member_desktop&rcm=ACoAAAB178EB1aVeabLYbmWe02WqDTLNd30zK4k)
