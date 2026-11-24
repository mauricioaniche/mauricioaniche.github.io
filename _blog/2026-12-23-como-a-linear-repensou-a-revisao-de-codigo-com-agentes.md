---
title: "Como a Linear repensou a revisão de código com agentes"
layout: post
date: "2026-12-23T00:00:00-03:00"
category: Engenharia
tags: [ia, revisao-de-codigo, agentes, operacao]
description: "A Linear tornou a segunda revisão humana opcional, usando revisão agêntica, confiança do autor, feature flags e facilidade de rollback."
image: /assets/images/content/cartoon/blog-2026-12-23-como-a-linear-repensou-a-revisao-de-codigo-com-agentes.jpg
image_alt: "Uma ciclista acompanhada de um pequeno robô ajusta sua bicicleta e abre uma cancela por conta própria, com outra pessoa disponível para ajudar junto à oficina."
---

"Nosso processo de revisão de código foi projetado para um mundo em que humanos escrevem o código." É assim que começa o post que li do time da Linear sobre revisão de código.

Assim como muitos times, eles também perceberam que revisar código da maneira tradicional diminuiria demais os ganhos de produtividade de agentes de código. Mas que relaxar totalmente os requisitos de qualidade também faria com que eles perdessem a confiança nas mudanças que estão fazendo.

Eles perceberam que o papel do dev havia mudado naturalmente de escritor de código para revisor de código gerado pelo agente, e por consequência, agora estavam pagando usando dois engenheiros para revisar a mesma mudança.

Hoje, toda PR é revisada automaticamente por um revisor agente. Quando o autor humano atacou todas as sugestões do agente revisor, ele mesmo pode mergear caso se sinta confiante. Se ele achar que outro dev precisa olhar também, ele pode pedir. Note que o segundo revisor agora é opcional, e não mais obrigatório como antes.

Em janeiro, quando começaram com isso, apenas 2.5% dos PRs foram mergeados pelos próprios autores. Eles estavam se acostumando ainda com isso. Em outubro, esse número chegou a 53% dos PRs mergeados pelo próprio autor.

Ou seja, os engenheiros da Linear estão mergeando mais código do que nunca enquanto o número de revisões de código está caindo.

Eles notaram também que mudanças como correções de bugs, melhorias objetivas como refatoração ou performance, e mudanças dentro de feature flags são comumente mergeadas direto pelo autor. Já mudanças que são mais complexas ou que afetam profundamente a experiência do usuário são geralmente ainda revisadas por outra pessoa.

Eles também observaram que quanto mais experiência você tem na empresa, mais você mergeia suas próprias PRs, pois se sente mais confiante.

Mergear direto também é possível por causa das boas práticas de deploy que eles têm. É fácil fazer rollback e eles fazem uso intenso de feature flags para reduzir o impacto de mudanças problemáticas.

O caso da Linear é bastante alinhado com o que venho defendendo. Não adianta nada voar na escrita do código se tudo engargala na revisão. Precisamos encontrar maneiras de diminuir o custo da revisão de código, e a primeira tentativa de muitas empresas é fazer uso de revisão de código agêntica, deixando humanos para revisar apenas aquilo que realmente é complexo.

Link para o post original: <https://linear.app/data/code-review>
