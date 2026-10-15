---
tags: [ia]
title: "Idempotência e retentativas: a IA ainda precisa de visão do todo"
layout: "post"
date: "2026-06-03T14:00:26.066088-03:00"
image: "/assets/images/content/cartoon/blog-2026-06-03-idempotencia-e-retentativas-a-ia-ainda-precisa-de-visao-do-todo.jpg"
category: "Engenharia"
description: "A IA pode ter automatizado a escrita do código, mas ainda não consegue \"pensar no todo\" por conta própria. Vou dar aqui dois exemplos recentes onde o \"one-shot\" da IA…"
source_network: "LinkedIn"
source_post_id: "5d89eba7-1746-470d-92d9-850207e0b3ca"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma engenheira ajusta uma máquina de correio para que vários puxões na mesma alavanca entreguem apenas um envelope, com um robô observando."
---

A IA pode ter automatizado a escrita do código, mas ainda não consegue "pensar no todo" por conta própria. Vou dar aqui dois exemplos recentes onde o "one-shot" da IA gerou código sem pensar no todo.

- No meu novo micro SaaS de agendamento de posts em redes sociais, a IA não pensou em idempotência nos endpoints da principal entidade: Post. A consequência foi a criação de posts duplicados. Depois que pedi pra ela pensar em idempotência, ela resolveu.

- No nosso portal de dev interno da Alura, mandamos um e-mail para líderes técnicos e diretores toda vez que um incidente acontece. Esses dias recebemos 10 cópias do mesmo e-mail. Quando fui olhar, percebi que o código mandava e-mail e depois mandava para nosso comunicador interno. A comunicação com o comunicador interno estava falhando, então o job como um todo falhava, e ele re-tentava depois de alguns minutos, causando o envio de múltiplos e-mails. Depois que expliquei o problema pra IA, ela corrigiu certinho.

O trabalho do dev do futuro não é mais pensar nas linhas de código e nos ponto-e-vírgulas que estão faltando. É olhar para o todo, não deixando a IA pular decisões importantes, tanto de arquitetura quanto de negócio, e continuar alimentando ela com contextos e decisões cada vez mais precisas e assertivas para que você possa então focar no próximo "grande peixe" do negócio.
