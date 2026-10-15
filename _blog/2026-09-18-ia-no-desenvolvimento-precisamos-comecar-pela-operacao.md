---
tags: [ia]
title: "IA no desenvolvimento: precisamos começar pela operação"
layout: "post"
date: "2026-09-18T10:09:12.014331-03:00"
image: "/assets/images/blog/ai.svg"
category: "Engenharia"
description: "Estamos colocando IA na engenharia de software da \"esquerda pra direita\". Já temos muito bons agentes pra fazer requisitos e escrita de código. Mas quando chega em…"
source_network: "LinkedIn"
source_post_id: "8560ac47-376b-4e79-b0b4-acb1e4c4260e"
source_status: "SENT"
source_date_field: "sentAt"
---

Estamos colocando IA na engenharia de software da "esquerda pra direita". Já temos muito bons agentes pra fazer requisitos e escrita de código. Mas quando chega em revisão de código, mergear PR, muitos times, incluindo os nossos, ainda fazem de forma 100% manual. Mesma coisa pra deploy, monitoramento e operação.

Mesmo pré-IA, quem trabalha em sistema de larga escala sempre soube que o desafio é o que está mais a direita do fluxo. Não é escrever o código o que sempre doeu, mas sim subir uma versão nova, garantir que ela funciona, monitorar, voltar pra trás se algo quebrou, seja via mudar feature flag ou em último caso, revert e push. Esse sempre foi e sempre será o mais difícil.

Precisamos inverter a lógica, e começar a ir "da direita pra esquerda", e ter agentes olhando pra monitoramento, rollback automático, verificação automática da PR.
