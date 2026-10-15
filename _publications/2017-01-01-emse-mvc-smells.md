---
title: "Code smells for Model-View-Controller architectures"
download: "https://research.tudelft.nl/en/publications/code-smells-for-model-view-controller-architectures"
authors: "Maurício Aniche, Gabriele Bavota, Christoph Treude, Marco Gerosa, Arie van Deursen"
conference: "Empirical Software Engineering Journal (EMSE)"
categories: ["publication", "journal", "emse", "maintenance", "favorite", "selected-maintenance"]
videopt: "Pd5CdV5sPbo"
videoen: "KPnNpTsZB40"
year: 2017
doi: 10.1007/s10664-017-9540-2
image: "/assets/images/content/cartoon/publications-2017-01-01-emse-mvc-smells.jpg"
image_alt: "Ilustração cartoon: uma equipe desembaraça fitas entre três pavilhões coloridos de um sistema e melhora os caminhos para manutenção."
---

Estudos anteriores mostraram os efeitos negativos que o código de baixa qualidade pode ter nos proxies de manutenção, como a propensão a alterações de código e a defeitos. Um dos sintomas de código de baixa qualidade são os code smells, definidos como opções de implementação abaixo do ideal. Embora esta definição seja bastante geral e pareça sugerir um amplo espectro de code smells que podem afetar sistemas de software, a literatura de pesquisa concentra-se principalmente no conjunto de code smells definidos no catálogo por Fowler e Beck, relatando problemas de design que podem potencialmente afetar qualquer tipo de sistema, independentemente da sua arquitetura (por exemplo, Classe Complexa). Entretanto, sistemas que adotam uma arquitetura específica (por exemplo, o padrão Model-View-Controller) podem ser afetados por outros tipos de práticas inadequadas que só se manifestam na arquitetura escolhida.

Apresentamos um catálogo de seis code smells adaptados para aplicações MVC e definidos por meio de pesquisas/entrevistas com 53 desenvolvedores MVC. Validamos nosso catálogo sob diferentes perspectivas. Primeiro, avaliamos a relação entre os code smells definidos e a propensão a alterações e defeitos do código. Em segundo lugar, investigamos quando estes code smells são introduzidos e por quanto tempo sobrevivem. Terceiro, entrevistamos 21 desenvolvedores para verificar sua percepção dos code smells definidos. Quarto, como nosso catálogo foi definido principalmente em conjunto com desenvolvedores que adotam um framework Java específico em suas aplicações MVC (por exemplo, Spring), entrevistamos quatro desenvolvedores especialistas que trabalham com diferentes tecnologias para a implementação de suas aplicações MVC para verificar a generalização de nosso catálogo.

Os resultados alcançados mostram que os code smells Web MVC definidos (i) na maioria das vezes, têm mais chances de serem sujeitos a alterações e defeitos, (ii) são introduzidos principalmente quando o arquivo afetado (ou seja, o arquivo que contém o code smell) é submetido pela primeira vez no repositório e sobrevive por muito tempo no sistema, (iii) são percebidos pelos desenvolvedores como problemas graves, e (iv) generalizam para outras linguagens/frameworks.
