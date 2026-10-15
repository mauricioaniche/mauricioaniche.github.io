---
title: "Learning Off-By-One Mistakes: An Empirical Study"
download: "https://arxiv.org/abs/2102.12429"
authors: "Hendrig Sellik, Onno van Paridon, Georgios Gousios, Maurício Aniche"
conference: "Mining Software Repositories Conference (MSR)"
doi: "10.1109/MSR52588.2021.00019"
categories: ["publication", "maintenance", "ml4se", "msr", "selected-ml4se", "conference", "industry-collaboration", "adyen"]
posters: ["icse21"]
tags: [ia]
year: 2021
videoen: "8RUAeKsjho4"
image: "/assets/images/content/cartoon/publications-2021-02-24-learning-off-by-one-mistakes.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora e uma aprendiz ajustam uma ponte de pequenas peças que estava curta por apenas um encaixe."
---

Erros em condições binárias são uma fonte de erros em muitos sistemas de software. Eles acontecem quando os desenvolvedores usam, por exemplo, < or > em vez de <= or >=. Esses erros de limite são difíceis de encontrar e impõem trabalho manual e trabalhoso para desenvolvedores de software. Embora pesquisas anteriores tenham proposto soluções para identificar erros nas condições de contorno, o problema permanece em aberto.

Neste artigo, exploramos a eficácia dos modelos de aprendizagem profunda na aprendizagem e na previsão de erros em condições de contorno. Treinamos diferentes modelos em aproximadamente 1,6 milhões de exemplos com falhas em diferentes condições de contorno.

Alcançamos uma precisão de 85% e um recall de 84% em um conjunto de dados balanceado, mas números mais baixos em um conjunto de dados desequilibrado. Também realizamos testes em 41 bugs de condições de contorno do mundo real encontrados no GitHub, onde o modelo mostra apenas um desempenho modesto. Por fim, testamos o modelo em uma base de código Java em larga escala da Adyen, nosso parceiro industrial. O modelo relatou 36 métodos com bugs, mas nenhum deles foi confirmado pelos desenvolvedores.
