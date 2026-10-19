---
tags: ["ia", "agentes", "testes", "avaliacoes"]
title: "Fundamentos para testar sistemas agênticos"
layout: "post"
date: "2026-10-19T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-10-19-fundamentos-para-testar-sistemas-agenticos.jpg"
image_alt: "Uma engenheira e um robô examinam uma maquete de restaurante com uma reserva representada por um lugar à mesa."
category: "Engenharia"
description: "Princípios de testes aplicados a agentes: resultados observáveis, trajetórias, regressão, oráculos e injeção de falhas."
---

Muitos me perguntam sobre como testar sistemas agênticos. A pulga atrás da minha orelha sempre foi essa: esses sistemas são, sim, diferentes dos que criamos até então, mas muito do que aprendemos ao longo dos anos com testes de software também se aplica aqui. Precisamos adaptar as ideias. Então, finalmente parei pra escrever sobre isso.

Alguns dos pontos que discuto no artigo:

- Comece pela caixa-preta: dada uma tarefa, o agente entrega um resultado aceitável? Verifique o que aconteceu de fato no sistema, além do que o agente diz que fez. Por exemplo, ele fez mesmo a reserva do restaurante?

- Depois, abra a caixa: observe as chamadas de ferramentas e teste propriedades importantes da trajetória, sem prender o teste a um único caminho possível. Por exemplo, ele chamou as ferramentas corretas? O custo de token está dentro do aceitável para a tarefa?

- Mantenha uma suíte de regressão: tarefas representativas, com critérios claros de sucesso, continuam sendo valiosas quando mudamos o modelo, as instruções ou o harness. Métricas como pass@k são úteis.

- Use o oráculo mais determinístico disponível: se dá pra verificar por código, consultar o banco ou validar um contrato, comece por aí. Quando precisar de uma LLM como juiz, teste o juiz também.

- Repita execuções e injete falhas: queremos saber com que frequência o agente acerta e como reage quando uma ferramenta falha, uma API demora ou uma informação está incompleta.

Os fundamentos continuam muito relevantes. Link pro texto completo nas referências abaixo.

## Referências

- [Texto completo](https://mauricioaniche.com/blog/testando-sistemas-agenticos/)
