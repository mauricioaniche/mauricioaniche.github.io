---
title: "Revolut e modelos internos: o custo vai além dos tokens"
layout: post
date: "2027-01-04T00:00:00-03:00"
category: Engenharia
tags: [ia, modelos, custos, claude, codex]
description: "O caso relatado da Revolut ao adotar GLM internamente e a importância de incluir infraestrutura, equipe e depreciação na conta."
image: /assets/images/content/cartoon/blog-2027-01-04-revolut-e-modelos-internos-o-custo-vai-alem-dos-tokens.jpg
image_alt: "Uma equipe cuida de uma estufa com grandes máquinas coloridas e um pequeno robô, enquanto uma pessoa pesa ferramentas e moedas sem inscrições numa balança."
---

A Revolut substituiu Claude Code e Codex pelo GLM (um modelo open-weight chinês) rodando internamente.

O resultado? A conta de IA para geração de código caiu para cerca de 1/10 do que pagavam antes.

- Em uma amostra de ~2.000 engenheiros: tempo de codificação caiu ~60% e lead time ~70%. Limites de token desapareceram, nada de racionar uso no fim do trimestre.

- A infraestrutura é relativamente contida: GLM (~800B parâmetros) em ~56 GPUs Nvidia B200, custo de ~$0,30 por milhão de tokens. Muita engenharia de tuning foi necessária pra chegar lá!
- Anthropic/OpenAI viram uso ocasional.

Tem uma ressalva importante aqui. O custo de servir um modelo internamente não é só o custo do token. Você tem custos de cloud, de equipe, de monitoramento. Tem custo de CAPEX e OPEX que precisam entrar na conta. GPUs depreciam rápido também.

O custo da IA está caindo rápido, e as SLMs estão se mostrando bastante úteis também. Você ganha privacidade, controle total, e quem sabe, até menos custos. Mas ainda não é pra qualquer um. Tenta alugar 56 GPUs dessas pra você ver o preço mensal!

Artigo original: <https://www.trendingtopics.eu/revolut-glm-open-weight-coding-costs/>
