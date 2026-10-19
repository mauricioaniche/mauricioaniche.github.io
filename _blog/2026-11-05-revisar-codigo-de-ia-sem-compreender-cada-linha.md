---
tags: ["ia", "revisao-de-codigo", "senso-critico", "guardrails"]
title: "Revisar código de IA sem compreender cada linha"
layout: "post"
date: "2026-11-05T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-05-revisar-codigo-de-ia-sem-compreender-cada-linha.jpg"
image_alt: "Uma revisora com lupa e um robô inspecionam o interior de um relógio grande aberto, além de sua fachada bonita."
category: "Engenharia"
description: "Reflexões a partir de Diomidis Spinellis sobre compreensão, código convincente e mecanismos de proteção na revisão de código gerado por IA."
---

O professor Diomidis Spinellis, na qual tive o imenso prazer de conhecer durante minha estadia na Holanda, escreveu sobre revisão de código no mundo da IA.

Alguns highlights:

1. **A IA quebra a relação entre implementação e compreensão.** Modificar código sempre exigiu entendê-lo primeiro. No mundo da IA, o desenvolvedor recebe uma implementação funcional, mas sem ter construído esse entendimento mental de como ela funciona.

2. **Código errado gerado por LLMs pode continuar parecendo convincente.** As LLMs são papagaios muito convincentes. Como os modelos são otimizados para produzir sequências plausíveis, implementações incorretas podem parecer coerentes, bem estruturadas e passar uma falsa sensação de correção.

3. **Confiar cegamente na ferramenta aumenta o risco durante a revisão.** Nós podemos cair no erro de confiar excessivamente na ferramenta e na solução gerada por ela, e deixar de verificar com rigor aquilo que foi produzido.

Se vamos parar de ler código completamente, eu não sei, mas com certeza não vamos mais entender cada linha de código produzida. Não dá, não escala. Mas para chegar lá, precisamos criar mecanismos de proteção fortíssimos para que possamos confiar no software que estamos entregando mesmo sem conhecer cada detalhe interno dele.

## Referências

- [Texto do Diomidis](https://www.spinellis.gr/blog/20260523/)
