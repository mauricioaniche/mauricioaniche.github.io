---
tags: [ia, contexto, memoria]
title: "Memória dos agentes: quanto contexto realmente precisamos guardar?"
layout: "post"
date: "2026-08-03T11:00:12.556522-03:00"
image: "/assets/images/content/cartoon/blog-2026-08-03-memoria-dos-agentes-quanto-contexto-realmente-precisamos-guardar.jpg"
category: "Engenharia"
description: "Lembro-me de quando tanto o Claude quanto Codex anunciaram uma sequência de melhorias em relação a memória do harness. Em particular, eles agora conseguem lembrar de…"
source_network: "LinkedIn"
source_post_id: "4c6a0a7a-c4c9-466c-8900-a61951f939a2"
source_status: "SENT"
source_date_field: "sentAt"
image_alt: "Ilustração cartoon: um robô e uma bibliotecária escolhem poucos livros úteis para uma mochila pequena, deixando prateleiras de papéis desnecessários para trás."
---

Lembro-me de quando tanto o Claude quanto Codex anunciaram uma sequência de melhorias em relação a memória do harness. Em particular, eles agora conseguem lembrar de coisas que aconteceram em sessões anteriores e reutilizar esse conhecimento.

Você já deve ter sentido isso inclusive no ChatGPT. Ele lembra dos seus últimos projetos e tenta conectar as respostas com esse "conhecimento do além".

Eu sempre vi essas funcionalidades de memória, onde informação vem de lugares que eu não faço ideia, de maneira bem cética. Me incomoda o fato fazer o agente ser ainda mais não-determinístico do que ele já é. 

Também lembro de quando as pessoas estavam pirando em guardar todo e qualquer planejamento de funcionalidade que o agente já fez em markdown, para que o modelo pudesse ter acesso a eles. Sempre achei que isso, no longo prazo, iria mais confundir o modelo do que ajudar.

Vi um tweet do Jerry Liu e Dex Horty sobre o jantar que eles organizaram (veja o tweet nas referências ao final). E uma das ideias discutidas lá foi exatamente essa: "A quantidade mínima de contexto necessária para a IA pode ser apenas a base de código acompanhada de alguma documentação. Quaisquer arquivos de pesquisa ou planejamento destinam-se a tarefas pontuais e não precisam ser mantidos. Ter uma wiki auto-organizada é interessante, mas adiciona complexidade."

Um bom AGENTS.md e o seu código são suficientes.

## Referências

- [Link para o tweet](https://x.com/jerryjliu0/status/2082673383255216356)
