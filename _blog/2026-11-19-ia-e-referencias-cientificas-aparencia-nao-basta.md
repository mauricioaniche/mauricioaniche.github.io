---
tags: [ia, pesquisa, guardrails, senso-critico]
title: "IA e referências científicas: aparência não basta"
layout: "post"
date: "2026-11-19T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-19-ia-e-referencias-cientificas-aparencia-nao-basta.jpg"
image_alt: "Uma pesquisadora confere um livro enquanto um robô apresenta outro que se desfaz em bolhas e uma bibliotecária consulta um catálogo."
category: "Engenharia"
description: "Um estudo de Maxim Topaz e coautores sobre referências biomédicas inventadas por IA mostra por que gerar uma citação exige verificação externa."
---

Acabei de ler um estudo recente do Maxim Topaz e coautores, que explorou se os modelos de IA são capazes de produzir referências científicas corretamente. O teste usou trechos de textos biomédicos.

Os autores pediram referências para 26 modelos de IA diferentes e analisaram um total de 24.518 respostas. Como resultado, viram que 55% delas apontavam para artigos que não existiam nas bases consultadas, e apenas 15% estavam totalmente corretas nos campos avaliados.

A maior parte das respostas foi simplesmente inventada, um exemplo das chamadas alucinações: títulos com aparência real, mas que não correspondiam a papers em nenhuma das bases de dados que usaram. Das referências verificáveis, que levavam a um artigo existente com um identificador válido, cerca de metade apresentava autores incorretos (geralmente, o primeiro autor estava correto, mas era seguido por coautores que nunca participaram do trabalho).

Os cinco modelos testados que foram lançados em 2026 ainda assim inventaram 35% de suas referências. O melhor modelo do estudo acertou a referência completa em apenas 55% dos casos, enquanto onze dos 26 modelos tiveram uma taxa de acerto inferior a 10%.

No fim, é isso: esses modelos são absurdamente probabilísticos. Eles caem muito bem para tarefas em que trocar uma palavra ou outra não faz diferença. Código é um bom exemplo. Tanto faz se o nome da variável é “saldo” ou “saldoTotal”: desde que a mudança seja consistente, o programa terá a mesma saída. Agora, para referências científicas, em que cada detalhe importa, “só” o modelo não é suficiente.

Não acho que IA seja inútil para esse tipo de problema, mas precisa de um harness maior em torno dela. Quem vai criar um?

## Referências

- [Post original](https://lnkd.in/p/dbUz8EUF)
- [Biomedical Reference Generation Remains Unreliable across 26 Large Language Models — Maxim Topaz e coautores](https://arxiv.org/abs/2609.14988)
