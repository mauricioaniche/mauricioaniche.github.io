---
title: "O agente de code review da OpenCo e os limites da revisão automática"
layout: post
date: "2026-12-17T00:00:00-03:00"
category: Engenharia
tags: [ia, revisao-de-codigo, agentes, custos, multiagentes, determinismo, contexto, guardrails]
description: "O fluxo de revisão agêntica da OpenCo, com limites de custo e iterações, faixas de revisão e decisão humana antes do deploy."
image: /assets/images/content/cartoon/blog-2026-12-17-o-agente-de-code-review-da-openco-e-os-limites-da-revisao-automatica.jpg
image_alt: "Dois robôs inspecionam uma pequena ponte de blocos, um monta e o outro usa uma lupa, enquanto uma engenheira controla a cancela de saída."
---

Li o artigo do Francisco Ferreira, CTPO da OpenCo, sobre o revisor de código agêntico deles.

Ele começa relatando o problema que muitos estão tendo nesse momento onde agentes escrevem código mais rápido do que conseguimos validar: a fila de pull requests travando entrega, PRs pequenos e repetitivos acumulavam tempo de revisão humana e criavam gargalo no fluxo de deploy.

A solução deles foi implantar um agente de code review que automaticamente analisa PRs. O fluxo é o seguinte:

- O agente de código implementa, executa testes, verifica a cobertura e abre ou atualiza a solicitação de pull request.
- A revisão começa automaticamente. O agente aguarda.
- O agente verifica cada feedback do revisor em relação às regras de negócio e à arquitetura.
- Ele corrige o que está causando problemas e justifica o restante na solicitação de pull request.
- Com a CI passando e sem problemas críticos ou de alta prioridade em aberto, uma pessoa então aprova e mergeia.

Pontos interessantes da solução deles:

- O agente revisor tem um kill switch caso o custo ultrapasse o limite que eles consideram justo para o mês, tem um limite de 5 iterações com o agente de código para que eles não fiquem discutindo pra sempre, e o revisor não revisa diffs com mais de 120k caracteres.

- Eles tiveram muitas lições aprendidas, como muitas iterações entre os dois agentes no começo (e por isso, o número máximo de iterações) e o revisor achando coisa nova mesmo em código que já havia revisado (e por isso, começaram a passar só o contexto relevante para as próximas revisões e com instruções para focar mais nas correções feitas pelo agente implementador do que em achar coisas novas).

- Faixas diferentes para revisão. PRs pequenos têm uma faixa mais rápida, PRs normais passam por uma revisão forte, e PRs que mudam partes muito importantes da app passam por uma revisão ainda mais intensa.

- Opus foi melhor e mais barato do que o Sonnet.

As lições aprendidas, por eles mesmos:

- Use um orquestrador determinístico ao invés de um prompt gigante.

- Ruído é o principal inimigo e importa mais do que a escolha do modelo.

- Mantenha uma pessoa no loop. O agente nunca deploya, o humano é quem decide isso.

Link pro post original: <https://medium.com/@francisco.ferreira/91-more-code-8-more-merges-unblocking-our-pull-request-queue-with-a-code-review-agent-c336d19ab160>
