---
tags: [ia]
title: "O julgamento do engenheiro continua indispensável na era dos agentes"
layout: "post"
date: "2026-10-15T15:26:00-03:00"
image: "/assets/images/blog/ai.svg"
category: "Engenharia"
description: "A Anthropic recentemente blogou sobre o seu novo serviço de source control, \"Scion\", que visa substituir o Git. O ponto deles é que Git foi feito para um universo…"
source_network: "LinkedIn"
source_post_id: "41e696d8-7122-4be4-a825-52d546424ca4"
source_status: "SCHEDULED"
source_date_field: "scheduledAt"
---

A Anthropic recentemente blogou sobre o seu novo serviço de source control, "Scion", que visa substituir o Git. O ponto deles é que Git foi feito para um universo onde humanos escrevem código e não escala para um mundo de agentes.

Dito isso, não vim aqui escrever sobre o Scion, mas sim sobre um parágrafo muito interessante que aparece no post. A tradução literal do parágrafo:

> "Os engenheiros continuam sendo valiosos, mas o trabalho deles está mudando. Todos os engenheiros que trabalharam neste sistema hoje considerariam o Claude melhor do que eles na escrita de código. No entanto, nossos engenheiros forneceram o conhecimento indispensável sobre os componentes de alto nível do sistema e as decisões de projeto que envolviam concessões (*trade-offs*), fazendo escolhas fundamentadas em relação aos problemas que queríamos resolver e à escala que sabíamos ser necessária. Muitas vezes, o papel dos engenheiros era dizer "não" ao Claude. Agentes podem, por vezes, violar restrições fundamentais do sistema para atender a um padrão que jamais deveria ter sido permitido. Isso foi particularmente comum durante nossa migração. Por exemplo, havia vários sistemas que tentavam identificar, por força bruta, o momento em que uma alteração era integrada à ramificação principal (*main*), lendo linearmente o registro de *commits* em vez de consultar nossa ferramenta de revisão de código. A Anthropic também utiliza extensivamente a revisão adversarial; embora essa prática seja extremamente eficaz sob muitos aspectos, ela pode levar a uma visão limitada. Por isso, engenheiros qualificados precisavam orientar o Claude para evitar a criação de soluções excessivamente complexas (*over-engineering*) em resposta a preocupações hipotéticas. Um exemplo disso foi uma revisão que demonstrava desconfiança excessiva em relação a outro serviço interno, levando o Claude a adicionar validações e complexidade desnecessárias. Os membros da nossa equipe continuam analisando todas as solicitações de alteração do sistema, mas agora examinam a intenção da mudança, em vez de lerem cada linha de código."

A IA pode até escrever linhas de código melhor do que nós, humanos, mas ela ainda não substitui o nosso julgamento altamente afiado. Nosso trabalho como engenheiro de software só está subindo um nível de abstração. Continue investindo na sua educação em ciência da computação e engenharia de software, pois é essa base que vai sustentar esse julgamento.

## Referências

- [Post original](https://www.anthropic.com/engineering/redesigning-source-control)
