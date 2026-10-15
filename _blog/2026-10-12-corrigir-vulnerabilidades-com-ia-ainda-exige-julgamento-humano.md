---
tags: [ia, seguranca, qualidade, testes, julgamento]
title: "Corrigir vulnerabilidades com IA ainda exige julgamento humano"
layout: "post"
date: "2026-10-12T14:24:20.361558-03:00"
image: /assets/images/blog/cartoon/seguranca-ia-cartoon.jpg
image_alt: "Engenheiro e robô consertam um escudo colorido e procuram pequenas falhas."
category: "Engenharia"
description: "Recebi recentemente um estudo feito pelo time do 1password. Confesso que li apenas o abstract e não avaliei a metodologia científica (meus tempos de acadêmico ficaram…"
source_network: "LinkedIn"
source_post_id: "5d94ba45-9499-4fa2-bf28-23980d0b749a"
source_status: "SENT"
source_date_field: "sentAt"
---

Recebi recentemente um estudo feito pelo time do 1password. Confesso que li apenas o abstract e não avaliei a metodologia científica (meus tempos de acadêmico ficaram pra trás).

O estudo deles avaliou modelos de IA (Claude Opus 4.8 e GPT 5.5) na correção de seis vulnerabilidades reais, recentes e complexas. Três resultados chamam atenção:

1. **A taxa de correções realmente bem-sucedidas foi baixa.** Considerando diferentes cenários e estratégias de geração, os modelos raramente conseguiram eliminar todos os caminhos conhecidos de exploração, sem alterar incorretamente o comportamento da aplicação.

2. **Passar nos testes não significou corrigir a vulnerabilidade.** Em vários casos, os modelos corrigiram apenas parte dos caminhos vulneráveis ou adicionaram "guards" frágeis que satisfaziam os testes, mas não atacavam a causa raiz da vulnerabilidade.

3. **Automatizar completamente a remediação ainda traz riscos relevantes.** Nos experimentos deles, os modelos às vezes introduziram mudanças sutis de comportamento, novas vulnerabilidades ou mascararam vulnerabilidades existentes. 

O estudo nos mostra que ainda é difícil confiar cegamente nesses modelos para encontrar e corrigir problemas de segurança. E pior, eles podem até gerar problemas extras. 

Como eu interpreto isso? Encontrar problemas de segurança sempre foi uma arte. Mesmo ferramentas de análise estática que adoramos rodar conseguem enxergar apenas problemas simples e limitados. 

Eu acho razoável combinar as ferramentas existentes com agentes de código que leem o código o tempo inteiro buscando por problemas. E quando achar um e corrigir, um humano revisa. Qualquer bug de segurança encontrado pela máquina é uma vitória.

Outro ponto interessante: isso me parece algo temporário. Os modelos estão melhorando cada vez mais rápidos, e imagino que esse problema vai ficar menor a cada dia que passa.

## Referências

- [Link para o estudo](https://1password.com/files/resources/frontier-models-vulnerability-patches-flawed.pdf)
