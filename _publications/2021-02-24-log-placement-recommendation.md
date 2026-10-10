---
title: "An Exploratory Study of Log Placement Recommendation in an Enterprise System"
download: "https://arxiv.org/abs/2103.01755"
authors: "Jeanderson Cândido, Jan Haesen, Maurício Aniche, Arie van Deursen"
conference: "Mining Software Repositories Conference (MSR)"
doi: "10.1109/MSR52588.2021.00027"
videoen: "1Q6ZE0N47ew"
categories: ["publication", "monitoring", "selected-monitoring", "ml4se", "msr", "conference", "industry-collaboration", "adyen", "favorite"]
posters: ["icse21"]
year: 2021
---

O registro em log é uma prática de desenvolvimento que desempenha um papel importante nas operações e no monitoramento de sistemas complexos.
Os desenvolvedores colocam instruções de log no código-fonte e usam dados de log para entender como o sistema se comporta na produção.
Infelizmente, antecipar onde registrar durante o desenvolvimento é um desafio.
Estudos anteriores mostram a viabilidade de aproveitar o aprendizado de máquina para recomendar a colocação de logs, apesar do desequilíbrio de dados, uma vez que o log é uma fração da base geral de código.
No entanto, permanece desconhecido como essas técnicas se aplicam a um ambiente industrial e pouco se sabe sobre o efeito de dados desequilibrados e técnicas de amostragem.

Neste artigo, estudamos o problema de posicionamento de logs na base de código da Adyen, uma empresa de pagamentos em grande escala.
Analisamos 34.526 arquivos Java e 309.527 métodos que somam +2 milhões de SLOC.
Medimos sistematicamente a eficácia de cinco modelos com base em métricas de código, exploramos o efeito das técnicas de amostragem, entendemos quais recursos os modelos consideram relevantes para a previsão e avaliamos se podemos explorar 388.086 métodos de 29 projetos Apache para aprender onde fazer login em um ambiente industrial.

Nosso modelo de melhor desempenho atinge 79% de exatidão balanceada, 81% de precisão e 60% de recall.
Embora as técnicas de amostragem melhorem a recuperação, elas penalizam a precisão a um custo proibitivo.
Experimentos com dados de código aberto produzem modelos de baixo desempenho em relação ao conjunto de testes da Adyen; no entanto, são úteis devido à sua baixa taxa de falsos positivos.
Nossos scripts e ferramentas de suporte estão disponíveis para a comunidade.
