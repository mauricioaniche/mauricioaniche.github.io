---
tags: [ia]
title: "Criando o Ticka com IA: lições de um clone simplificado do Basecamp"
layout: "post"
date: "2026-05-25T10:30:31.317890-03:00"
image: "/assets/images/content/cartoon/blog-2026-05-25-criando-o-ticka-com-ia-licoes-de-um-clone-simplificado-do-basecamp.jpg"
category: "Engenharia"
description: "Quando comecei a experimentar o Claude, no começo de 2025, decidi criar uma app do começo ao fim para entender o poder da engenharia agêntica. "
source_network: "LinkedIn"
source_post_id: "a3807064-5632-424e-a6b2-e55249c352b6"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: uma pessoa e um robô organizam tarefas representadas por cartões coloridos sem escrita em um pequeno acampamento de montanha."
---

Quando comecei a experimentar o Claude, no começo de 2025, decidi criar uma app do começo ao fim para entender o poder da engenharia agêntica. 

Sempre fui fã do Basecamp como ferramenta de gerenciamento de projeto, gosto muito da simplicidade do modelo de projetos, listas de tarefas, tarefas, nada mais do que isso. Então decidi criar meu próprio Basecamp.

Em poucas semanas, trabalhando menos de 1 hora por dia, criei o Ticka, uma versão absurdamente simplificada do Basecamp. O que eu aprendi na época:

- Naquele momento, percebi que o mundo de engenharia de software ia mudar. Ainda não tinha conseguido enxergar que IA agêntica ia entrar em tudo, mas ao menos, escrever código  "estava resolvido". 

- Todo mundo diz que o mundo mudou depois do Opus. Eu concordo em partes; o mundo já tinha mudado ali. Os modelos já eram absurdamente capazes de escrever código. Com a instrução certa, eles produziam código perfeito em "one shot". O Opus é mais independente e consegue rodar sozinho por horas, mas pro dia-a-dia do dev, onde a maioria das tarefas é mais pontual, os modelos já eram bem capazes. 

- Pra ser honesto, até hoje uso os modelos mais novos do mesmo jeito que usava antes, com instruções bem específicas. Sei que os modelos novos são super capazes de se virar, encontrar coisas sozinhos, resolver ambiguidades, mas ainda acredito muito em dar instruções mais precisas pro modelo. Ainda aponto para classes onde sei que a mudança tem que acontecer, digo como quero o "design" das classes, etc. A IA coda pra mim, ela não pensa por mim. Gosto da frase "5 minutos a mais no prompt te economizam 10 minutos a mais na revisão de código".

- Em situações que não sei bem o que fazer, e isso acontece especialmente em tecnologias que sei menos, como front-end, eu deixo ele "se virar" primeiro e aí dou uma lida. Mesmo sem entender da tecnologia, sou capaz de entender se foi uma boa mudança ou não.

- Acabei não tentando pedir pro Claude fazer o bootstrap inicial da app. A v0 do front-end foi feita no Lovable, pois já conheci a sua capacidade de gerar um CRUD. Hoje, já vou direto no Claude ou Codex, eles conseguem gerar o bootstrap inicial sozinhos também.

- Eu revisei muito de perto quase todos os commits no meu "sprint inicial". Tive que mudar muita coisa, em particular, coisas como o que o endpoint devolve, segurança, etc. Atualizei muito o AGENTS.md baseado nisso. Hoje, por ser uma aplicação com baixo risco (poucos amigos usam), eu reviso só passando o olho por cima da mudança. E ele raramente gera algo ruim.

Deixei a ferramenta gratuita para quem quer usar de gerenciador de tarefas pessoal, igual eu uso! Faz 1 ano que uso e tem me servido muito bem. Veja as referências ao final.

Se tiver qualquer dúvida sobre como foi o processo de criar esse micro SaaS, é só me avisar. Desde então já fiz outras 2 apps dessa, que escreverei sobre mais pra frente. 

Vcs gostariam de uma live, no estilo "me pergunte qualquer coisa" sobre o assunto?

## Referências

- [Link pro Ticka](https://www.ticka.com.br)
