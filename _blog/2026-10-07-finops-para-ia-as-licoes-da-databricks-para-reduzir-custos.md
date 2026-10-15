---
tags: [ia]
title: "FinOps para IA: as lições da Databricks para reduzir custos"
layout: "post"
date: "2026-10-07T10:08:07.202354-03:00"
image: "/assets/images/blog/ai.svg"
category: "Engenharia"
description: "Mais uma empresa compartilhando como está salvando custo de IA. Dessa vez, foi a Databricks:"
source_network: "LinkedIn"
source_post_id: "3ebef8b8-1f1b-40d3-806d-38d37be6bd7a"
source_status: "SENT"
source_date_field: "sentAt"
---

Mais uma empresa compartilhando como está salvando custo de IA. Dessa vez, foi a Databricks:

- **Modelos mais eficientes.** Modelos de inteligência máxima não são necessários para muitas das tarefas deles de código. Alternativas "boas o suficiente", inclusive open source como o GLM, estão ficando muito mais baratas, e eles estão fazendo uso. Economia estimada de ~50%.

- **Roteamento inteligente.** Não adianta depender da pessoa escolher o modelo mais barato para aquela tarefa. Tem que ser automatizado. Eles agora selecionam dinamicamente o modelo de acordo com a tarefa. Economia: ~30%.

- **Visibilidade e orçamento adaptativo.** Cada usuário / dev acompanha seus gastos, recebe dicas para controlá-los e pode até ser bloqueado se ultrapassar certos níveis de consumo. Economia: ~10%.

- **Menos contexto desnecessário.** Eles pararam de mandar pra IA aquele monte de resposta de ferramenta que não agrega em nada, e melhoraram as configurações de cache. Economia: ~10%.

É o finops pra IA dando resultado. Esses posts sempre me ganham. Eu conto até quantos copos de Coca Cola a gente toma na janta, quem dirá tokens...

## Referências

- [Tweet original](https://x.com/pwendell/status/2085781227588714948)
