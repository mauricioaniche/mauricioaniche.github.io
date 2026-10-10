---
title: "Testar é diferente de escrever testes"
layout: post
image: /assets/images/blog/testing.svg
category: Engenharia
description: "Escrever testes dá confiança para desenvolver. Testar de verdade exige explorar limites, exceções e cenários que revelam bugs."
---

_Testar é diferente de escrever testes. Desenvolvedores escrevem testes para ter espaço para pensar e confiança para refatorar. Testar tem como foco encontrar bugs. As duas práticas são necessárias._

Chegamos a um ponto em que os desenvolvedores *sabem* que precisam escrever testes automatizados. Afinal, ideias como [Extreme Programming](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0321278658) e [Test-Driven Development](https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530/ref=pd_lpo_sbs_14_t_1?_encoding=UTF8&psc=1&refRID=WE962S6TKV1QRTYEN1WT), de Kent Beck, Michael Feathers sobre [sinergia entre teste e design](https://vimeo.com/15007792), Steve Freeman e Nat Pryce sobre [como desenvolver um software orientado a objetos guiado por testes](https://www.amazon.de/Growing-Object-Oriented-Software-Addison-Wesley-Signature/dp/0321503627), DHH e Ruby on Rails ao [garantir que um framework web venha com um framework de testes](http://guides.rubyonrails.org/testing.html), entre outras, se consolidaram.

Essas ideias também ficaram comigo. Tenho tentado escrever o máximo possível de testes automatizados para os sistemas de software em que trabalho desde 2007 (posso contar a história de quão traumático foi meu projeto de 2006 em uma postagem posterior). Fiquei tão entusiasmado com o Desenvolvimento Orientado a Testes que até fiz dele o tópico da minha [tese de mestrado](https://journal-bcs.springeropen.com/articles/10.1186/s13173-015-0034-z). Em 2012, achei que tinha experiência suficiente com o tópico, então decidi escrever um [livro sobre como eu estava praticando TDD](https://www.casadocodigo.com.br/products/livro-tdd), bem como um [livro sobre os fundamentos de ferramentas como JUnit e Selenium](https://www.casadocodigo.com.br/products/livro-testes-de-software) (infelizmente, disponível apenas em português brasileiro).

Depois de muitos anos de programação em pares, vejo desenvolvedores usando código de teste automatizado como uma espécie de *rede de suporte*. Os testes ajudam a pensar com clareza sobre o que implementar e dão suporte às inúmeras refatorações que acontecem durante o desenvolvimento.

Na verdade, pesquisas mostraram algumas vezes que fazer TDD pode melhorar o design de sua classe (veja [Janzen](http://digitalcommons.calpoly.edu/cgi/viewcontent.cgi?article=1039&context=csse_fac), [Janzen e Saiedian](http://digitalcommons.calpoly.edu/cgi/viewcontent.cgi?article=1030&context=csse_fac), [George e Williams](https://www.semanticscholar.org/paper/An-Initial-Investigation-of-Test-Driven-Development-George-Williams/66869075d20858a2e9af144b2749a055c6b03177), [Langr](http://eisc.univalle.edu.co/materias/TPS/archivos/articulosPruebas/test_first_design.pdf), [Dogsa e Batic](https://link.springer.com/article/10.1007/s11219-011-9130-2), [Munir, Moyaaed e Petersen](https://pdfs.semanticscholar.org/16d4/2a1eaefb1f404f6da91b12d6c0e710dacb9d.pdf), [eu](https://journal-bcs.springeropen.com/articles/10.1186/s13173-015-0034-z), entre outros). Recentemente, [Fucci et al.](https://arxiv.org/pdf/1611.05994.pdf) argumentaram que a parte importante é escrever testes (e não importa se é antes ou depois). Essa também é a percepção dos profissionais, como mostra uma [postagem recente no blog de Feathers](http://michaelfeathers.typepad.com/michael_feathers_blog/2008/06/the-flawed-theo.html): *"Essa é a mágica, e é por isso que os testes unitários também funcionam. Quando você escreve testes unitários, no estilo TDD ou após o desenvolvimento, você examina, pensa e muitas vezes evita problemas sem sequer encontrar uma falha no teste."*

Escrever testes automatizados é, portanto, algo a ser recomendado.

Pragmaticamente falando, sinto que, ao usar código de teste como forma de fortalecer a confiança, *testes do caminho feliz são muitas vezes suficientes*. E, de fato, não há necessidade de muito conhecimento ou teorias para testar o caminho feliz: basta saber como tornar os testes possíveis (os desenvolvedores falam muito sobre projetar para testabilidade) e usar as melhores ferramentas disponíveis (e os desenvolvedores realmente dominam ferramentas como JUnit, Mockito e Selenium).

O que defendo é que, após implementar o código de produção (com todo o suporte do código de teste de caminho feliz), o próximo passo deveria ser testá-lo adequadamente. **O teste de software consiste em encontrar muitos bugs**; trata-se de explorar como o seu sistema se comporta não apenas no caminho feliz, mas também em casos excepcionais e extremos.

Recentemente perguntei aos meus alunos do primeiro ano de ciência da computação que tipos de erros eles cometeram em seus programas até agora, o que os ensinou que o teste é importante. Recebi uma lista enorme:

* Programas que não funcionam quando um loop não itera (a condição do loop nunca foi avaliada como verdadeira e o programa travou).

* Programas que não funcionam porque deixaram de executar a última iteração (o famoso erro off-by-one).

* Programas que não funcionam quando as entradas são inválidas, como null, ou não estão de acordo com o esperado (por exemplo, uma string que representa o nome de um arquivo a ser aberto contendo um espaço extra no início).

* Programas que não funcionam porque o valor está fora do intervalo esperado ou exatamente no seu limite. Por exemplo, se você tiver um if que espera que um número seja maior que 10, o que acontece se o número for menor que 10? Ou precisamente 10?

* Dependências que não existem, por exemplo, seu programa lê um arquivo, mas o arquivo pode não estar lá.

* Entre outros.

Independentemente da sua experiência, tenho certeza de que você também já enfrentou alguns desses bugs antes. *Mas com que frequência os desenvolvedores realmente exploram e escrevem esses casos de teste?*

Tenho a impressão de que isso acontece pouco. (Se você é um pesquisador empírico de engenharia de software, esta essa é uma boa pergunta para investigar).

É claro que, quando se trata de teste de software, [pesquisadores e profissionais falam sobre diferentes tópicos.](https://ieeexplore.ieee.org/abstract/document/8048625/) Livros pragmáticos muito bons, como [Pragmatic Unit Testing in Java 8 with JUnit](https://pragprog.com/book/utj2/pragmatic-unit-testing-in-java-8-with-junit), têm um forte foco em como fazer automação de testes. Embora forneçam boas dicas sobre o que testar (os capítulos sobre [CORRECT e RIGHT-BICEP](https://media.pragprog.com/titles/utj2/bicep.pdf) no livro da PragProg são interessantes), eles geralmente não vão além disso.

Por outro lado, livros de teste de software da academia, meu favorito é [Análise de Teste de Software](https://www.amazon.com/Software-Testing-Analysis-Principles-Techniques/dp/0471455938) de Young e Pezzè, têm um forte foco em teorias e técnicas sobre como projetar casos de teste que exploram o máximo possível do programa em teste. No entanto, com poucos exemplos oportunos sobre como aplicar essas ideias, o que é definitivamente um requisito para os profissionais.

[Robert Binder em seu livro de 2000](https://www.amazon.de/Testing-Object-Oriented-Systems-Addison-wesley-Technology/dp/0201809389) (p.45) faz uma distinção entre testes “direcionados a falhas” e “direcionados à conformidade”:

* Testes direcionados a defeitos: a intenção é revelar defeitos observando falhas.

* Conformidade direcionada: intenção de demonstrar conformidade com os recursos exigidos (por exemplo, atende a uma história de usuário, concentra-se no comportamento do caminho feliz).

Eu argumento que **um desenvolvedor forte deve testar de ambas as perspectivas**. Eles são complementares.

Como desenvolvedor, se você quiser levar seus testes para o próximo nível, você definitivamente deve se familiarizar com o que os pesquisadores têm feito, pois eles têm conduzido um belo trabalho na área de testes de software, que acredito ser definitivamente aplicável na prática. Alguns exemplos (mas definitivamente não uma lista completa):

* Detectar se algum conjunto de testes é capaz de detectar possíveis bugs. A ideia de [teste de mutação](https://ieeexplore.ieee.org/abstract/document/5487526/) está [sendo aplicada no Google](https://research.google.com/pubs/archive/46584.pdf).

* Gerar testes automaticamente (o famoso exemplo é o [EvoSuite](https://pdfs.semanticscholar.org/216b/98bb3d9221d5f5d261864975612e4d0faaa6.pdf), que é capaz de gerar testes para classes Java) ou para [reproduzir travamentos automaticamente](https://pure.tudelft.nl/portal/en/publications/a-guided-genetic-algorithm-for-automated-crash-reproduction(3490acbb-240b-4ec2-8202-712a7d1bb64e).html). Eu mesmo trabalhei em [gerar testes para consultas SQL automaticamente](https://pure.tudelft.nl/portal/en/publications/searchbased-test-data-generation-for-sql-queries(90a6431f-f78f-4ac3-bf87-c052cd9cd5d4).html).

* Derivação de [modelos dos logs do seu sistema de produção](https://pure.tudelft.nl/portal/en/publications/an-experience-report-on-applying-passive-learning-in-a-largescale-payment-company(b463c54a-d69f-4db4-9fcc-cbeb6e2ddf09).html) e construção de modelos que podem ser analisados por especialistas do domínio.

* Fornecer [diferentes critérios de cobertura de código](http://laser.cs.umass.edu/courses/cs521-621/papers/ZhuHallMay.pdf) (você provavelmente tem alguma ferramenta de cobertura de código em seu CI) e entender os benefícios de cada um deles.

* Várias ferramentas para testar aplicativos da web, como [explorar automaticamente o aplicativo da web em busca de falhas](http://search.proquest.com/openview/c7cf9aff7640da5036f7653ca6a9bfe1/1?pq-origsite=gscholar&cbl=21418&casa_token=Zr4Nz0ZAzfsAAAAA:UTguZ-3zSx1MHQUGirDsM_wejL2UtQRJd93oADSQ2TMCXdTSpAcQveL-YzvQrCtoHhBBn5ywyr0), bem como [encontrar falhas em APIs REST](https://github.com/EMResearch/EvoMaster/blob/master/docs/publications/2017_qrs.pdf). Mais informações podem ser encontradas nesta [revisão da literatura de testes da web](https://www.sciencedirect.com/science/article/pii/S0164121214000223).

* Medir empiricamente [quanto os desenvolvedores testam](https://pure.tudelft.nl/portal/en/publications/developer-testing-in-the-ide-patterns-beliefs-and-behavior(a63e79e0-e0e4-48cd-81ed-87f163810538).html), se [os test smells são importantes](http://www.cs.loyola.edu/~binkley/papers/icsm-12-smells.pdf) ou se [eles são a causa de testes instáveis](https://pure.tudelft.nl/portal/en/publications/does-refactoring-of-test-smells-induce-fixing-flaky-tests(c68e527c-bf4a-41f4-827a-6fcab9582c71).html), [por que e como os mocks são usados em sistemas Java](https://pure.tudelft.nl/portal/en/publications/to-mock-or-not-to-mock(a0b02521-ad00-4f96-9d96-17a85dc23f99).html), e como [os desenvolvedores revisam o código de teste durante as revisões de código](https://pure.tudelft.nl/portal/en/publications/when-testing-meets-code-review-why-and-how-developers-review-tests(256e7d56-352f-44ae-919b-97fad0eafe69).html).

* Os testes baseados em propriedades também estão chegando aos profissionais por meio de ferramentas como [ScalaCheck](https://www.scalacheck.org/) e [QuickTheories](https://github.com/ncredinburgh/QuickTheories).

* Entre outras coisas. E se você quiser entrar nessa luta, leia este resumo de [Antonia Bertolino sobre os atuais desafios da pesquisa em testes](http://people.scs.carleton.ca/~jeanpier/sharedF14/Bertolino-state-of-artinSWTesting.pdf).

**Escrever testes é diferente de testar**. Ambos fornecem aos desenvolvedores resultados diferentes. O primeiro dá confiança e apoio durante todo o desenvolvimento. Este último garante que o software foi avaliado também nos cenários que podem revelar defeitos. Embora ambos sejam importantes, é hora de ambas as comunidades se alinharem:

* Os desenvolvedores devem se familiarizar mais com técnicas de teste de software mais avançadas (que os pesquisadores têm fornecido). Eles são definitivamente um bom complemento à rede de segurança dos testes e os ajudarão a testar melhor seus softwares.

* Educadores devem ensinar ambas as perspectivas. Minha percepção é que as universidades ensinam técnicas de teste de forma abstrata (os desenvolvedores precisam aprender como usar as ferramentas!), enquanto os profissionais ensinam apenas como usar as ferramentas automatizadas (os desenvolvedores precisam aprender como testar corretamente!).

* Pesquisadores devem entender melhor como os profissionais têm evoluído no campo de testes de software a partir de sua perspectiva, bem como para compartilhar melhor seus resultados, já que os desenvolvedores não leem artigos. [O jargão de pesquisa é para pesquisadores](https://twitter.com/mauricioaniche/status/997498070395949057).

Atualização: Mariefred (da R/Programming) sugeriu este link relacionado: [Teste e verificação refinados](http://www.satisfice.com/blog/archives/856).

*Agradecimentos: Agradeço a Alberto Souza (Caelum, São Paulo), Anderson Leite (RG/A, São Francisco) e Arie van Deursen (Delft University of Technology) pelos comentários nas versões anteriores deste post.*
