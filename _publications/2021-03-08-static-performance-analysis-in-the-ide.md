---
title: "Interactive Static Software Performance Analysis in the IDE"
download: "https://arxiv.org/abs/2105.02023"
authors: "Aaron Beigelbeck, Maurício Aniche, Jürgen Cito"
conference: "29th IEEE/ACM International Conference on Program Comprehension (ICPC)"
doi: "10.1109/ICPC52881.2021.00057"
categories: ["publication", "icpc", "monitoring", "short-paper", "conference"]
posters: ["icse21"]
bottom: true
videoen: "-GqPb_YZMOs"
year: 2021
image: "/assets/images/content/cartoon/publications-2021-03-08-static-performance-analysis-in-the-ide.jpg"
image_alt: "Ilustração cartoon: uma desenvolvedora detecta uma engrenagem lenta numa maquete antes de ligá-la, usando um instrumento de análise em sua bancada."
---

Detectar problemas de desempenho devido a código abaixo do ideal durante o processo de desenvolvimento pode ser uma tarefa difícil, especialmente quando se trata de localizá-los após perceber a degradação do desempenho após a implantação. A análise estática tem o potencial de fornecer feedback antecipado sobre problemas de desempenho aos desenvolvedores, sem a necessidade de executar criadores de perfil com testes de desempenho caros (e muitas vezes indisponíveis).

Desenvolvemos uma ferramenta VSCode que integra os resultados da análise de desempenho estático do Infer por meio de anotações e decorações de código (revelando os resultados da análise de complexidade no contexto) e visualizações de painel lateral mostrando detalhes e visões gerais (permitindo a explicabilidade dos resultados). Além disso, projetamos nosso sistema para interatividade para permitir maior capacidade de resposta às alterações de código à medida que elas acontecem. Avaliamos a eficácia de nossa ferramenta medindo a sobrecarga que a integração da análise estática de desempenho introduz no fluxo de trabalho de desenvolvimento.

Além disso, relatamos um estudo de caso que ilustra como nosso sistema pode ser usado para raciocinar sobre o desempenho do software no contexto de um bug de desempenho real no projeto de código aberto ElasticSearch.

* Vídeo de demonstração: https://www.youtube.com/watch?v=-GqPb_YZMOs
* Repositório: https://github.com/ipa-lab/vscode-infer-performance
