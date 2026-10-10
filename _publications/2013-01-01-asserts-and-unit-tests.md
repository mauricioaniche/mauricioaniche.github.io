---
title: "What Do the Asserts in a Unit Test Tell Us about Code Quality? A Study on Open Source and Industrial Projects"
download: "https://figshare.com/articles/What_Do_the_Asserts_in_a_Unit_Test_Tell_Us_about_Code_Quality_A_Study_on_Open_Source_and_Industrial_Projects/9638942"
authors: "Maurício Aniche, Gustavo Oliva, Marco Gerosa"
conference: "17th European Conference on Software Maintenance and Reengineering (CSMR)"
categories: ["publication", "conference", "saner", "testing"]
year: 2013
doi: "10.1109/CSMR.2013.21"
---

Os testes de unidade e o código de produção estão intrinsecamente conectados. Uma classe fácil de testar geralmente apresenta características desejáveis, como baixo acoplamento e alta coesão. Assim, encontrar classes difíceis de testar pode ajudar os desenvolvedores a identificar códigos problemáticos. Muitos feedbacks de testes diferentes que alertam os desenvolvedores sobre códigos problemáticos já foram catalogados.

Neste artigo, argumentamos que a análise de instruções assert em testes unitários também ajuda na identificação e no raciocínio sobre trechos de código potencialmente problemáticos. Relatamos uma análise realizada com projetos de código aberto e industriais, relacionando instruções assert em um teste unitário com medidas de qualidade do código que está sendo testado. Observamos que quando um método de produção possui um teste unitário que utiliza a instrução “assert” em mais de uma instância de objeto, muitas vezes ele apresenta maior complexidade ciclomática, número de linhas de código ou maior número de invocações de método. Isso significa que os desenvolvedores devem monitorar o número de afirmações em um teste unitário, pois isso pode indicar problemas no código de produção.
