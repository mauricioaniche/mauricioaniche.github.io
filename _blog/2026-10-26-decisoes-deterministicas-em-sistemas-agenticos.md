---
tags: ["ia", "agentes", "arquitetura"]
title: "Decisões determinísticas em sistemas agênticos"
layout: "post"
date: "2026-10-26T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-10-26-decisoes-deterministicas-em-sistemas-agenticos.jpg"
image_alt: "Um robô entrega peças geométricas a um mecanismo de encaixes que as separa de forma previsível numa bancada."
category: "Engenharia"
description: "Quando uma decisão tem regras claras, vale implementá-la em código. Os benefícios e os trade-offs dessa escolha em sistemas agênticos."
---

Uma das coisas que tenho aprendido ao desenhar sistemas agênticos é que quanto mais você conseguir fazer com que tarefas determinísticas sejam feitas de maneira determinísticas, melhor ainda.

Se você tem uma etapa no seu fluxo que tem um processo de decisão clara, ao invés de deixar o agente tomar a decisão de maneira não-deterministica, você pode considerar implementar um programa (usando IA!) que toma essa decisão.

A vantagem é que você garante que o não-determinismo do agente não vai te afetar. Mas isso, claro, tem trade-off como qualquer outra decisão de arquitetura:

- É mais complicado implementar um programa que toma a decisão do que um agente que faz o mesmo.
- Você precisa pensar em como vai deployar esse tomador de decisão, que provavelmente é diferente de como você deploya seus agentes
- Essa lógica pode crescer e ficar complicada demais e você pode precisar dar um passo atrás e redesenhar isso como um agente

Como vocês tem feito? Estão tentando também fazer com que decisões deterministicas sejam tomadas de maneira deterministica, ou isso não é um problema?
