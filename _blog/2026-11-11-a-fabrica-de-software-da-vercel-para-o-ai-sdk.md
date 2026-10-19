---
tags: ["ia", "fabrica-de-software", "agentes", "revisao-de-codigo", "multiagentes"]
title: "A fábrica de software da Vercel para o AI SDK"
layout: "post"
date: "2026-11-11T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-11-a-fabrica-de-software-da-vercel-para-o-ai-sdk.jpg"
image_alt: "Uma engenheira ajusta uma fábrica de brinquedos em miniatura onde robôs especializados montam, inspecionam e embalam peças."
category: "Engenharia"
description: "Agentes especializados, execução na nuvem e revisão humana: aprendizados sobre a fábrica de software da Vercel para o AI SDK."
---

Vocês sabem que estou empolgado com a ideia de software factories e acho que esse é o grande próximo passo. Li sobre a factory que a Vercel criou para o seu AI SDK. O projeto recebe mais de 20 milhões de downloads semanais no npm.

O que aprendi ali:

**1. O gargalo deixou de ser gerar código e passou a ser revisar código.** Mais uma evidência daquilo que todo mundo já percebeu. Adicionar mais agentes não resolvia o problema porque todas as mudanças continuavam disputando a atenção humana. A arquitetura foi desenhada para automatizar o trabalho ao redor do reviewer, mas ainda assim mantendo humanos responsáveis pelo merge.

**2. Em vez de um agente generalista, eles criaram um agente especializado por tarefa.** Há agentes diferentes para reproduzir bugs, implementar correções, revisar PRs, fazer backports para versões antigas da biblioteca, atualizar documentação etc. Cada um possui seus próprios prompts, contexto e evals próprios, facilitando os testes e debugging de cada um desses agentes.

**3. O trabalho moveu do local pro cloud.** A factory começou local na máquina do dev, mas rapidamente moveu-se pro cloud. Não precisar depender do hardware do dev é um ganho.

**4. Em quatro semanas, a factory já passou a escrever 25–35% dos PRs mergeados semanalmente.** Mais de 75% das issues fechadas em julho foram resolvidos pela factory.

Por fim, o artigo termina comentando que a mudança mais interessante de tudo isso é no próprio trabalho de engenharia: em vez de apenas executar tarefas, o trabalho passa a ser melhorar a factory.

Também acredito que chegaremos lá. O dev cuida da fábrica, a fábrica produz o software.

## Referências

- [Texto original da Vercel](https://vercel.com/blog/building-a-software-factory-for-ai-sdk)
