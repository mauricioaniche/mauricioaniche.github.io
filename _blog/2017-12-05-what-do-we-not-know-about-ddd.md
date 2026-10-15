---
title: "O que sabemos (e o que não sabemos) sobre Domain-Driven Design?"
layout: post
image: "/assets/images/content/cartoon/blog-2017-12-05-what-do-we-not-know-about-ddd.jpg"
category: Engenharia
description: "Uma análise das dúvidas de desenvolvedores sobre DDD: padrões, implementação e a distância entre design tático e estratégico."
image_alt: "Ilustração cartoon: uma arquiteta desenha bairros de uma cidade de brinquedo, separando domínios com pontes e praças."
---


Em 2004, Evans escreveu o belo "Design orientado a domínio: combatendo
complexidade no coração do software". Em poucas palavras, Evans mostra que a verdadeira complexidade do sistema (seu coração) muitas vezes depende do seu modelo de domínio. O livro apresenta então vários padrões para apoiar a modelagem de modelos de domínio. Eu mesmo considero este livro obrigatório para Engenheiros de Software.


Influenciado pelo estilo de estampa de Christopher Alexander, o livro contém um total de 43 estampas divididas em quatro partes. O livro rapidamente atraiu a atenção dos profissionais: diferentes autores começaram a escrever seus próprios livros sobre DDD, Stack Overflow contém mais de 4.000 perguntas e 7.000 respostas relacionadas ao tema (em 27 de janeiro de 2017), os desenvolvedores trocaram 24.000 e-mails na mailing list oficial que está hospedada no Yahoo Groups!, e existem até conferências dedicadas ao tema, como DDDEurope.

O elevado número de perguntas e discussões faz sentido. Afinal, se você já tentou implementar DDD, provavelmente enfrentou desafios, que vão desde “como modelar X” até “como implementar isso na prática ao usar o Hibernate”.

![Padrões no livro DDD]({{ site.url }}/assets/blog/ddd/i1.png)*Padrões no livro DDD*

Então, por que não investigar o que os desenvolvedores estão realmente perguntando sobre DDD em sites como Stack Overflow e Yahoo! Grupos? *Quais são os padrões DDD mais discutidos? Que tipo de perguntas os desenvolvedores fazem? Com que frequência uma discussão se torna técnica (ou seja, contém código-fonte)? Quais são as referências mais comumente citadas nessas discussões? Como os tópicos se correlacionam entre si?*

No Stack Overflow (SO), extraímos todas as questões da tag #ddd. A amostra contém 4.076 questões, sendo a primeira postada em 24 de agosto de 2008 e a última postada em 27 de janeiro de 2017. Essas questões juntas receberam 7.799 respostas. O número de questões varia de 381 questões (em 2009) a 593 (em 2011). Vemos um aumento no número de questões após 2010 que permaneceu semelhante até 2015. Em 2016, observamos uma pequena queda. Da mesma forma, o número de respostas varia de 720 (em 2016) a 1.176 (em 2011). Cada pergunta recebe uma mediana de 2 respostas. Essas postagens foram feitas por 2.176 usuários diferentes. O número médio de postagens feitas por um usuário é 1 (máx. = 26).

Nós raspamos o Yahoo! Página Grupos (YG), pois não há API para extrair as discussões. Se o título da mensagem não contivesse "RE:", marcamos como pergunta ou como resposta, caso contrário. Realizamos algumas limpezas de texto para remover assinaturas, corpos repetidos (os clientes de e-mail geralmente anexam o e-mail anterior abaixo do novo e-mail) e anúncios que o Yahoo! às vezes adiciona e-mails. A amostra contém 5.091 e-mails e 19.514 respostas. O primeiro e-mail foi postado em 6 de setembro de 2001. Cada e-mail recebe em média 5 respostas. Os e-mails foram enviados por 1.765 usuários diferentes. A lista teve pico de e-mails e respostas em 2009, com 1.689 e-mails e 5.693 respostas. O número de e-mails caiu drasticamente em 2014 (48), 2015 (33) e 2016 (18).

![Perguntas e respostas ao longo do tempo no StackOverflow (à esquerda) e no Yahoo! Grupos (à direita)]({{ site.url }}/assets/blog/ddd/i2.png)*Perguntas e respostas ao longo do tempo no StackOverflow (à esquerda) e no Yahoo! Grupos (à direita)*

**Quais são os padrões de design orientados a domínio mais discutidos?**

* **Os padrões na Parte II são muito mais populares do que outras partes do livro.** Três desses padrões (*Entidade*, *Serviço* e*Repositório*) aparecem em mais de 1.000 perguntas no Stack Overflow e no YG. *Agregados* também são populares em ambos (1.041 perguntas no SO e 936 no YG). As *Entidades*, em particular, são as mais populares, aparecendo em 1.841 perguntas (45% de todas as perguntas) e 2.539 respostas (32% de todas as respostas) no SO, e em 1.351 perguntas (27%) e 3.934 (20%) na YG. Nenhuma outra parte do livro contém padrões tão populares. Por outro lado, a Parte IV é a menos popular, pois a maioria dos padrões contém zero ou menos de 10 questões. *Bounded Context *é uma exceção em ambos os conjuntos de dados, aparecendo em 231 perguntas e em 451 respostas no SO, e em 196 e-mails iniciais e 621 respostas no YG.

* **Existem questões que não se concentram em nenhum padrão.** Embora, como esperado, a maioria das questões se concentre nos padrões definidos no livro, algumas delas não o fazem. No SO, 18% deles não mencionam nenhum deles. Esse número é maior na GJ: 41%.

![Número de perguntas e respostas mencionando padrões DDD. T=Total de perguntas/respostas, C=Perguntas/respostas com código-fonte, L=Perguntas/respostas com links.]({{ site.url }}/assets/blog/ddd/i3.png)*Número de perguntas e respostas mencionando padrões DDD. T=Total de perguntas/respostas, C=Perguntas/respostas com código fonte, L=Perguntas/respostas com links.*

![Número de e-mails e respostas mencionando padrões DDD no Yahoo! Grupos. T=Total de perguntas/respostas, C=Perguntas/respostas com código fonte, L=Perguntas/respostas com links.]({{ site.url }}/assets/blog/ddd/i4.png)*Número de e-mails e respostas mencionando padrões DDD no Yahoo! Grupos. T=Total de perguntas/respostas, C=Perguntas/respostas com código fonte, L=Perguntas/respostas com links.*

**Que tipo de perguntas os desenvolvedores fazem?**

Contamos o número de “o que”, “como” e “por que” que apareciam no título de todas as postagens. As perguntas no SO pareciam seguir melhor esta convenção do que as postagens no YG.

* **"Como" é o tipo de pergunta mais popular.** No SO, observamos 1.064 perguntas *como*, 222 perguntas *o quê* e 50 perguntas *por que*. Na YG, contamos 329 perguntas do tipo *como*, 110 perguntas do tipo *o quê* e 15 perguntas do tipo *por que*.

* **A entidade é de longe a que tem mais perguntas do tipo "como".** A *Entidade* recebeu 301 perguntas do tipo "como" no SO. É seguido por *Repositórios *(199), *Agregados* (187) e *Serviços* (185). Em outras partes do livro, *Bounded Context* (34) é o mais popular, embora longe dos mencionados acima.

![Tipos de perguntas (o quê, por que, como) em SO e YG]({{ site.url }}/assets/blog/ddd/i5.png)*Tipos de perguntas (o quê, por que, como) em SO e YG*

**Com que frequência uma discussão se torna técnica (ou seja, contém código-fonte)?**

* **O número de perguntas e respostas com detalhes de implementação é
significativo.** Um número significativo de perguntas e respostas contém trechos de código-fonte. Os padrões da Parte II são aqueles com mais código-fonte. Embora isso esteja relacionado ao fato de a Parte II ser a mais popular no SO, alguns padrões
contêm uma alta frequência de detalhes de implementação em suas perguntas e respostas. O padrão *Especificação*, por exemplo, contém código-fonte em 65% de suas perguntas e em 51% de suas respostas. Números semelhantes acontecem em muitos outros padrões.

* **Perguntas e respostas no SO têm maior probabilidade de ter código-fonte
do que e-mails no YG.** No SO, observamos 1.985 e 2.091 questões com e sem código-fonte, respectivamente. Na YG, esses números caem para 546 e 4.545. Portanto, uma pergunta SO tem 8,76 vezes (intervalo de confiança de 95%: 7,8714 - 9,7683, Qui-Quadrado = <0,0001) mais probabilidade de conter um código-fonte do que um e-mail inicial em YG. Observamos uma probabilidade semelhante nas respostas: Embora
SO contém 2.965 e 4.834 respostas com e sem código-fonte, YG contém 1.344 e 18.170. Isso significa que uma resposta em SO tem 8,29 vezes (intervalo de confiança de 95%: 7,7175 - 8,9099, Qui-Quadrado = <0,0001) mais probabilidade de conter um código-fonte do que uma resposta em YG.

**Quais são as referências mais comuns nas discussões?**

* **É comum encontrar links em perguntas e respostas.** Curiosamente, a presença de links é quase tão frequente quanto o código-fonte. Em alguns padrões, o número de links é ainda maior: *Bounded Context *contém links em 164 respostas SO (enquanto 113 com código fonte), *Mapa de Contexto *contém links em 13 respostas (e apenas 3 com código fonte), e *Linguagem Ubíqua* (109 contra 106). Observamos padrões semelhantes também no conjunto de dados YG. Curiosamente, isso acontece apenas nas respostas; o número de links nunca é maior que o número de códigos-fonte em questão.

* **Os desenvolvedores referem um total de 1.770 links diferentes.** Os usuários do SO citaram um total de 956 links diferentes, enquanto o YG citou um total de 997. Há uma interseção de 183 links entre os dois conjuntos de dados.

* **StackOverflow e o blog de Martin Fowler são as referências mais populares.** No SO, os usuários costumam consultar outros links do SO. Na YG, o wiki de Martin Fowler é a referência mais citada. O wiki de Fowler também é popular no SO, com um total de 432 citações. Outras referências comuns para ambos os conjuntos de dados são domaindrivendesign.org (o site oficial do DDD), Wikipedia e o blog pessoal de Udi Dahan.

* **Perguntas e respostas no SO têm maior probabilidade de conter links do que e-mails no YG.** Existem 744 e 3.332 perguntas com e sem links no SO. Os mesmos números para YG são 721 e 4.370. Assim, as perguntas no SO têm 1,35 vezes (intervalo de confiança de 95%: 1,21 - 1,51, Qui-Quadrado = <0,0001) mais probabilidade de conter um link do que o YG. Além disso, o SO possui 2.679 e 5.120 respostas com e sem links. Os números YG são 2.321 e 17.193. Portanto, as respostas no SO têm 3,87 vezes (intervalo de confiança de 95%: 3,63 - 4,13) mais probabilidade de conter uma ligação do que uma resposta no YG.

![Referências comuns em postagens DDD.]({{ site.url }}/assets/blog/ddd/i6.png)*Referências comuns em postagens DDD.*

**Os tópicos estão correlacionados entre si?**

Aplicamos o algoritmo *Apriori*, uma abordagem tradicional de mineração de regras de associação. Depois de decidir o suporte e a confiança mínimos, o algoritmo calcula o conjunto de todas as regras que estão acima desses limites.

O algoritmo foi capaz de gerar 2.432 regras de associação. A seguir, listamos as 10 principais regras ordenadas por *lift*.

![10 principais regras de associação para Stack Overflow e Yahoo! Grupos.]({{ site.url }}/assets/blog/ddd/i7.png)*As 10 principais regras de associação para Stack Overflow e Yahoo! Grupos.*

* **Os padrões da Parte II estão fortemente conectados entre si.** O padrão *Entity* acontece frequentemente com *Value Object*, *Repository* e *Aggregate*. Além disso, *Factory* está associado a *Repository*. Por outro lado, alguns deles tendem a não aparecer juntos: *Objetos de valor*, *Agregados* e *Entidades* não são frequentemente encontrados juntos com *Serviços*.

* **Os padrões de outras partes do livro estão desconectados da Parte II.** Padrões como *Linguagem Ubíqua*, *Bounded Context* e *Arquitetura em Camadas* não acontecem juntos com os padrões da Parte II. Na verdade, observamos muitas regras *A => !B*, sendo A esses padrões, sugerindo que eles tendem a acontecer sozinhos.

Esperamos que estes dados esclareçam os aspectos importantes, mas ainda não claros, da prática. Algumas conclusões baseadas nos resultados:

* Padrões DDD populares em perguntas Stack Overflow e as discussões no Yahoo! Groups podem ser uma indicação de quais padrões requerem mais atenção durante o treinamento e implementação, pois são provavelmente mais complicados de serem implementados na prática. Por outro lado, padrões menos populares podem indicar que ou não são comumente aplicados (e, portanto, os profissionais não têm dúvidas sobre eles) ou que a implementação de tais padrões não é simples e deveríamos dedicar mais tempo para esclarecê-los.

* É interessante ver que a Parte II do livro é de longe a mais popular tanto no SO quanto no YG. Curiosamente, esta é a parte mais técnica (como no código-fonte) do livro. Talvez SO e YG não sejam bons meios para discutir outros tópicos? Ou os desenvolvedores pensam que DDD é apenas sobre Building Blocks e esquecem toda a discussão sobre design estratégico? Na palestra [“O que aprendi sobre DDD desde o livro”](http://dddcommunity.org/library/evans_2009_2/), Evans diz que os desenvolvedores dão muita atenção aos blocos de construção e menos atenção a outras partes.

* Embora a análise do tipo pergunta tenha sido simplista (correspondência de palavras-chave no título do post), o número de perguntas “por que” é menor tanto no SO quanto no YG quando comparado às demais palavras-chave. Por outro lado, "Por que" são comuns em livros sobre o assunto, como os de Evans e Vernon. Novamente, uma explicação para tal fenômeno poderia ser 1) que SO e YG não são o melhor lugar para tais discussões, ou 2) porque os "porquês" já estão claros para os desenvolvedores, ou 3) os desenvolvedores estão trabalhando em um modelo de domínio existente e suas questões agora se concentram em como implementar as coisas, em vez de entender por que essas decisões foram tomadas.

* Observamos diversas dúvidas sobre como aplicar padrões usando uma determinada tecnologia, por exemplo, *como fazer Aggregate Roots funcionar com NHibernate*. Talvez devêssemos gastar mais tempo documentando como aplicar DDD em diferentes tecnologias. O número de perguntas do tipo “como” também pode ser um bom indicador dessa necessidade.

* Na palestra mencionada, Evans também fala sobre acréscimos que faria ao livro agora, como Eventos de Domínio. Podemos encontrar outras adições (ou mesmo remoções) importantes ao DDD em nosso conjunto de dados SO e YG? Este é um bom trabalho futuro. Você quer ajudar nisso? Um primeiro passo seria ler todas as questões do SO e classificar manualmente seu conteúdo. Talvez com o poder das pessoas, possamos fazer isso. Então, [vá para esta planilha](https://docs.google.com/spreadsheets/d/1fFaFO4o74QDzZvynpeWQPtwrQEQ9ogwyvEtfWjba-uw/edit?usp=sharing), escolha um post (ou dois), leia e escreva do que se trata na planilha!

* Não é novidade que a página de Martin Fowler é uma referência popular para vincular as pessoas a artigos bem explicados sobre DDD. Curiosamente, o número de links Github/Gist também é alto, indicando que as pessoas comumente compartilham código-fonte e exemplos. Talvez seja hora de uma ligação melhor entre o livro + artigos de Fowler + exemplos de código?

* O algoritmo *Apriori* identificou vários padrões que tendem a não acontecer com outros. Uma possível explicação para isso seria que é natural tentar isolar ao máximo a conversa ao fazer perguntas. No entanto, dois deles têm associações fortes: *Entidade* e *Objetos de Valor*, e *Fábrica* e *Repositórios*. Talvez mais material sobre os dois tópicos juntos ajudasse os desenvolvedores a entender seu relacionamento.

*Agradeço a Christoph Treude (Universidade de Adelaide), Arie van Deursen (Delft University of Technology), Mario Amaral, Veranildo Veras, Pedro Pessoa e Mozair Carmo pelos seus insights.*
