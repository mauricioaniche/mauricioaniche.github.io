---
id: 429
title: Dependência de cenários em testes de sistema
date: 2013-04-25T17:05:48+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=429
permalink: /2013/04/dependencia-de-cenarios-em-testes-de-sistema/
categories:
  - Blog em Português
tags:
  - page objects
  - selenium
  - system test
  - teste de aplicação web
  - teste de sistema
  - teste web
---
Dependência entre testes, sejam eles de unidade, integração ou sistema, são sempre complicadas. A pergunta era a seguinte:_ &#8220;Como fazer os testes de fluxos dependentes? Ex: O teste do incluir é independente, ou seja, não depende de um predecessor. Já o teste de consulta depende do incluir, o de alterar depende do incluir e consultar e o excluir depende do incluir e consultar. Nesses casos incluímos no BDD os passos dos predecessores ou assumimos que eles já existem e na codificação dos testes fazemos a criação da massa de dados no início de teste?&#8221;_

Não sei se há uma boa resposta pra isso. Vou listar abaixo as estratégias que já utilizei e o que achei de cada uma delas.

### 1) Ter dados já prontos no banco de dados

Uma primeira estratégia seria já ter dados prontos no banco de dados, e os testes somente fazerem uso dele. Assim, o teste de &#8220;listagem&#8221; já tem elementos ali para validar, e o teste de &#8220;exclusão&#8221; já tem um objeto para ser excluído.

Nesse caso, existe a necessidade de manter o banco de dados sempre em um estado válido para o teste. Você pode fazer com que todo teste limpe o banco de dados inteiro e re-insira os dados novamente, através de um .SQL que é enviado pro banco a cada teste executado, ou coisa do tipo. O problema é justamente manter esse &#8220;script inicial&#8221;: se ele for em SQL, e uma tabela mudar, você será obrigado a mexer direto no .SQL, e isso é trabalhoso; programaticamente é melhor.

Mesmo assim, existem diversos casos/caminhos diferentes a serem testados, e você deverá estar atento para que um teste não passe a quebrar por causa de um novo cenário escrito.

### 2) Montar o cenário completo em cada teste

Uma alternativa seria fazer com que o teste da listagem navegasse pela tela de inserção antes. Ou seja, seu teste inseriria primeiro o elemento, depois iria para a tela de listagem e verificaria que o ítem está lá; o teste da exclusão, adicionaria um ítem primeiro, para depois excluí-lo.

A vantagem é que é razoavelmente fácil montar o cenário, já que você vai passear pela própria aplicação. A desvantagem é que sua bateria de testes vai levar o triplo do tempo para ser executada, afinal agora o teste navegará por muito mais partes do seu teste.

Aqui você precisará ser mais carinhoso na escrita dos seus testes e Page Objects. Ou seja, no teste da inserção, faz sentido você ir passo-a-passo, setando campo a campo do formulário. Mas no teste da exclusão, você deve ter métodos auxiliares, como por exemplo um _insere(&#8220;campo&#8221;, &#8220;campo&#8221;, &#8220;campo&#8221;)_,  que escondam toda essa complexidade e faça toda a mágica de navegar pela interface. Dessa forma, fica mais fácil reutilizar o comportamento de &#8220;inserção&#8221; em testes que tem isso como pré-requisito.

### 3) Disponibilizar serviços web para criação de cenários

Uma outra alternativa é você criar conjuntos de URLs na aplicação que está sendo testada, que monte o cenário específico daquele teste. Dessa forma, você utilizaria as mesmas entidades, DAOs, Builders, e etc, para montar o cenário sem muito trabalho. Seu teste então faria uma requisição para essa URL específica, e depois navegaria pela aplicação.

Nesse caso, além de precisar ter acesso a aplicação original, você deve ser cuidadoso para que esse conjunto de URLs estejam disponíveis apenas no ambiente de testes. A evolução também é mais natural, já que na hora que o programador criar um novo atributo em uma entidade, ele precisará refletir isso nos DAOs e em todos lugares que usam aquela entidade, inclusive no teste.

Seu teste executará mais rápido do que no caso anterior, já que a parte &#8220;grossa&#8221; de montar o cenário será feita direto no servidor, sem a necessidade de se navegar pela web.

### Tem mais?

O que você acha? Enxerga mais alguma? Vantagens e desvantagens das estratégias que listei acima?

Esse post foi motivado pela mensagem no [grupo de discussão](https://groups.google.com/forum/?fromgroups#!forum/tdd-no-mundo-real) do [meu livro](http://www.tddnomundoreal.com.br). Você pode vê-la [aqui](https://groups.google.com/forum/?fromgroups=#!topic/tdd-no-mundo-real/xUW_R6K-Gb4).