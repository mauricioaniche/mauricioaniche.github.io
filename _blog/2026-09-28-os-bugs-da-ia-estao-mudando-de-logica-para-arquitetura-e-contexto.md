---
tags: [ia]
title: "Os bugs da IA estão mudando: de lógica para arquitetura e contexto"
layout: "post"
date: "2026-09-28T10:26:24.177056-03:00"
image: "/assets/images/content/cartoon/blog-2026-09-28-os-bugs-da-ia-estao-mudando-de-logica-para-arquitetura-e-contexto.jpg"
category: "Engenharia"
description: "O Boris Cherny (dev na Anthropic, criador do Claude) fez um tweet interessante sobre a qualidade do código gerada pelas LLMs. Segundo ele, os LLMs ainda produzem…"
source_network: "LinkedIn"
source_post_id: "abf7eb39-6643-4a06-99e4-5952187b412f"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma engenheira encontra um pequeno inseto no desenho de uma cidade de brinquedo enquanto um robô já monta perfeitamente os blocos individuais."
---

O Boris Cherny (dev na Anthropic, criador do Claude) fez um tweet interessante sobre a qualidade do código gerada pelas LLMs. Segundo ele, os LLMs ainda produzem bugs, mas esses bugs são diferentes dos que costumavam ser. Não se trata mais dos off-by-one errors (aqueles erros onde você trocou um maior por um maior-ou-igual), mas sim de arquitetura, usabilidade da interface do usuário, e decisões erradas por falta de um contexto mais amplo. 

Sinto algo parecido. Do ponto de vista algorítmico e lógico, a velocidade com que os modelos melhoraram no último ano é absurdo. Lembro-me de usar o Haiku e ele já errar pouco, agora com Sol e Astra (aqui na Alura, usamos Codex), raramente vejo erro de lógica. 

O desafio agora é continuar adicionando guardrails para que as LLMs entendam mais do produto que queremos construir.

## Referências

- [Tweet original](https://x.com/bcherny/status/2087284684103537011)
