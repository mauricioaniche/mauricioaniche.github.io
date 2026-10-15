---
tags: [ia]
title: "O que aprendi sobre a fábrica de software agêntica da OpenAI"
layout: "post"
date: "2026-09-22T15:01:19.977411-03:00"
image: "/assets/images/content/cartoon/blog-2026-09-22-o-que-aprendi-sobre-a-fabrica-de-software-agentica-da-openai.jpg"
category: "Engenharia"
description: "Acabei de ler o deep dive \"Inside OpenAI’s agentic software factory\" do The Pragmatic Engineer. Muitas coisas legais. Algumas delas:"
source_network: "LinkedIn"
source_post_id: "61131945-58ff-433f-b35f-8055bdfff07a"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: um panorama de fábrica alegre com pequenos robôs passando um projeto por planejamento, construção, testes e monitoramento, supervisionados por pessoas."
---

Acabei de ler o deep dive "Inside OpenAI’s agentic software factory" do The Pragmatic Engineer. Muitas coisas legais. Algumas delas:

* A morte das IDEs e dos PRs. No começo do Codex, eles estavam na dúvida se uma ferramenta entre o CLI e a IDE teria sucesso. Mas o tempo mostrou que sim. Eles observaram uma queda gigante no uso de IDEs e a migração para o Codex.

Faz todo sentido. Também acho que não precisamos de IDEs da mesma maneira que precisávamos quando escrevíamos software linha-a-linha. Minha expectativa é que vamos ler código cada vez menos. Não vai chegar a zero tão cedo, mas com certeza muito menos do que lemos hoje.

* Code review precisa mudar. Revisar todos os PRs não escala mais. A software factory deles decide se o PR precisa de revisão humana. Mudanças simples são mergeadas direto; só mudanças mais complexas são ainda roteadas por humanos.

Também acho que revisão de código vai mudar. Em poucas palavras, revisão de código também foi feito para quando pessoas escreviam código, na velocidade com que pessoas conseguiam escrever código. 

* Agentes criando seus próprios dashboards para monitorar o deploy. O agente não só tem acesso a métricas do Datadog, mas também opta por gerar seu próprio dashboard para acompanhar o lançamento daquela funcionalidade.

Essa me surpreendeu. Aqui na Alura também usamos Codex para acompanhar o datadog, em especial, em situações de incidente. Agora, o agente decidir criar um dashboard próprio, achei demais.

* Codex como principal agente em momentos de incidente. Eles tem um bot chamado SevBot que é disparado sempre que um incidente acontece. O bot olha pra tudo que pode e sugere mudanças. Ele não toma decisões, o humano toma.

Se você nunca usou Codex para investigar problemas em produção, você ficaria surpreso!

* Usando Astra pra migrar de Python pra Rust. Eles estão fazendo uma migração gigante de Python pra Rust, basicamente feita por 2 engenheiros e o Astra.

Concluímos bem recentemente uma migração gigantesca de Spring Boot 2 para Spring Boot 4 aqui na Alura. Escrevemos também um relato dessa jornada. Mas é isso aí, migrações que antes pareciam impossíveis, agora são possíveis.

Tem muito mais coisa na newsletter! Assinem a newsletter e leiam!

## Referências

- [Link](https://newsletter.pragmaticengineer.com/p/openai-software-factory)
