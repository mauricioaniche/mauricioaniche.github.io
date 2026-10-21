---
tags: [ia, agentes, revisao-de-codigo, entrega]
title: "Os agentes de código vão acabar com os pull requests?"
layout: "post"
date: "2026-11-16T00:00:00-03:00"
image: "/assets/images/content/cartoon/blog-2026-11-16-os-agentes-de-codigo-vao-acabar-com-os-pull-requests.jpg"
image_alt: "Engenheiros e robôs inspecionam vagões em uma ferrovia de brinquedo, com uma fila aguardando uma cancela para entrar no circuito principal."
category: "Engenharia"
description: "Uma provocação de Thorsten Ball sobre pull requests, agentes de código e integração contínua, e a proteção antes de chegar à branch principal."
---

É interessante ver a galera revisitando a necessidade de PRs. Antes mesmo de agentes, membros ativos da comunidade, como Dave Farley, já argumentavam contra pull requests, já que o PR vai ao contrário da ideia de integração contínua.

Vi um tweet do Thorsten, que não conheço bem quem é, mas achei curioso. Aqui abaixo, a tradução literal, via Google Translate:

> Por que você ainda usa pull requests? É para revisão de código? Se for, você realmente acha que você ou seus colegas conseguem detectar bugs e erros que ferramentas como Opus 5.5, Fable ou Astra não encontrariam? Você pode, literalmente, acionar as três e pedir que cada uma faça uma verificação — e ainda repetir o processo quatro vezes, se quiser. (Aliás, não me venha dizer que vocês não têm um canal no Slack ou um grupo de conversa dedicado a pedir aprovações, tipo um "dá o aval aí".) É para compartilhar conhecimento? Certamente hoje existem formas melhores de fazer isso do que via pull requests, não é? Já temos modelos capazes de gerar vídeos explicativos, apresentações, podcasts, jogos, quizzes, tutoriais passo a passo... para qualquer trecho de código que eles consigam acessar. É por causa de CI (Integração Contínua)? Bem, na verdade, CI significa integração contínua — e, por definição, isso é o oposto de manter branches de longa duração e pull requests. Mas, deixando isso de lado: seus agentes já deveriam executar os testes antes de enviar qualquer alteração. Eles podem rodar pelo tempo que for necessário, sem bloquear você, executando toda a suíte de testes, gerando "provas irrefutáveis", vídeos de demonstração end-to-end, e por aí vai... Então, os agentes rodam os testes, confirmam tudo, você faz o push para uma branch, tudo roda de novo, depois você faz o merge e... tudo roda mais uma vez? Isso não faz sentido, faz? Talvez você trabalhe com open source e aceite contribuições externas — nesse caso, não posso opinar sobre o valor dos pull requests (já faz dois anos desde minha última contribuição em open source). Mas, pelo que ouvi, a era dos pull requests também está chegando ao fim no open source, não está? Sinceramente, não entendo por que as pessoas ainda insistem neles. Com agentes, você consegue trabalhar 10 vezes mais rápido, realizar uma integração contínua de verdade e ter muito mais segurança quanto às alterações feitas pelo agente. Não atrase o seu próprio trabalho deixando um monte de mudanças acumuladas em um pull request.

Se os PRs vão desaparecer, ainda não sei. Me agrada a ideia de ter uma proteção antes do código chegar na branch principal. Mas que os agentes de código vão esquentar essa discussão, eles vão.

## Referências

- [Tweet original de Thorsten Ball](https://x.com/thorstenball/status/2111130129355481240)
