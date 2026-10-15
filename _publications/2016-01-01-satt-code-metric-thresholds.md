---
title: "SATT: Tailoring Code Metric Thresholds for Different Software Architectures"
download: "https://research.tudelft.nl/en/publications/satt-tailoring-code-metric-thresholds-for-different-software-arch"
authors: "Maurício Aniche, Christoph Treude, Andy Zaidman, Arie van Deursen, Marco Gerosa"
conference: "16th IEEE International Working Conference on Source Code Analysis and Manipulation (SCAM)"
categories: ["publication", "conference", "scam", "maintenance"]
year: 2016
doi: "10.1109/SCAM.2016.19"
image: "/assets/images/content/cartoon/publications-2016-01-01-satt-code-metric-thresholds.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora ajusta réguas coloridas de tamanhos diferentes para avaliar casas de software com arquiteturas diferentes."
---

A análise métrica de código é uma abordagem bem conhecida para avaliar a qualidade de um sistema de software. No entanto, as ferramentas e técnicas atuais não levam em consideração a arquitetura do sistema (por exemplo, MVC, Android). Isto significa que todas as turmas são avaliadas de forma semelhante, independentemente das suas responsabilidades específicas.

Neste artigo, propomos SATT (Software Architecture Tailored Thresholds), uma abordagem que detecta se uma função arquitetural é consideravelmente diferente de outras no sistema em termos de métricas de código, e fornece um limite específico para essa função. Avaliamos nossa abordagem em 2 arquiteturas diferentes (MVC e Android) em mais de 400 projetos. Também entrevistamos 6 especialistas para explicar por que algumas funções arquitetônicas são diferentes de outras.

Nossos resultados mostram que o SATT pode superar problemas que as abordagens tradicionais enfrentam, especialmente quando alguma função arquitetural apresenta valores métricos muito diferentes de outras.
