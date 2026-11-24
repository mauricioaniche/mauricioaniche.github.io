---
title: "Skills e MCP também fazem parte da cadeia de suprimentos de software"
layout: post
date: "2027-01-11T00:00:00-03:00"
category: Engenharia
tags: [ia, seguranca, guardrails, agentes]
description: "O pipeline de segurança do iFood para avaliar skills e a evolução dos controles para MCP, com atenção a permissões e instruções maliciosas."
image: /assets/images/content/cartoon/blog-2027-01-11-skills-e-mcp-tambem-fazem-parte-da-cadeia-de-suprimentos-de-software.jpg
image_alt: "Uma inspetora e um robô conferem caixas de ferramentas numa entrada de oficina, usando uma lupa e um portão de segurança acolhedor."
---

Você tem o mesmo cuidado ao instalar uma skill ou um MCP server em um agente de IA que tem ao adicionar uma dependência ao seu software?

O time de segurança do iFood publicou um artigo muito interessante sobre esse problema. Uma skill pode conter apenas instruções em linguagem natural e, ainda assim, induzir um agente a vazar dados confidenciais, executar comandos ou realizar operações indevidas. Afinal, essas extensões podem operar com as mesmas permissões e credenciais do agente.

Para resolver esse problema em escala, o iFood construiu um pipeline automatizado de segurança com quatro etapas: análise estática, análise semântica via LLM, validação de regras de segurança específicas da organização e análise dos riscos decorrentes da combinação de diferentes skills. Das mais de 1.850 skills avaliadas, aproximadamente 350 foram bloqueadas.

O artigo também descreve como o time de segurança está evoluindo essa estratégia para servidores MCP, incluindo controles de permissões em tempo de execução, detecção de mudanças nas ferramentas previamente aprovadas e testes de comportamento em ambientes isolados.

A grande lição aqui é que precisamos começar a tratar skills, prompts e servidores MCP com o mesmo rigor com que tratamos dependências de software. Com uma diferença importante: no mundo dos agentes, uma simples instrução em linguagem natural pode representar uma vulnerabilidade de segurança.

Estamos criando uma nova cadeia de suprimentos de software, com novas superfícies de ataque. Nossas práticas de engenharia e segurança precisam evoluir na mesma velocidade.

Post original: <https://blog.ifoodsecurity.com/ai/security/skills/mcp/llm/2026/11/03/same-credentials-same-blast-radius.html>
