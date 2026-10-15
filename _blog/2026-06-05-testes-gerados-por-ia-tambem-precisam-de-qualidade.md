---
tags: [ia]
title: "Testes gerados por IA também precisam de qualidade"
layout: "post"
date: "2026-06-05T09:30:22.107173-03:00"
image: "/assets/images/blog/testing.svg"
category: "Engenharia"
description: "Automatizar a escrita de testes com IA é uma das coisas mais legais desse novo mundo. Você consegue gastar zero energia com isso e, \"de graça\", ganha uma bateria de…"
source_network: "LinkedIn"
source_post_id: "303c5387-e13b-4c1b-862e-3eab7ab29595"
source_status: "SENT"
source_date_field: "sentAt"
---

Automatizar a escrita de testes com IA é uma das coisas mais legais desse novo mundo. Você consegue gastar zero energia com isso e, "de graça", ganha uma bateria de testes que garante que seu sistema funciona e que dá sinais claros pra IA quando ela quebra algo.

Mas não podemos esquecer de pensar em duas coisas:

- Na eficácia e confiabilidade da bateria de teste gerado. Ela testa mesmo o que precisa ser testado? Se os testes estão passando, posso deployar com confiança?

- Na qualidade do código do teste. O código faz o melhor uso das tecnologias? A bateria de teste é fácil de evoluir junto com o código de produção?

No meu micro-SaaS de agendamento de posts em redes sociais, optei por dar instruções bem simples pro modelo. Basicamente, sempre escreva testes, rode sempre os testes antes de dar a tarefa como pronta.

Depois de 100+ testes, eu decidi revisar o código gerado bem a fundo. Percebi vários problemas. Cada classe de teste com uma abordagem diferente. É uma aplicação Spring Boot. Para alguns controllers, a IA decidiu testar o componente direto, para outros, ela decidiu usar MockMvc. Para algumas entidades, ela decidiu escrever testes de unidade, para outras, ela preferiu testar pelo Service. Para alguns fluxos, ela testou corner cases como possíveis entradas de valor com nulo, para outros, ela focou só no caminho feliz. Sem contar testes que soltavam exceção no log e a exceção era engolida pelo teste.

Dado tudo que sabemos sobre código de teste, isso claramente não é o que eu gostaria de ter, mesmo em uma micro aplicação como essa. 

Decidi então investir em um guia bem extenso de como eu gostaria que esses testes fossem escritos. Usei o GPT para me ajudar a escrever todas as boas práticas que eu acredito. Depois, pedi para o Codex revisitar todos os testes e alinhar eles em relação a essas boas práticas. Desde então, os testes gerados são muito mais próximos do que eu gosto.

Eu sei que é fácil ignorar o código de testes, ainda mais código gerado. Mas não esqueça de guiar bem a sua IA para que ela gere testes úteis e com código de qualidade!

## Referências

- [O guia aqui, não é nada demais, mas ilustra o meu ponto](https://gist.github.com/mauricioaniche/c6f80e32f79b55ed6fec439a2280395a)
