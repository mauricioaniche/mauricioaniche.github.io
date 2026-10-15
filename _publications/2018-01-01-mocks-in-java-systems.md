---
title: "Mock objects for testing java systems: Why and how developers use them, and how they evolve"
download: "https://research.tudelft.nl/en/publications/mock-objects-for-testing-java-systems-why-and-how-developers-use-"
authors: "Davide Spadini, Maurício Aniche, Magiel Bruntink, Alberto Bacchelli"
conference: "Empirical Software Engineering (EMSE)"
doi: 10.1007/s10664-018-9663-0
categories: ["publication", "journal", "emse", "maintenance", "testing",
 "selected-testing"]
year: 2018
image: "/assets/images/content/cartoon/publications-2018-01-01-mocks-in-java-systems.jpg"
image_alt: "Ilustração cartoon: uma equipe de pesquisadores acompanha a evolução de pequenos substitutos de peças de software organizados em uma linha do tempo visual sem números."
---

Ao testar artefatos de software que possuem diversas dependências, tem-se a possibilidade de instanciar essas dependências ou usar objetos simulados para simular o comportamento esperado das dependências. Embora estudos quantitativos recentes tenham mostrado que objetos simulados são amplamente utilizados tanto em projetos de código aberto quanto em projetos proprietários, ainda falta conhecimento científico sobre como e por que os profissionais usam simulações. Uma compreensão empírica das situações em que os desenvolvedores aplicaram (ou não) simulações, bem como o impacto de tais decisões em termos de acoplamento e evolução do software, pode ser usada para ajudar os profissionais a se adaptarem e melhorarem seu uso futuro.

Para tanto, estudamos o uso de objetos simulados em três projetos de OSS e um sistema industrial. Mais especificamente, analisamos manualmente mais de 2.000 usos simulados. Em seguida, discutimos nossas descobertas com os desenvolvedores desses sistemas e identificamos práticas, justificativas e desafios. Esses resultados são respaldados por uma pesquisa estruturada com mais de 100 profissionais. Por fim, analisamos manualmente como o uso de objetos simulados no código de teste evolui ao longo do tempo, bem como o impacto de seu uso no acoplamento entre o código de teste e o código de produção.

Nosso estudo revela que o uso de mocks é altamente dependente da responsabilidade e da preocupação arquitetônica da classe. Os desenvolvedores relatam frequentemente simulações de dependências que dificultam os testes (por exemplo, dependências relacionadas à infraestrutura) e não simulam classes que encapsulam conceitos/regras de domínio do sistema. Entre os principais desafios, os desenvolvedores relatam que é difícil manter o comportamento da simulação compatível com o comportamento da classe original e que a simulação aumenta o acoplamento entre o teste e o código de produção. Suas percepções são confirmadas por nossos dados, pois observamos que os mocks existem principalmente desde a primeira versão da classe de teste, e que tendem a permanecer lá durante toda a sua vida útil, e que mudanças no código de produção muitas vezes forçam o código de teste a também mudar.
