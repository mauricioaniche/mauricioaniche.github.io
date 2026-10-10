---
title: "An Exploratory Study on Faults in Web API Integration in a Large-Scale Payment Company"
download: "https://research.tudelft.nl/en/publications/an-exploratory-study-on-faults-in-web-api-integration-in-a-large-"
authors: "Joop Aué, Maurício Aniche, Maikel Lobbezoo, Arie van Deursen"
conference: "ICSE-SEIP '18: 40th International Conference on Software Engineering: Software Engineering in Practice Track"
doi: 10.1145/3183519.3183537
categories: ["publication", "conference", "icse", "monitoring", "api", "adyen", "selected-monitoring", "industry-collaboration"]
year: 2018
---

As arquiteturas orientadas a serviços são mais populares do que nunca e cada vez mais empresas e organizações dependem de serviços oferecidos por meio de APIs Web. Os recursos e a complexidade das APIs Web diferem de serviço para serviço e, portanto, o impacto dos erros da API varia. Descobriu-se que casos de problemas de API relacionados ao serviço de pagamento da Adyen tiveram um impacto direto considerável nos aplicativos de consumo de API. Com mais de 60.000 erros diários de API, o impacto potencial é enorme.

Em um esforço para reduzir o impacto dos problemas relacionados à API, analisamos 2,43 milhões de respostas de erro da API para identificar as falhas subjacentes. Quantificamos a ocorrência de falhas em termos de frequência e consumidores de API impactados. Também contestamos nossos resultados quantitativos por meio de uma pesquisa com 40 consumidores de API.

Nossos resultados mostram que 1) as falhas na integração da API podem ser agrupadas em 11 causas gerais: entrada de usuário inválida, entrada de usuário ausente, dados de solicitação expirados, dados de solicitação inválidos, dados de solicitação ausentes, permissões insuficientes, processamento duplo, configuração, dados de servidor ausentes, internos e de terceiros, 2) a maioria das falhas pode ser atribuída a dados de solicitação inválidos ou ausentes, e a maioria dos consumidores de API parece ser afetada por falhas causadas por dados de solicitação inválidos e integração de terceiros; e 3) orientação insuficiente sobre certos aspectos da integração e sobre como se recuperar de erros é um desafio importante para os desenvolvedores.

