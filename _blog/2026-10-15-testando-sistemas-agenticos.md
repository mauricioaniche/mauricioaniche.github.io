---
tags: [ia]
title: "Testando sistemas agênticos: aprendendo com o passado para testar o futuro"
layout: post
featured: true
featured_order: 0
image: /assets/images/blog/testing.svg
category: Engenharia
description: "Como aplicar os fundamentos de teste de software a sistemas agênticos: resultados, trajetórias, oráculos, confiabilidade e avaliações com IA."
---

Por muitos anos, testar software significou executar um programa com entradas determinadas e verificar se os resultados observados eram aqueles que esperávamos. Também aprendemos que fazer isso de maneira natural não escalava, e passamos a automatizar essas entradas e a verificação da saída. Aprendemos também a testar sistemas mais complexos que envolviam estados, propriedades, contratos, integrações, desempenho, segurança e sistemas distribuídos inteiros.

Mas uma ideia sempre continuou no centro de quase tudo: testamos um grande conjunto de “hipóteses” para aumentar nossa confiança de que o software se comporta como deveria. **Sistemas baseados em agentes de IA, ou “sistemas agênticos”, não mudam esse princípio.**

A disciplina de teste de software não morreu porque começamos a usar LLMs. Na verdade, muitos dos problemas que estamos discutindo hoje em torno de avaliação de agentes são velhos conhecidos de quem trabalha com testes de software:

- O problema do oráculo: como eu sei se a saída de um programa de computador para uma dada entrada é a saída correta?

- Geração de casos de teste e adequação da suíte: como criar suítes de testes que realmente revelam problemas no sistema?

- Não determinismo: como testar programas cuja saída não é tão determinística?

- Testes instáveis: testes que às vezes passam e às vezes falham, sem uma razão clara

- Observabilidade e isolamento do ambiente: como ter visibilidade completa sobre as centenas de execuções desses testes e dar ao desenvolvedor o máximo de informação possível para facilitar o debugging?

A natureza do “sistema sob teste” mudou, e esse é o novo grande desafio. Uma função tradicional pode ser descrita, de maneira simplificada, assim:

```text
entrada → programa → resultado
```

Funções essas que eram razoavelmente determinísticas. Mesmo se olharmos para pedaços maiores do sistema, como um módulo inteiro, um sistema inteiro, ou um sistema distribuído inteiro, aumentamos o desafio de passar entradas relevantes e de verificar que a saída é correta, mas ainda assim é algo muito parecido com o desenho acima, onde você passa uma entrada, uma série de sistemas de software trabalha nessa requisição, novamente de maneira razoavelmente determinística, e retorna uma resposta.

Um sistema agêntico se parece mais com:

```text
objetivo → modelo + contexto + harness + ferramentas + ambiente → sequência de ações → resultado
```

Entre a entrada e o resultado existe agora uma trajetória inteira que pode mudar completamente conforme a entrada. O modelo “raciocina”, escolhe ferramentas, recebe novos dados, altera o ambiente, reconsidera decisões e eventualmente decide que terminou.

Isso nos força a adaptar tudo o que conhecemos sobre teste de software. Ainda queremos testar o comportamento end-to-end do sistema, ainda queremos testar algum detalhe interno de como esse sistema chega no resultado, ainda queremos bons casos de teste que aumentem nossa chance de encontrar um eventual problema, ainda queremos suítes de testes que rodam rápido e que nos deem um sinal confiável. Só precisamos mudar ou adaptar a forma como fazemos isso.

Ao mesmo tempo, é justamente aqui que a IA também nos amplifica. Podemos gerar centenas de variações de uma tarefa, executar o agente repetidamente, inspecionar registros de execução, comparar diferentes harnesses, simular usuários, gerar falhas de ferramentas e ter outro modelo analisando milhares de execuções.

É uma história parecida com o que está acontecendo em outras áreas da engenharia de software: os fundamentos continuam os mesmos, mas a IA mudou radicalmente a forma como fazemos engenharia de software.

## O que exatamente estamos testando?

Na prática, em um sistema agêntico, temos muito mais do que simplesmente um prompt e uma resposta de uma LLM. Temos algo mais próximo disto:

```text
Agente = Modelo + Instruções + Contexto + Harness + Ferramentas + Ambiente
```

- O **modelo** pode ser GPT, Claude, Gemini ou qualquer outro.

- As **instruções** incluem instruções que são passadas para o modelo, como exemplos e regras específicas da aplicação.

- O **contexto** contém documentos, histórico da conversa, memória, resultados de recuperação de informação e informações produzidas durante a própria execução.

- As **ferramentas** definem quais ações o modelo consegue executar no mundo.

- O **ambiente** contém o estado real sobre o qual essas ações operam.

- E o **harness** é a “cola” que coloca tudo isso para funcionar.

É o harness que decide, por exemplo, como montar o contexto, como expor ferramentas, quantos passos o agente pode executar, como lidar com erros, quando tentar novamente, como persistir memória, qual modelo utilizar em cada momento e quando considerar a tarefa terminada.

Isso significa que trocar apenas o harness pode alterar significativamente o desempenho, mesmo mantendo exatamente o mesmo modelo. Ao avaliar um agente, estamos avaliando o modelo e esse harness em conjunto.

O harness, aliás, é um detalhe importante também do ponto de vista experimental. Se estamos comparando versões do nosso sistema, não basta registrar:

```text
modelo = X
```

Precisamos registrar algo mais próximo de:

```text
modelo X + instruções P + harness H + ferramentas T + política de contexto C + orçamento B
```

Esse conjunto é nosso verdadeiro sistema sob teste.

## Um modelo mental para testar agentes

Há pelo menos cinco atributos diferentes que podemos (ou devemos) observar ao testar sistemas agênticos.

| **Superfície** | **Pergunta principal** | **Exemplo** |
| --- | --- | --- |
| **Resultado** | O agente resolveu a tarefa? | A reserva do hotel realmente foi criada? |
| **Estado e efeitos colaterais** | O mundo terminou no estado correto? | O banco de dados foi alterado corretamente? |
| **Trajetória** | O caminho seguido foi aceitável? | Usou a ferramenta correta? Seguiu a política? |
| **Confiabilidade** | Ele consegue fazer isso consistentemente? | Acerta nove de dez execuções ou apenas três? |
| **Eficiência** | Quanto custou chegar ao resultado? | Tokens, tempo, passos e chamadas de ferramentas |

Essas dimensões não têm o mesmo peso em todos os sistemas, e você deve levar sempre o contexto do que está criando em consideração. Por exemplo:

- Para um agente que faz reservas, o estado final do sistema é provavelmente mais importante que o texto de parabéns da confirmação que ele escreveu para o usuário.

- Para um agente financeiro, algumas propriedades da trajetória podem ser obrigatórias: talvez ele precise verificar a identidade antes de executar determinada transação.

- Para um agente de pesquisa, por outro lado, o resultado pode ser muito mais difícil de avaliar deterministicamente. Correção, cobertura das fontes, qualidade das evidências e clareza da síntese podem exigir avaliações diferentes.

Essa distinção entre **registro da execução**, que contém a trajetória completa, e **resultado**, que representa o estado final do ambiente, parece óbvia, mas evita um erro bastante comum: avaliar o que o agente **disse que fez**, e não o que **ele realmente fez**. Um agente pode afirmar que reservou um restaurante, mas o resultado verdadeiro é se a reserva de fato apareceu no banco de dados ou no sistema terceiro que controla a reserva.

## Comece pela caixa-preta

Nos primórdios dos métodos ágeis e testes automatizados, nos apaixonamos rapidamente por testes de caixa branca, com o teste de unidade sendo a concretização desse tipo de teste. E não à toa. Testes de unidade são fáceis e baratos de serem escritos, rodam rápido, e por consequência, eles conseguem se multiplicar muito rapidamente na base de códigos. Um outro fator que ajudou demais a adoção foi que escrever testes de maior escopo, como testes de componente, integração ou end-to-end dava muito mais trabalho, e esses testes eram muito mais instáveis. As ferramentas não estavam prontas ainda.

No entanto, 20 anos depois, nós aprendemos que de nada adiantam centenas de milhares de testes que funcionam bem isolados, mas que não pegam problemas básicos. As ferramentas para testes de maior escopo também evoluíram bastante, e agora testar um sistema inteiro (e não só uma classe ou função) junto com seu banco de dados e cache é muito mais fácil.

Eu advoco por testes de componente e sistema há muito tempo. E continuo advocando nessa nova era da IA. Comece pelo comportamento observável do sistema como um todo. Antes de analisar se instruções passadas pro modelo estão certas, se o raciocínio foi correto, se ele chamou as ferramentas certas, ou qualquer outro detalhe interno, tente escrever testes que respondam à seguinte pergunta: **Dada uma tarefa, o sistema entrega um resultado aceitável?**

Esse é um teste mais perto do teste end-to-end, olhando o sistema agêntico como uma caixa fechada e preocupado somente com a saída gerada e não com os detalhes de implementação.

Suponha um agente de atendimento cujo objetivo seja cancelar uma compra. Podemos (ou o agente de código pode) preparar inicialmente um cenário onde o sistema tem um pedido com o status ativo:

```text
estado_inicial = pedido ATIVO
```

O teste então dispara a entrada do sistema:

```text
usuário: "Quero cancelar minha compra"
```

O agente trabalha. Ao final, o teste verifica que:

```text
estado_final = pedido CANCELADO
reembolso CRIADO
notificação ENVIADA
```

Esse é um excelente primeiro teste para o seu agente. Não precisamos inicialmente saber se o agente chamou `getOrder()` três vezes ou cinco. Não precisamos saber se primeiro consultou a política ou consultou o pedido. Não precisamos nem avaliar sua explicação intermediária. Primeiro queremos saber se a tarefa foi realizada.

Isso é teste de software tradicional. O teste de caixa preta é uma solução elegante para esse tipo de teste justamente porque transforma (ou tenta transformar) um problema aparentemente subjetivo em um oráculo determinístico.

O agente pode chegar ao estado final por caminhos diferentes. O teste não precisa se importar, desde que o resultado seja correto e as restrições importantes sejam respeitadas.

## E depois abra a caixa

O problema é que saber apenas que o sistema agêntico falhou, não retornou a resposta esperada, não nos ajuda muito a entender **por que ele falhou**. É aí que começamos a olhar para dentro.

Para conseguir fazer um teste de caixa branca e garantir um pouco do comportamento interno do agente, precisamos ter o registro inteiro da execução. Algo como:

- Objetivo: qual foi o objetivo realmente passado para o sistema agêntico?

- Raciocínio exposto pelo modelo: que explicação ele apresentou para chegar ao resultado?

- Chamada de ferramentas: de quais ferramentas ele fez uso?

- Resposta final: a qual resposta ele chegou?

Com esse registro em mãos, podemos procurar por “decisões ruins”. Perguntas que podem fazer sentido em diferentes contextos:

- O agente escolheu a ferramenta errada?

- Escolheu a ferramenta correta, mas produziu parâmetros errados?

- Interpretou incorretamente o resultado?

- Recebeu uma mensagem de erro e não conseguiu se recuperar?

- Perdeu uma informação importante porque o harness a removeu do contexto?

- Utilizou uma memória antiga que já não deveria ser relevante?

- Terminou cedo demais?

- Continuou executando ações depois que a tarefa já estava resolvida?

Não entrarei no detalhe de como fazer cada uma dessas verificações, pois cada sistema agêntico hoje é único. E as ferramentas também estão no mesmo momento das ferramentas de testes end-to-end do começo dos anos 2000: instáveis e mudando com frequência. É sua tarefa criar mecanismos para conseguir fazer asserções em cima de comportamentos do agente que façam sentido.

Note também que aqui usei o termo teste de caixa branca e não teste de unidade. A ideia é tirar notas sobre como o sistema agêntico trabalha, mas ainda assim observando-o de maneira end-to-end. Eu falo mais de testes de unidade mais abaixo no texto.

Uma lição que aprendemos de maneira dura com testes de caixa branca também se aplica aqui: cuidado para não acoplar demais o seu teste com detalhes internos da implementação do seu agente. Lembra daqueles testes de unidade cheios de mock, e depois quando você mudava a implementação mas sem mudar o resultado final, todos seus testes quebravam? Pois é, a mesma coisa pode acontecer aqui.

Imagine que um agente precise encontrar um cliente, verificar um pedido e reembolsar uma cobrança.

Hoje ele pode fazer:

```text
buscar_cliente → consultar_pedido → reembolsar
```

Amanhã, um modelo melhor talvez encontre um caminho ainda melhor para se chegar no resultado:

```text
buscar_pedido_por_email → reembolsar
```

Os dois caminhos podem estar corretos e produzir a mesma saída. No entanto, se o teste tiver verificações como as abaixo, acabamos de transformar uma solução autônoma em um fluxo programado indiretamente pelo teste.

```text
assert primeira_chamada == buscar_cliente
assert segunda_chamada == consultar_pedido
assert terceira_chamada == reembolsar
```

Como disse, isso é equivalente a escrever um teste de unidade tradicional excessivamente acoplado à implementação. Nós já sabemos que isso é ruim. Uma refatoração muda a estrutura interna sem mudar o comportamento externo, mas dezenas de testes quebram porque conheciam detalhes demais da implementação.

Portanto, é sempre melhor testar **propriedades importantes da trajetória** do que “fixar” uma trajetória inteira. No exemplo, talvez as propriedades relevantes sejam:

- reembolso só pode acontecer depois de verificar_identidade
- reembolso.valor <= pagamento_original.valor
- excluir_cliente nunca pode ser chamado
- nenhuma compra adicional pode ser criada
- máximo de 15 chamadas de ferramentas


Observe a diferença. Não estamos dizendo **como** o agente deve resolver o problema. Estamos dizendo quais **invariantes** ele precisa preservar enquanto resolve o problema.

Isso é particularmente importante porque modelos melhores podem encontrar estratégias que não antecipamos. Estamos presenciando a evolução desses modelos quase que diariamente. Não é improvável observar agentes encontrando soluções válidas não previstas pela avaliação e sendo classificados como falha porque o conjunto de testes era rígido demais. O objetivo de um teste não deveria ser impedir que nosso sistema fique melhor.

## Nada se cria, tudo se transforma

Há um paralelo que considero bastante útil com a maneira como testávamos sistemas baseados em algoritmos de aprendizado de máquina, antes da atual geração de LLMs. Pense em algoritmos como decision trees e random forests. Eles eram muito mais simples do que os sistemas agênticos de hoje, mas podemos sim aprender com eles.

Imagine um algoritmo de classificação de fraude. Para testar o classificador, nós criávamos um conjunto de exemplos que sabíamos que eram verdade:

```text
transação_1 → fraude
transação_2 → legítima
transação_3 → legítima
transação_4 → fraude
```

Esses exemplos formavam nosso **conjunto de referência** (ou golden set, em inglês). Ao criar uma nova versão do algoritmo, executávamos o algoritmo sobre esse conjunto de referência e comparávamos os resultados do novo modelo com os resultados que sabemos ser corretos.

Naturalmente, não esperávamos necessariamente que cada versão produzisse exatamente os mesmos resultados. Uma versão poderia melhorar algumas previsões e piorar outras. O que observávamos eram métricas agregadas como precisão, recall, F1, taxa de falsos positivos ou taxa de falsos negativos.

Também tínhamos conjuntos separados para treinamento, validação e teste justamente para evitar otimizar inadvertidamente o sistema para os mesmos exemplos usados para avaliá-lo. Muito disso continua sendo uma boa ideia.

A diferença é que agora nossos exemplos ficaram muito mais ricos. As entradas e saídas são muito mais complexas. O ambiente pode mudar durante a execução. O agente pode pedir mais informação ao usuário. O resultado pode ser texto, arquivos, alterações no banco, chamadas de API e dezenas de outros efeitos colaterais. E podem existir muitas soluções corretas.

Mas, conceitualmente, a ideia continua surpreendentemente parecida: **mantemos um conjunto de tarefas que representem comportamentos importantes (tanto a entrada quanto a saída) e executamos o sistema agêntico com esse conjunto de tarefas sempre que o sistema mudar.**

Ou seja, continuamos querendo nosso conjunto de referência. Precisamos apenas parar de pensar nele como um conjunto de pares `<entrada, resultado>` e começar a pensar em um conjunto de **tarefas rotuladas**.

## Dados rotulados continuam sendo ouro

Sempre houve uma tendência, dentro da inteligência artificial, de procurar maneiras de gerar automaticamente os dados de avaliação. Mesmo antes das LLMs. E isso é compreensível, claro, pois rotular dados é caro. Você geralmente precisa pagar humanos pra fazer isso.

Se você tem bons exemplos de tarefas rotuladas, eles são extremamente valiosos para garantir a qualidade do sistema agêntico. Imagine um agente usado por um departamento jurídico. Um especialista pode escrever 200 tarefas representativas e, para cada uma, documentar:

- o que seria uma resposta correta

- o que obrigatoriamente deveria aparecer em uma resposta

- O que não pode aparecer nunca

- quais fontes deveriam ser consultadas

- quais ações nunca deveriam ser tomadas.

Construir esse conjunto pode custar caro. Mas ele passa a ser nossa suíte de regressão.

Mudamos o modelo? Executamos novamente. Mudamos as instruções de sistema? Executamos novamente. Alteramos o mecanismo de recuperação de informação? Executamos novamente. Adicionamos memória? Executamos novamente. Mudamos o harness? Executamos novamente.

É exatamente o papel que uma boa suíte de regressão de um algoritmo de aprendizado de máquina sempre exerceu. A dificuldade é que, em muitos domínios, não temos um resultado esperado exato. Isso nos leva novamente ao problema clássico do oráculo.

## O velho problema do oráculo de teste

Em teste de software, chamamos de *oráculo de teste* o mecanismo que determina se o resultado de uma execução está correto. Às vezes ele é trivial e fácil de ser calculado. Saber que o resultado de dois mais dois é quatro é trivial:

```text
2 + 2 == 4
```

Mas às vezes é simplesmente muito difícil determinar automaticamente se o resultado está correto. LLMs ampliam esse desafio ainda mais, pois é ainda mais difícil saber qual o resultado certo de um agente.

Imagine a seguinte tarefa implementada por um agente: Analise estes dez documentos e produza uma recomendação para a empresa.

Não existe uma única sequência de texto correta que possamos colocar em um `assertEquals`. Mesmo dois especialistas humanos podem escrever respostas bastante diferentes e ambas serem boas.

Como saber o que verificar em um sistema como esse? Minha sugestão é para **usar o oráculo mais determinístico disponível antes de recorrer a um modelo.**

- Se conseguimos verificar uma propriedade por código, verificamos por código.

- Se conseguimos consultar o estado do banco, consultamos o banco.

- Se conseguimos executar testes, executamos testes.

- Se conseguimos validar um JSON contra um esquema, fazemos isso.

- Se conseguimos garantir que todas as citações existem nos documentos consultados, fazemos essa verificação deterministicamente.

Avaliações determinísticas são baratas, reproduzíveis e objetivas.

## LLM como juiz

Mas talvez só a avaliação determinística não seja suficiente. Nossos sistemas agênticos produzem respostas complexas, com texto em linguagem natural, imagens, vídeos etc. Precisamos de mais do que “apenas” testes determinísticos. Precisamos ler o que o sistema escreveu, em linguagem natural, e garantir que esse texto também está correto.

Quando não temos um oráculo determinístico suficientemente bom, uma alternativa óbvia é usar outro LLM para julgar se a saída do sistema agêntico é correta. É a IA resolvendo problemas que ela mesma criou. É o chamado **LLM como juiz**.

Podemos entregar ao modelo avaliador:

- Descrição da tarefa
- Critérios esperados
- Resposta do agente

E pedir algo como:

- Avalie a correção de 1 a 5
- Avalie a completude de 1 a 5
- Identifique afirmações sem suporte
- Verifique se os requisitos A, B e C foram satisfeitos

Isso funciona surpreendentemente bem em muitos cenários e torna avaliações que antes exigiriam milhares de horas humanas economicamente viáveis.

O desafio aqui é lembrar que a LLM também pode errar. Ela pode dizer que o resultado está correto, mas ele não estar. Lembre-se de que o modelo avaliador também é um sistema probabilístico. Ele possui vieses. Ele pode preferir determinadas formas de escrita, ou favorecer respostas mais longas, ou ser influenciado pela ordem em comparações entre duas respostas, entre outros vieses.

Portanto, se for usar uma LLM como juiz, o juiz também precisa ser testado. Precisamos testar o testador. Escreva uma suíte de testes para garantir que a saída do seu juiz satisfaz o seu critério de qualidade. Ainda bem que temos IA para nos ajudar nisso.

Tudo isso é muito novo e ainda estamos aprendendo como testar juízes. Eu começaria com um pequeno conjunto de respostas corretas, incorretas e casos no limite entre as duas, avaliados por especialistas do domínio com critérios explícitos. No exemplo da recomendação para a empresa, uma resposta pode ser bem escrita e a LLM ainda sim inventar um dado decisivo. O juiz precisa detectar esse erro. Peça ao agente de código para montar e executar uma suíte que compare os julgamentos do modelo com essas avaliações humanas. Inspecione tanto respostas ruins que o juiz aprovou quanto respostas boas que ele rejeitou, já que divergências também podem revelar critérios ambíguos ou erros na própria avaliação humana. Ajuste a rubrica com esses exemplos, mas reserve outros para verificar se o juiz funciona além dos casos usados no ajuste. Manter um conjunto rotulado onde o modelo não vê nem durante o treino e nem durante o desenvolvimento e melhoria desse modelo, chamado de conjunto de validação, é também uma prática muito utilizada em aprendizado de máquina desde sempre; e aqui novamente mais uma ideia sendo reusada. Repita essa avaliação quando mudar o modelo ou as instruções do juiz e mantenha uma revisão humana periódica de uma amostra dos julgamentos.

E aqui, ainda há uma evolução interessante dessa ideia. Às vezes avaliar a tarefa também exige trabalho. Imagine avaliar um agente de programação que recebeu a tarefa: Adicione autenticação OAuth a esta aplicação.

Um LLM olhando apenas a diferença entre arquivos pode não conseguir determinar corretamente se aquilo funciona. Um avaliador melhor poderia:

- abrir os arquivos

- executar os testes

- subir a aplicação

- fazer uma requisição

- inspecionar logs

- consultar o banco

e somente depois emitir seu julgamento.

Nesse momento nosso juiz também virou agente. Essa abordagem tem sido chamada de **agente como juiz**. A ideia é permitir que o avaliador observe e interaja com os artefatos produzidos por outro agente antes de decidir se a tarefa foi realizada corretamente.

Eu, aliás, acredito que agentes como juiz terão um papel revolucionário na própria prática de testes de software. Teremos agentes testando o código gerado por agentes. Isso é muito além do que usamos hoje nas ferramentas de revisão de código mais comuns, que basicamente mandam o código do pull request junto com um prompt caprichado pedindo para a LLM encontrar erros no código.

## Não execute uma vez só

Outro ponto onde sistemas agênticos diferem de boa parte do software tradicional é a variabilidade entre execuções.

Se executarmos o teste de unidade `testarReembolso()` cem vezes em uma aplicação Java tradicional, esperamos cem resultados iguais. O teste é determinístico e repetível. Execute a mesma tarefa cem vezes em um sistema agêntico e talvez obtenhamos cem trajetórias diferentes. Algumas podem terminar com sucesso e outras não. Por isso, uma única execução do teste é pouca evidência.

Não queremos apenas saber:

O agente consegue fazer isso?

Queremos também saber:

Com qual frequência ele consegue fazer isso?

Uma métrica popular para resolver esse problema é  a `pass^k`, que mede a probabilidade de o agente conseguir realizar uma tarefa corretamente em todas as `k` execuções. Esse é um conceito particularmente importante para sistemas reais.

Imagine dois agentes:

- Agente A: 90% de sucesso
- Agente B: 95% de sucesso

A diferença parece pequena. Mas, se um processo crítico exige dez ações independentes executadas corretamente, essas probabilidades se acumulam. Confiabilidade deixa de ser apenas uma característica estatística interessante e passa a ser parte central da qualidade do produto. Por isso precisamos pensar em algo próximo do que já fazemos com testes instáveis: medir distribuições, repetir execuções e entender variância.

Uma suíte de avaliação de um sistema agêntico não deveria produzir apenas: `87% passou,` ela deveria conseguir nos mostrar também intervalos de confiança, variação entre execuções e quais tarefas apresentam comportamento instável.

E note que isso não é novidade. Bons testes de carga e performance no mundo pré-LLMs também executavam o teste múltiplas vezes para só afirmar que, por exemplo, uma parte do sistema piorou em latência depois de coletar muitas amostras. De novo, nada se cria, tudo se transforma.

## Testando falhas no meio do processo

Testar sistemas agênticos tem desafios análogos ao se testar um sistema distribuído. Em um sistema distribuído, serviços se integram e chamam outros serviços, que podem falhar no meio. E o sistema precisa garantir que o sistema não pega fogo quando isso acontece. Sistemas distribuídos precisam também lidar com possíveis dados desatualizados, respostas em formatos inesperados, etc.

A mesma coisa em um sistema agêntico, que chama ferramentas, MCPs, entre outros. Ferramentas falham. APIs devolvem `500`. A autenticação expira. Uma busca retorna zero resultados. Outra retorna informação incompleta. Uma chamada demora demais. O usuário muda de ideia no meio da conversa. Uma ferramenta retorna JSON inválido. O contexto fica grande demais. Memória contém informação antiga.

Pegue uma execução que normalmente seria:

```text
agente → buscar_cliente → sucesso
```

e transforme em:

```text
agente → buscar_cliente → tempo esgotado
```

O que acontece? O sistema agêntico tenta novamente? Tenta infinitamente? Escolhe outra estratégia? Inventa o resultado? Explica para o usuário que não conseguiu concluir?

E se a API de pagamento retornar 500? E se a ferramenta de busca devolver uma resposta malformada? E se o banco de dados tiver algum dado desatualizado? São todos casos a serem pensados.

Novamente, nada conceitualmente novo para teste de software. Injeção de falhas e testes de fronteiras são práticas há muito tempo conhecidas. A novidade é que agentes conseguem reagir dinamicamente ao problema, então queremos testar não apenas se o erro foi tratado por uma ramificação do código, mas se a estratégia de recuperação da falha continua aceitável.

A IA também torna muito mais barato gerar essas variações automaticamente. Podemos pedir a outro agente para criar dezenas de perturbações plausíveis de uma mesma tarefa, por exemplo. Ou seja, injetar falhas e testar uma alta quantidade de casos extremos, que eram processos caros, agora são baratos. O agente é persistente e vai até o fim.

## E os testes unitários?

Eles continuam existindo.

Se seu harness possui uma função determinística responsável por validar um limite de reembolso, você se beneficiará de um teste unitário que cobre esse comportamento. Afinal, na próxima vez que a regra for alterada, o agente de código terá um mecanismo rápido de feedback pra garantir que não quebrou nada. Se uma regra de segurança pode ser expressa deterministicamente, implemente-a deterministicamente e teste-a deterministicamente.

Quanto mais propriedades importantes conseguirmos retirar do espaço probabilístico e transformar em código determinístico, mais fácil o sistema fica de entender e testar.

Dito isso, não podemos cair na falácia que mencionei anteriormente: meu sistema está inteiramente testado com testes de unidade, e portanto não preciso de testes end-to-end. O “coração” do sistema agêntico deve ser testado via testes de maior escopo, como discutido durante esse artigo inteiro.

## Isso é suficiente?

Com certeza, não. Do mesmo jeito que testes de unidade e testes de sistema nunca foram suficientes para se testar sistemas determinísticos. E não à toa, pesquisadores de engenharia de software estão há décadas propondo técnicas para nos ajudar a encontrar bugs em nossos sistemas. Técnicas como testes de mutação, algoritmos de busca aplicados a testes de software, testes aleatórios, testes aumentados, etc, são tentativas da academia para nos ajudar nessa busca.

Essas mesmas técnicas ainda fazem sentido quando falamos de se testar sistemas agênticos. E talvez mais ainda, dado o não-determinismo dos modelos. Por exemplo, “eu quero reservar o restaurante X”, “reserve-me o restaurante X”, e “reserve-me o restaurante X agora” deveriam produzir o mesmo efeito no sistema; mas será que produz mesmo? É ainda mais importante testar variações da entrada em sistemas agênticos.

Pesquisa em testes de software só ficou ainda mais importante nesse mundo agêntico.

## Testar sistemas agênticos ainda é testar software

Há um risco neste momento de reinventarmos toda a terminologia porque o software agora usa IA. Eu chamei aqui “casos de teste” de “tarefas”. Execuções viraram tentativas. Asserções viraram avaliadores. Resultados esperados viraram conjuntos de referência.

Boa parte disso é útil porque o domínio realmente tem características diferentes. Mas não deveríamos perder a conexão com décadas de conhecimento acumulado em teste de software.

Ainda precisamos de bons oráculos de teste. Ainda temos testes de regressão. Ainda precisamos pensar sobre cobertura. Ainda queremos gerar entradas interessantes que maximizem a chance de revelar problemas. Ainda temos ambientes difíceis de reproduzir. Ainda precisamos de observabilidade para diagnosticar falhas. Ainda precisamos evitar testes acoplados demais à implementação. E ainda precisamos decidir quando testamos o suficiente.

O que sistemas agênticos fizeram foi expandir significativamente o espaço de comportamento que precisamos observar. E, curiosamente, a mesma IA que criou essa complexidade também nos dá ferramentas para lidar com ela. Podemos executar mais experimentos. Podemos analisar milhares de registros de execução. Podemos gerar casos adversariais. Podemos simular usuários. Podemos procurar automaticamente padrões nas falhas. Podemos transformar bugs de produção em novos casos da nossa suíte. Podemos usar agentes para avaliar agentes.

Não precisamos jogar fora o que aprendemos sobre testes de software. Precisamos aplicar esses fundamentos a um sistema novo, muito mais dinâmico, e aproveitar a IA para fazer testes em uma escala que antes simplesmente não conseguíamos.

A pergunta sobre qualidade continua sendo a mesma de sempre: **Temos evidência suficiente de que o sistema vai se comportar corretamente quando for pra produção?**

Só que agora responder bem a essa pergunta ficou, ao mesmo tempo, mais difícil e muito mais interessante.

## Referências bibliográficas

- **LANGCHAIN.** *Evaluating AI Agents at the Run, Trace, and Thread Level*. 23 jun. 2026. Disponível em: [https://www.langchain.com/resources/agent-evals](https://www.langchain.com/resources/agent-evals)

- **ANTHROPIC.** *Demystifying Evals for AI Agents*. 9 jan. 2026. Disponível em: [https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents](https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents)

- **OPENAI.** *Trustworthy Third-Party Evaluations: Foundations*. Disponível em: [https://openai.com/pt-BR/index/trustworthy-third-party-evaluations-foundations/](https://openai.com/pt-BR/index/trustworthy-third-party-evaluations-foundations/)

- **HUSAIN, Hamel.** *How Do I Evaluate Agentic Workflows?* Hamel's Blog. Disponível em: [https://hamel.dev/blog/posts/evals-faq/how-do-i-evaluate-agentic-workflows.html](https://hamel.dev/blog/posts/evals-faq/how-do-i-evaluate-agentic-workflows.html)

- **HUSAIN, Hamel.** *Your AI Product Needs Evals*. Hamel's Blog. Disponível em: [https://hamel.dev/blog/posts/evals/](https://hamel.dev/blog/posts/evals/)

- **HUSAIN, Hamel.** *AI Evals: Everything You Need to Know*. Hamel's Blog. Disponível em: [https://hamel.dev/blog/posts/evals-faq/](https://hamel.dev/blog/posts/evals-faq/)

- **MICROSOFT.** *Agent Evaluators for Generative AI*. Microsoft Learn. Disponível em: [https://learn.microsoft.com/en-us/azure/foundry/concepts/evaluation-evaluators/agent-evaluators?view=foundry](https://learn.microsoft.com/en-us/azure/foundry/concepts/evaluation-evaluators/agent-evaluators?view=foundry)
