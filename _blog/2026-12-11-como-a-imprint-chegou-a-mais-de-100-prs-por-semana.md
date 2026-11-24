---
title: "Como a Imprint chegou a mais de 100 PRs por semana"
layout: post
date: "2026-12-11T00:00:00-03:00"
category: Engenharia
tags: [ia, entrega, agentes, contexto, revisao-de-codigo, integracao-continua, fabrica-de-software, plataforma]
description: "As mudanças de CI/CD, contexto, orquestração e revisão que ajudaram a Imprint a escalar a geração e o deploy de código."
image: /assets/images/content/cartoon/blog-2026-12-11-como-a-imprint-chegou-a-mais-de-100-prs-por-semana.jpg
image_alt: "Uma equipe de pessoas e robôs desobstrui sucessivos trechos de um canal de barcos de brinquedo, abrindo comportas para os barcos seguirem."
---

Li o post do Will Larson sobre como eles chegaram a 100+ PRs mergeados por semana (link nos comentários). Vale muito a pena pra quem tá pensando em aumentar o número de PRs e eficiência sem virar um caos.

Foi um longo caminho até eles chegarem lá, praticamente um ano de trabalho. Algumas medidas que chamaram a atenção:

- Modernizar CI/CD e feature flags pra não travar deploys
- Tirar "context poison" da base de conhecimento (mover contexto pros repos, limpar docs)
- Padronizar issues (eles foram pro Linear) pra alimentar agentes/fluxos automaticamente
- Sair de agentes que rodam no laptop pra um harness na nuvem pra rodar concorrentemente e reagir a eventos
- Centralizar configuração via um MCP interno
- Acelerar revisões com small-change (já escrevi sobre isso!) + permitir aprovador único em casos bem definidos
- Investir em verification files (padrões tipo pstack) pra facilitar a revisão automática

O que eu achei legal é que a história da Imprint mostra que não existe um único "truque" pra fazer isso acontecer. É uma sequência de gargalos. Você resolve um, outro aparece, e você continua resolvendo até chegar onde quer.

É motivador ver um caminho prático pra escalar a geração e o deploy de código sem perder controle.

Link: <https://lethain.com/passing-100-prs-in-a-week/>
