---
title: "Automatically Identifying Parameter Constraints in Complex Web APIs: A Case Study at Adyen"
download: "https://arxiv.org/abs/2102.00871"
authors: "Henk Grent, Aleksei Akimov, Maurício Aniche"
conference: "IEEE/ACM 43rd International Conference on Software Engineering: Software Engineering in Practice (ICSE-SEIP)"
doi: "10.1109/ICSE-SEIP52600.2021.00016"
videoen: "UMhDNtKVYdk"
categories: ["publication", "maintenance", "icse", "conference", "industry-collaboration", "adyen"]
posters: ["icse21"]
year: 2021
image: "/assets/images/content/cartoon/publications-2021-02-01-parameter-constraint-identification.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora encontra combinações de chaves e formas que abrem diferentes portas de uma central de APIs."
---

As APIs da Web podem ter restrições de parâmetros, de modo que nem todos os parâmetros são sempre obrigatórios ou sempre opcionais. Além disso, a presença ou o valor de um parâmetro pode fazer com que outro parâmetro seja exigido, ou os parâmetros podem ter restrições sobre quais tipos de valores são válidos. Ter uma visão clara das restrições ajuda os consumidores de API a se integrarem sem a necessidade de suporte adicional e com menos falhas de integração. Utilizamos documentação existente e abordagens de análise de código para identificar restrições de parâmetros em APIs da web complexas.

Neste artigo, relatamos nosso estudo de caso de diversas APIs na Adyen, uma empresa de pagamentos em grande escala que oferece APIs Web complexas a seus clientes. Nossos resultados mostram que a abordagem baseada em documentação e código pode identificar 23% e 53% das restrições respectivamente e, quando combinadas, 68% delas. Refletimos também sobre os desafios atuais que estas abordagens enfrentam. Em particular, a ausência de informação que descreva explicitamente as restrições na documentação (na análise da documentação), e a engenharia de um analisador de código estático sólido que seja sensível ao fluxo de dados, mantenha referências de parâmetros mais longas em todo o código da API, e que seja capaz de executar simbolicamente as diversas bibliotecas e frameworks utilizados pela API (na análise estática).
