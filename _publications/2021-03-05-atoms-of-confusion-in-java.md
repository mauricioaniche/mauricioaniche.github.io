---
title: "Atoms of Confusion in Java"
download: "https://arxiv.org/abs/2103.05424"
authors: "Chris Langhout, Maurício Aniche"
conference: "29th IEEE/ACM International Conference on Program Comprehension (ICPC)"
doi: "10.1109/ICPC52881.2021.00012"
videoen: "GhPqqFB3Qfw"
categories: ["publication", "icpc", "maintenance", "conference"]
posters: ["icse21"]
year: 2021
---

Embora escrever código às vezes pareça trivial, surgem problemas quando os humanos interpretam mal o que o código realmente faz. Uma das causas potenciais são os “átomos de confusão”, os menores padrões possíveis de código-fonte mal interpretado. Pesquisas anteriores investigaram o impacto dos átomos de confusão no código C. Os resultados mostram que os desenvolvedores cometem significativamente mais erros no código onde os átomos estão presentes.

Neste artigo, replicamos o trabalho de Gopstein et al. para a linguagem Java. Depois de derivar um conjunto de átomos de confusão para Java, realizamos um experimento de duas fases com 132 estudantes de ciência da computação (ou seja, desenvolvedores novatos).

Nossos resultados mostram que os participantes têm de 2,7 a 56 vezes mais probabilidade de cometer erros em trechos de código afetados por 7 dos 14 átomos de confusão estudados e, quando confrontados com ambas as versões dos trechos de código, os participantes perceberam a versão afetada pelo átomo de confusão como mais confusa e/ou menos legível em 10 dos 14 átomos de confusão estudados.
