---
tags: [ia, revisao-de-codigo, guardrails, arquitetura]
title: "Revisão por exceção: repensando o code review na era dos agentes"
layout: "post"
date: "2026-09-23T10:28:18.042150-03:00"
image: "/assets/images/content/cartoon/blog-2026-09-23-revisao-por-excecao-repensando-o-code-review-na-era-dos-agentes.jpg"
category: "Engenharia"
description: "A Rachel Laycock (CTO da Thoughtworks) escreveu um texto muito interesse sobre code review. Ela levanta um ponto que todos que já estão codando com IA perceberam: se…"
source_network: "LinkedIn"
source_post_id: "34ef0b86-53c3-42f6-9bd4-d943377b6921"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma equipe humana examina uma única peça complexa numa mesa iluminada enquanto pequenas peças simples passam por verificadores automáticos."
---

A Rachel Laycock (CTO da Thoughtworks) escreveu um texto muito interesse sobre code review. Ela levanta um ponto que todos que já estão codando com IA perceberam: se agentes vão gerar muito mais código, continuar exigindo revisão humana de todo diff cria um gargalo. E talvez isso signifique que estávamos usando code review para resolver problemas que deveriam ser tratados antes.

De acordo com ela, code review acumulou várias responsabilidades: encontrar bugs, transferir conhecimento, mentorar, garantir alinhamento arquitetural e funcionar como mecanismo de propriedade. Isso funcionou enquanto humanos geravam código a uma taxa limitada. Com IA, o volume cresce e o modelo “faça algo - abra PR - outra pessoa revisa” não escala mais.

A proposta dela é sobre mover a avaliação do código para a esquerda. Não é muita novidade. Programação Extrema sempre preferiu programação pareada do que revisão de código. Dave Farley também fala muito sobre PP para você pegar o problema na medida que ele acontece ao invés de esperar por etapas mais pra frente.

Ela também sugere a "revisão por exceção", e usar pessoas para revisar código quando o julgamento de uma pessoa externa realmente importa: mudanças fundamentais de arquitetura, alteração de segurança, áreas críticas pouco familiares, etc.

Minha opinião:

- Também acho que revisão de código, do jeito que é hoje, com humanos revisando 100% dos PRs está com seus dias contados. Não vai escalar para a quantidade de código que vamos gerar.
- Se você analisar com bastante cuidado, muitas das revisões de código são apenas "LGTM", mas outras são realmente densas e rolam boas discussões. De maneira implícita, nós já decidíamos quais PRs realmente mereciam nossa atenção e quais não. Isso vai só ficar agora mais formal, e com técnicas mais claras para decidirmos o que revisar e o que não revisar.
- No mundo agêntico, o trabalho agora é também sobre não só comentar o código do produto, mas entender o que você pode mudar na sua fábrica para que na próxima vez o agente gere o código que você quer.
- Revisão de código como maneira de aprender e treinar juniores vai desaparecer. Vamos precisar encontrar outras maneiras de acompanhar o trabalho do junior e dar feedback. Programação pareada também me parece o caminho.

## Referências

- [Texto da Rachel Laycock](https://martinfowler.com/rachels-ramblings/code-review.html)
