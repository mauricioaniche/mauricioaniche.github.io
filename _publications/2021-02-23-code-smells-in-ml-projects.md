---
title: "The Prevalence of Code Smells in Machine Learning projects"
download: "https://arxiv.org/abs/2103.04146"
authors: "Bart van Oort, Luís Cruz, Maurício Aniche, Arie van Deursen"
conference: "1st Workshop on AI Engineering – Software Engineering for AI – WAIN'21"
doi: "10.1109/WAIN52551.2021.00011"
categories: ["publication", "maintenance", "wain", "workshop"]
year: 2021
videoen: "TbgawiiYwJQ"
bottom: true
posters: ["icse21"]
---

A Inteligência Artificial (IA) e o Aprendizado de Máquina (ML) estão difundidos no cenário atual da ciência da computação. No entanto, ainda existe uma falta de experiência em engenharia de software e de melhores práticas neste campo. Uma dessas práticas recomendadas, a análise estática de código, pode ser usada para encontrar code smells, ou seja, defeitos (potenciais) no código-fonte, oportunidades de refatoração e violações de padrões de codificação comuns.

Nossa pesquisa teve como objetivo descobrir os code smells mais comuns em projetos de ML. Reunimos um conjunto de dados de 74 projetos de ML de código aberto, instalamos suas dependências e executamos o Pylint neles. Isso resultou em um top 20 de todos os code smells detectados, por categoria. A análise manual desses code smells mostrou principalmente que a duplicação de código é generalizada e que a convenção PEP8 para estilo de nomenclatura de identificador pode nem sempre ser aplicável ao código ML devido à sua semelhança com a notação matemática. O mais interessante, porém, é que encontramos várias obstruções importantes à manutenibilidade e reprodutibilidade de projetos de ML, principalmente relacionadas ao gerenciamento de dependências de projetos Python. Também descobrimos que o Pylint não pode verificar de forma confiável o uso correto de dependências importadas, incluindo bibliotecas de ML importantes, como PyTorch.
