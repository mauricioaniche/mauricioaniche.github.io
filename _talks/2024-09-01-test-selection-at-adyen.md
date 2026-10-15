---
title: "Seleção de testes na Adyen"
layout: content-detail
categories: ["talk"]
description: "Como implementamos a seleção de testes na Adyen para reduzir execuções desnecessárias e acelerar os pipelines."
image: "/assets/images/content/cartoon/talks-2024-09-01-test-selection-at-adyen.jpg"
image_alt: "Ilustração cartoon: uma palestrante usa uma peneira inteligente para escolher só os carrinhos de teste necessários antes de liberar uma ponte de entrega."
---

Se você trabalha em um sistema de software de grande escala, é provável que uma parte significativa de sua construção seja destinada à execução de testes. Muitas vezes acontece que você altera uma linha de código, mas executa milhares de testes, mesmo que a maioria desses testes nem chegue perto dessa linha de código. Isso acontece porque as ferramentas de construção não sabem muito sobre o que seus testes realmente cobrem e porque são bastante conservadoras. A seleção de testes é um problema no qual os pesquisadores de engenharia de software vêm trabalhando há décadas. Nesta palestra, descreverei todos os detalhes técnicos de como implementamos nosso próprio algoritmo de seleção de testes na Adyen. Os benefícios foram significativos: redução de 30x na execução de casos de teste, redução de 12x no tempo de CPU e pipelines 10% a 30% mais rápidos.

Esta palestra é baseada em nossa postagem no blog [Seleção de teste na Adyen: economizando tempo e recursos](https://www.adyen.com/knowledge-hub/test-selection-at-adyen).

## Apresentações

<embed src="/assets/pdf/test-selection-at-adyen.pdf" type="application/pdf" width="100%" height="600px" />
