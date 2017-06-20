---
id: 12
title: Como gerenciar a dependência entre entidades e repositórios?
date: 2009-09-26T12:26:00+00:00
author: mauricioaniche
layout: post
guid: /post/2009/09/26/Como-gerenciar-a-dependencia-entre-entidades-e-repositorios.aspx
permalink: /2009/09/como-gerenciar-a-dependencia-entre-entidades-e-repositorios/
categories:
  - Blog em Português
tags:
  - ddd
  - teste de software
---
Engraçado que esse é um assunto onde há sempre mais um &#8220;ponto&#8221; a acrescentar. Motivados pelo excelente [post da Caelum](http://blog.caelum.com.br/2007/06/09/repository-seu-modelo-mais-orientado-a-objeto/ "post da Caelum"){#xyw7} e [discussão do GUJ](http://www.guj.com.br/posts/list/60916.java "discussão do GUJ"){#wcnf} (onde ambos não são tão recentes assim), eu e o [Eduardo Amuri](http://www.linkedin.com/pub/eduardo-amuri-antunes/12/8a6/828 "Eduardo Amuri"){#lnsm} discutimos mais alguns pontos&#8230; Alguns deles podem já ter sido abordados nos links anteriores, mas vale a revisão.

Eu ia pular a questão inicial, mas vou revisar para que facilite o entendimento do resto do post para quem não leu os links acima. _Uma entidade pode conhecer/utilizar um repositório?_ Acho que a resposta é óbvia: Sim. Repositórios são conceitos de negócios, fazem parte do domínio, e por isso não há nada de errado em uma entidade conhecer um repositório. Não vou entrar no mérito de como o repositório deve ser implementado, não é o meu interesse no momento. Mas vamos lá&#8230; Ok, podemos ter entidades que **dependem** de um repositório, e o problema é: como gerenciar essa dependência?

A seguir, discutimos algumas abordagens para resolver esse problema e chegamos em algumas conclusões, das quais gostaria de compartilhar.

**Sugestão I:** _Receber o repositório pelo construtor_
  
A entidade deve possuir um construtor que receba a dependência.

**Vantagens:**

  * A dependência fica explícita, ou seja, não há como criar uma entidade sem entregar a dependência já resolvida.

**Problemas:**

  * Torna o código menos legível, afinal sempre que for instanciar uma entidade, deve-se injetar seu repositório.
  
    Ex: _Pessoa mauricio = new Pessoa ( repositorioDePessoas );_
  * Imagine uma entidade que depende de mais de um repositório (por quê não?). Imagine passar os diversos repositórios no construtor. Menos legível ainda&#8230;
  
    Ex: _Pessoa mauricio = new Pessoa ( repositorioDePessoas, repositorioDeXPTO, repositorioDeXYZ );_
  * Isso fica pior ainda quando definimos um construtor que receba algum atributo, por exemplo.
  * Ex: _Pessoa mauricio = new Pessoa ( &#8220;mauricio&#8221;, &#8220;aniche&#8221;, repositorioDePessoas, repositorioDeXPTO );_

**Testabilidade:**

  * É fácil injetar um mock no lugar da dependência, para facilitar o teste unitário da entidade.

**Sugestão II:** _Definir um setter para a dependência_
  
A entidade deve ter um método setDependencia() que receba a dependência.

**Vantagens:**

  * Elimina o problema de resolver a dependência no momento da criação do objeto.

**Problemas:**

  * Você precisa setar a dependência sempre que for utilizar, e isso pode ser um problema. Você precisará fazer todo o tempo algum tipo de validação no código da entidade para saber se a dependência já foi injetada ou não.
  
    Ex: _public List<XPTO> pegaXpto(int abc) { if(repositorio!=null) repositorio.pegaX(abc); }_

**Testabilidade:**

  * Também é fácil injetar um mock no lugar da dependência.

**Sugestão III:** _Utilizar o próprio repositório para injetar repositórios nas entidades
  
_ Conforme sugerido pelo Paulo Silveira e pelo Fabio Kung no post, sempre que um objeto for recuperado pelo seu repositório, o mesmo deve se &#8220;auto-injetar&#8221; antes de devolver o objeto.

**Vantagens:**

  * A complexidade do gerenciamento desse dependência fica escondida no código do repositório.
  * O código a ser implementado, de maneira geral, é simples.

**Problemas:
  
** 

  * Apesar de ser simples, deve ser replicado em todos os métodos do repositório. Se o método do repositório retornar uma lista, por exemplo, deve-se repetir o processo em todos os elementos dessa lista.
  * Apenas as entidades que são recuperadas pelo repositório recebem a dependência. Entidades criadas em qualquer outro ponto do projeto não recebem essa dependência de forma automática. Isso pode causar o problema levantado na sugestão II.
  * Caso a entidade mude e venha a depender de um outro repositório, você terá muito código para alterar.

**Testabilidade:**

  * Da mesma maneira que o repositório injeta a dependência (através de um _setter_), pode-se injetar um mock.

**Sugestão IV:** _Injetar o repositório por AOP
  
_ Uma idéia bastante interessante seria injetar a dependência por AOP. Dessa maneira não importaria como o bean é instanciado, seja ele feito pelo JPA_,_ Hibernate, etc, ou pelo programador. Essa foi uma sugestão levantada pelo Alessandro Lazarotti, [nesse post do GUJ](http://www.guj.com.br/posts/list/70275.java "nesse post do GUJ"){#rg1g}.

**Vantagens:**

  * O código fica bastante claro.

**Problemas:**

  * A implementação de um aspecto geralmente não é trivial.

**Testabilidade:**

  * Dependendo do modo que o aspecto for implementado, talvez não seja tão trivial injetar a dependência. Para facilitar, pode-se criar um _setter_ exclusivamente para isso, mas não é muito elegante.

**Sugestão V:** _Resolver a dependência dentro da própria entidade_
  
A idéia seria a própria entidade resolver a sua dependência. No caso, ela mesma invocaria o framework de DI, e recuperaria a instância da dependência. Pode-se até pensar em uma Factory para que a entidade não dependesse diretamente de uma implementação de framework de DI.

**Vantagens:**

  * Solução bastante simples.
  * Acaba com o problema da necessidade da entidade validar se a dependência foi injetada ou não, já que ela mesma vai resolver.

**Problemas:
  
** 

  * Não é muito elegante fazer com que a própria classe resolva suas dependências.

**Testabilidade:**

  * Como é a própria classe que resolve a dependência, você precisará de um setter para conseguir injetar um mock. Como dito acima, não é muito legal.

(*) Além do que foi citado acima, existe um outro problema, ortogonal ao das dependências, e diz respeito diretamente à implementação desse projeto em particular. Por estarmos discutindo uma aplicação web, o contexto do Spring está guardado dentro do contexto web. Para que um POJO qualquer recupere esse contexto, ele precisaria conhecer o _servletContext_. Ainda não encontrei uma maneira muito clara para resolver isso, mas minha sugestão é criar uma classe _singleton_ que conteria um atributo com uma instância de contexto do Spring, e essa instância seria injetada por um _filter_ ou um _listener_ qualquer, que subiria logo após ao listener do Spring. A partir daí, todas as classes de domínio fariam acesso à esse _singleton_ para capturar o contexto.

Portanto, é possível gerenciar essa dependência de diversas formas, todas elas com suas vantagens e desvantagens. E você, como faz?