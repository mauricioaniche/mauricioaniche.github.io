---
tags: [ia, revisao-de-codigo, guardrails, entrega]
title: "Small-change: acelerando a revisão de código na Imprint"
layout: "post"
date: "2026-11-24T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-24-small-change-acelerando-a-revisao-de-codigo-na-imprint.jpg"
image_alt: "Uma engenheira e um robô inspecionam pequenas encomendas antes de passarem por um portal, enquanto pacotes maiores aguardam ao lado."
category: "Engenharia"
description: "Will Larson conta como a Imprint usa critérios de elegibilidade e verificações automatizadas para acelerar a aprovação de PRs com small-change."
---

O Will Larson, autor do livro Staff+, que eu recomendo demais, escreveu sobre como eles têm acelerado a revisão de código dentro da Imprint, empresa da qual ele é o CTO.

Como muitas empresas, o Will mostra que a Imprint está vendo um crescimento grande no número de pull requests. E, interessantemente, o número de incidentes caiu. Escrevi um [post recente sobre a incident.io](/blog/mais-codigo-com-ia-e-uma-taxa-menor-de-incidentes/), que reporta uma queda na taxa de incidentes por mudança enquanto entrega mais código. Mas, de volta ao assunto: quando o número de PRs cresce, o número de code reviews também cresce e vira gargalo.

Para diminuir o trabalho de code review, eles propuseram o `small-change` (mudança pequena, em português). Basicamente, um PR pode se qualificar para aprovação automatizada se seguir alguns critérios:

- O PR tem menos de 1.000 linhas.
- Não há achados de prioridade P1 ou P2 gerados pelo bot automatizado de revisão de código.
- O autor do PR possui “experiência” no serviço ou aplicação, definida como a existência de pelo menos 10 pull requests previamente mergeados nos diretórios daquele serviço ou aplicação. Para alterações que envolvam múltiplos serviços ou aplicações, o autor deve ter experiência em todos eles para se qualificar.
- A alteração impacta menos de N serviços ou aplicações distintos, conforme a configuração do repositório.
- Bibliotecas compartilhadas e arquivos de utilitários não são elegíveis.

Não basta colocar uma etiqueta no PR: quem determina a elegibilidade é uma verificação do CI, controlada pelo build. Há também configurações por caminho para excluir áreas específicas. A automação só aprova quando todas as verificações passam e a mudança não toca em assuntos sensíveis, como pagamentos e segurança.

Ele diz que, desde que começaram a rodar isso, por volta de 10% dos PRs se qualificam como mudanças pequenas. Mas esse é só o primeiro passo, enquanto ganham confiança e criam guardrails ainda mais capazes.

Ele termina o texto com uma frase que me marcou (tradução literal via Google Translate):

> Nem todos receberam isso com o mesmo entusiasmo; trata-se de uma mudança significativa em relação à forma como aprendemos a ser bons engenheiros, e é desconfortável ter de reavaliar se uma "boa prática", seguida há muito tempo, não se tornou, na verdade, apenas um dogma. O aspecto mais estimulante do ciclo atual é que temos a oportunidade de reavaliar, a cada semana, essas práticas com as quais crescemos; o lado mais doloroso é que, se pararmos de reavaliá-las, corremos um sério risco de ficar para trás.

Precisamos, sim, ter a coragem de revisitar algumas das nossas práticas.

## Referências

- [Speeding up code review with small-change — Will Larson](https://lethain.com/small-changes/)
