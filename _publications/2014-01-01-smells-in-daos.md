---
title: "Are the Methods in Your Data Access Objects (DAOs) in the Right Place? A Preliminary Study"
download: "https://figshare.com/articles/Are_the_Methods_in_Your_Data_Access_Objects_DAOs_in_the_Right_Place_A_Preliminary_Study/11032967"
authors: "Maurício Aniche, Gustavo Oliva, Marco Aurélio Gerosa"
conference: "6th International Workshop on Managing Technical Debt (MTD)"
categories: ["publication", "workshop", "maintenance"]
year: 2014
image: "/assets/images/content/cartoon/publications-2014-01-01-smells-in-daos.jpg"
image_alt: "Ilustração cartoon: uma pesquisadora reorganiza gavetas de dados e ferramentas de negócio que foram misturadas numa oficina, colocando cada peça no lugar correto."
---

Isolar o código que trata da infraestrutura do sistema do código que trata das regras de domínio é uma boa prática ao desenvolver aplicativos. O código que lida com o banco de dados, por exemplo, costuma ser isolado em classes que seguem um padrão Data Access Object (DAO). Os desenvolvedores geralmente criam um DAO para cada entidade de domínio no sistema. No entanto, como alguns trechos de código lidam com mais de uma entidade/tabela, os desenvolvedores precisam decidir em qual DAO colocarão o código e, às vezes, escolher um local menos intuitivo. Neste artigo, apresentamos uma heurística para identificar métodos que podem ter sido escritos em um local ambíguo. Para validar a ideia, testamos em três projetos industriais de uma empresa brasileira. A heurística selecionou, em média, 13% a 18% dos métodos em DAOs. Após avaliar tais métodos, concluímos que a heurística estava correta em 50% a 75% dos casos. Portanto, acreditamos que a heurística pode indicar possível dívida técnica, onde os desenvolvedores poderão inspecionar e possivelmente refatorar.
