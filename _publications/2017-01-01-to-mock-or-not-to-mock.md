---
title: "To Mock or Not To Mock? An Empirical Study on Mocking Practices"
download: "https://research.tudelft.nl/en/publications/to-mock-or-not-to-mock-an-empirical-study-on-mocking-practices"
authors: "Davide Spadini, Maurício Aniche, Magiel Bruntink, Alberto Bacchelli"
conference: "IEEE 14h International Conference on Mining Software Repositories (MSR)"
categories: ["publication", "conference", "msr", "testing"]
year: 2017
doi: 10.1109/MSR.2017.61
image: "/assets/images/content/cartoon/publications-2017-01-01-to-mock-or-not-to-mock.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora compara usar um pequeno motor real ou um substituto de brinquedo ao testar uma construção numa bancada."
---

Ao escrever testes de unidade automatizados, os desenvolvedores geralmente lidam com artefatos de software que possuem diversas dependências. Nestes casos, tem-se a possibilidade de instanciar as dependências ou utilizar objetos simulados para simular o comportamento esperado das dependências. Embora estudos quantitativos recentes tenham mostrado que objetos simulados são amplamente utilizados em projetos de OSS, ainda falta conhecimento científico sobre como e por que os profissionais usam simulações. Tal conhecimento é fundamental para orientar futuras pesquisas sobre esta prática generalizada e informar a concepção de ferramentas e processos para melhorá-la. O objetivo deste artigo é aumentar nossa compreensão sobre quais dependências de teste os desenvolvedores (não) zombam e por quê, bem como quais desafios os desenvolvedores enfrentam com essa prática.

Para tanto, criamos o MockExtractor, uma ferramenta para explorar o uso de objetos simulados em testes de código e a empregamos para coletar dados de três projetos OSS e um sistema industrial. A partir desses dados, analisamos manualmente como mais de 2.000 dependências de teste são tratadas. Posteriormente, discutimos nossas descobertas com os desenvolvedores desses sistemas, identificando práticas, justificativas e desafios. Esses resultados são respaldados por uma pesquisa estruturada com mais de 100 profissionais.

O estudo revela que a utilização de mocks é altamente dependente da responsabilidade e da preocupação arquitetônica da classe. Os desenvolvedores relatam frequentemente dependências simuladas que dificultam os testes e preferem não simular classes que encapsulam conceitos/regras de domínio do sistema. Entre os principais desafios, os desenvolvedores relatam que é difícil manter o comportamento da simulação compatível com o comportamento da classe original e que a simulação aumenta o acoplamento entre o teste e o código de produção.
