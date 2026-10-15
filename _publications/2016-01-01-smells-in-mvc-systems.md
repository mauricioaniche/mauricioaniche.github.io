---
title: "A Validated Set of Smells in Model-View-Controller Architecture"
download: "https://research.tudelft.nl/en/publications/a-validated-set-of-smells-in-model-view-controller-architectures"
authors: "Maurício Aniche, Gabriele Bavota, Christoph Treude, Marco Gerosa, Arie van Deursen"
conference: "32th International Conference on Software Maintenance and Evolution (ICSME)"
categories: ["publication", "conference", "icsme", "maintenance"]
doi: 10.1109/ICSME.2016.12
year: 2016
image: "/assets/images/content/cartoon/publications-2016-01-01-smells-in-mvc-systems.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora encontra pequenos nós em três andares conectados de uma casa de software e os marca com bandeirinhas geométricas."
---

Os code smells são sintomas de escolhas inadequadas de design e implementação que podem prejudicar a compreensão do código e possivelmente aumentar a propensão a mudanças e defeitos. Um vasto catálogo de code smells foi definido na literatura e inclui code smells que podem ser encontrados em qualquer tipo de sistema (por exemplo, God Classes), independentemente da sua arquitetura. Por outro lado, sistemas de software que adotam arquiteturas específicas (por exemplo, o padrão Model-View-Controller) também podem ser afetados por outros tipos de práticas inadequadas.

Pesquisamos e entrevistamos 53 desenvolvedores MVC para coletar práticas inadequadas a serem evitadas ao trabalhar em aplicativos Web MVC. Em seguida, seguimos um procedimento de codificação aberta nas respostas coletadas para definir um catálogo de seis code smells do Web MVC, a saber: Brain Repository, Fat Repository, Promiscuous Controller, Brain Controller, Laborious Repository Method e Meddling Service. Em seguida, realizamos um estudo em 100 projetos MVC para avaliar o impacto desses code smells na propensão a alterações e defeitos no código. Além disso, entrevistamos 21 desenvolvedores para verificar a percepção deles sobre os code smells definidos.

Os resultados mostram que os code smells em aplicações Web MVC (i) geralmente aumentam a propensão das classes a mudanças e defeitos e (ii) são percebidos pelos desenvolvedores como problemas graves.
