---
tags: ["ia", "plataforma", "multiagentes", "contexto", "guardrails", "produtividade"]
title: "O que aprendi sobre o uso de IA na Shopify"
layout: "post"
date: "2026-11-03T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-03-o-que-aprendi-sobre-o-uso-de-ia-na-shopify.jpg"
image_alt: "Num ateliê colorido, robôs trabalham em bancadas diferentes conectadas a uma central de ferramentas enquanto uma engenheira coordena."
category: "Engenharia"
description: "Infraestrutura compartilhada, agentes em paralelo, contexto versionado e autonomia: reflexões sobre o uso de IA na Shopify."
---

Tá rolando um texto muito legal sobre o uso de IA na Shopify. Alguns highlights:

1. **A camada padronizada é a infraestrutura, não o agente.** As diferentes ferramentas de IA passam por um proxy de LLMs centralizado, permitindo o controle de custos, observabilidade de uso, troca ou roteamento de modelos sem alterar o workflow dos desenvolvedores.

2. **Agentes são usados em paralelo para tarefas independentes.** Em vez de uma única sessão longa, engenheiros podem executar agentes simultaneamente sobre partes distintas do trabalho. Por exemplo, eles podem disparar uma refatoração ao mesmo tempo que escrevem testes para uma outra área, ao mesmo tempo que implementam uma nova funcionalidade.

3. **O contexto do agente é tratado como infraestrutura do time.** Arquivos como AGENTS.md são versionados junto ao código e descrevem stack, comandos, arquitetura e regras essenciais.

4. **Autonomia é delimitada pela reversibilidade das ações.** Os agentes podem ler e editar código, executar testes e criar commits, mas ações como deploy, acesso a secrets e operações destrutivas ficam bloqueadas. O human-in-the-loop só onde realmente pode ter muito impacto.

5. **O ganho esperado muda o trabalho do engenheiro, não apenas a velocidade de implementação.** Segundo os dados apresentados, a Shopify estima cerca de 20% de ganho de produtividade. Tem uma frase muito boa no artigo: "Pare de gastar 70% do tempo na execução. Deixe o agente escrever o código. Gaste seu tempo decidindo qual código deve existir"

Adorei! O único ponto que eu discutiria é o (4). E aqui pensando em futuro mesmo, pois acho que ninguém chegou lá ainda. Se hoje o agente não pode fazer determinada tarefa X, meu pensamento seria "o que fazer para o agente possa fazer X de maneira segura?"

## Referências

- [Texto original](https://x.com/zodchiii/status/2056319284641460626)
