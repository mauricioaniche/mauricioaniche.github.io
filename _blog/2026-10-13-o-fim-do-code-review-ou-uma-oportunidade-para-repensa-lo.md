---
tags: [ia]
title: "O fim do code review ou uma oportunidade para repensá-lo?"
layout: "post"
date: "2026-10-13T14:16:26.679882-03:00"
image: /assets/images/blog/cartoon/repensar-code-review-cartoon.jpg
image_alt: "Engenheiros revisam uma construção de blocos enquanto um robô verifica peças em uma esteira."
category: "Engenharia"
description: "O professor Christian Kästner, que tive o prazer de conhecer, escreveu um texto muito legal sobre code review, chamado \"O fim da revisão de código ou uma oportunidade…"
source_network: "LinkedIn"
source_post_id: "143f742a-f82c-4b0c-b73e-9031e72bac02"
source_status: "SENT"
source_date_field: "sentAt"
---

O professor Christian Kästner, que tive o prazer de conhecer, escreveu um texto muito legal sobre code review, chamado "O fim da revisão de código ou uma oportunidade para repensá-la?"

Meu resumo do texto: 

1. **Code review moderno não foi otimizado principalmente para encontrar bugs.** Comparado às inspeções formais, da década de 80 e 90, o code review moderno é relativamente pouco eficaz na detecção de defeitos profundos, mas ganhou escala por ser barato e aplicável a praticamente todas as mudanças. Seus benefícios incluem legibilidade, disseminação de conhecimento, ownership coletivo, mentoria e padronização. 

2. **Agentes reduzem o custo de produzir código, mas isso não implica ganho proporcional de produtividade.** O professor modela o custo total como produção + responsabilidade futura do código + revisão. Se produção representar apenas um terço do custo total, por exemplo, reduzi-la em 90% reduziria o custo total em apenas 30%. Nesse cenário, revisão e outros processos passam a limitar os ganhos.  

3. **O impacto dos agentes sobre a qualidade e o custo futuro do código ainda é incerto.** Os agentes podem aumentar retrabalho ao gerar código de menor qualidade (e quem não acredita em IA, tá apostando nisso!), mas também podem reduzir esse custo ao automatizar debugging e correções (minha aposta!). Testes, análise estática e revisão automatizada também ficam mais baratos, já que agentes conseguem também gerar eles mais rápido do que humanos, reduzindo potencialmente a necessidade de revisão humana. 

4. **Mais código gerado por IA pode tornar a revisão humana menos eficaz.** O aumento do volume de código cria pressão para revisar rapidamente, favorecendo aprovações superficiais (bom, mas isso já acontecia antes também, quem que nunca deu um LGTM sem nem ler o PR direito?). Além disso, código gerado por agentes tende a parecer plausível, e pode ser mais difícil de ser revisado por um humano. 

5. **A questão passa a ser quais funções humanas devem substituir o code review tradicional.** Se agentes assumirem produção e parte da revisão, precisaremos achar outras maneiras de garantir o aprendizado de júniores e espalhar conhecimento do sistema. 

Ninguém sabe muito bem ainda como o processo de code review nesse mundo da IA deve se parecer, mas com certeza o modelo atual não encaixa mais.

## Referências

- [Link para o post](https://thelastsoftwareengineer.substack.com/p/the-end-of-code-review-or-an-opportunity)
