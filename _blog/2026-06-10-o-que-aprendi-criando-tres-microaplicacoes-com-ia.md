---
tags: [ia]
title: "O que aprendi criando três microaplicações com IA"
layout: "post"
date: "2026-06-10T13:30:19.805824-03:00"
image: "/assets/images/content/cartoon/blog-2026-06-10-o-que-aprendi-criando-tres-microaplicacoes-com-ia.jpg"
category: "Engenharia"
description: "Nesse último ano, já criei três micro aplicações do começo ao fim. Cada um deles tem 1 usuário (!!!), mas meu objetivo sempre foi aprender sobre engenharia de…"
source_network: "LinkedIn"
source_post_id: "56b18190-5c72-4e2f-925f-e1f728f7ac40"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma inventora e seu robô mostram três pequenas invenções distintas em uma bancada: organizador, telefone de mensagens e calendário sem letras."
---

Nesse último ano, já criei três micro aplicações do começo ao fim. Cada um deles tem 1 usuário (!!!), mas meu objetivo sempre foi aprender sobre engenharia de software e IA. Lições que aprendi com cada um deles:

A primeira é um gerenciador de projetos. Você cria projetos, listas de tarefas, e TODOs. Minha ideia era ver se conseguia criar um clone do Basecamp. E em poucas semanas, trabalhando só uma ou duas horas por dia, consegui. Ele é 100% funcional. Tenho um escritório de arquitetura usando. O que aprendi? Escrever código não é mais o desafio, mas sim criar uma experiência no produto que realmente agrade ao usuário final. Se você usar a minha ferramenta e o Basecamp, você vai ver que as funcionalidades são as mesmas, mas o Basecamp simplesmente te dá uma experiência com zero fricção.

A segunda é um CRM que conecta ao Whatsapp. Seus agentes conseguem responder aos chamados de clientes e você consegue organizar cada lead em um kanban do começo ao fim. O sistema também tem relatórios, IA, orçamentos, e até visitas técnicas. Tenho uma empresa de limpeza usando. O que aprendi? Tomar decisões arquiteturais ainda é muito a nossa tarefa. A primeira versão do LeadZen se perdia na comunicação com o Whatsapp. Precisa implementar uma fila para paralelizar o processamento das várias mensagens que chegavam dos diferentes telefones, mas sequencializar as mensagens do mesmo usuário para evitar alterações concorrentes no estado do lead do mesmo usuário.

Por fim, a terceira é uma ferramenta que me ajuda com agendar meus posts na minha rede social. O post original no LinkedIn, por exemplo, escrevi 15 dias antes, e foi publicado automaticamente pela minha ferramenta. O que aprendi? Esse foi o primeiro micro-SaaS que decidi pedir pra IA escrever testes do começo ao fim. Não dei muita instrução ao modelo. Depois da primeira versão, decidi revisar com atenção os testes escritos. Encontrei muito código de teste mal escrito e cenários cobrindo casos que eram menos relevantes.

A IA realmente automatizou a escrita do código. Não preciso mais digitar letrinha por letrinha. Mas garantir a experiência do usuário, a arquitetura, e a qualidade como um todo, essa ainda é uma tarefa muito humana.
