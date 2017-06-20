---
id: 36
title: 'PRE &#8211; Princípio da Responsabilidade Exclusiva'
date: 2009-01-28T19:57:00+00:00
author: mauricioaniche
layout: post
guid: /post/2009/01/28/PRE-Principio-da-Responsabilidade-Exclusiva.aspx
permalink: /2009/01/pre-principio-da-responsabilidade-exclusiva/
categories:
  - Blog em Português
tags:
  - pre
  - srp
---
<p align="justify">
  Segundo o livro <em>Use a Cabeça: Desenvolvimento de Softwares</em>, a definição de PRE é: <em>Cada objeto de seu sistema deve ter uma <strong>responsabilidade exclusiva </strong>e todos os serviços do objeto devem estar orientados à execução dessa responsabilidade.</em> Em outras palavras, uma classe deve ser responsável por uma determinada função, e só ela pode exercê-la.
</p>

<p align="justify">
  Uma classe <em>Carro</em>, por exemplo, deve ser unica e exclusivamente responsável por realizar funções de um carro (como medir óleo, acender farol, etc). A classe Carro não deve ser responsável por saber se lavar (essa é uma responsabilidade que poderia ser entregue a uma classe <em>LavaRapido</em>, por exemplo).
</p>

<p align="justify">
  Conversando hoje com o <a href="http://www.muriloamendola.com.br" target="_blank">Murilo Amêndola</a>, discutimos sobre como saber quais as responsabilidades de uma classe. Concordamos que não é uma tarefa trivial e que depende de muita experiência para que todas suas classes tenham um alto nível de coesão. Lendo hoje um trecho do livro citado acima, encontrei um algoritmo muito interessante para saber se determinada responsabilidade deve ou não pertencer a determinada classe. Vou reproduzí-lo aqui:
</p>

<div>
  <ol>
    <li>
      Escreva, em uma folha de papel, várias linhascomo essa: <strong>O [espaço] [espaço] sozinho.</strong> Escreva 1 linha dessa para cada método da classe que você está testando quanto ao PRE.
    </li>
    <li>
      No primeiro espaço em branco de cada linha, preencha o nome da classe. No segundo espaço em branco, anote um dos métodos da classe. Faça isso para todos os métodos.
    </li>
    <li>
      Leia cada linha em voz alta. Você pode até adicionar uma letra ou palavra para que a leitura fique adequada. Se a frase que você disse fez algum sentido, então esse método realmente pertence a essa classe. Se não fizer nenhum sentido, então provavalmente esse método não pertence a essa classe.
    </li>
  </ol>
</div>

<p align="justify">
  Voltando ao exemplo da classe Carro:
</p>

<div>
  <ul>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">se liga</span> sozinho. (CERTO)
    </li>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">se desliga</span> sozinho. (CERTO)
    </li>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">trocaPneus</span> sozinho. (ERRADO)
    </li>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">dirige</span> sozinho. (ERRADO)
    </li>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">se lava</span> sozinho. (ERRADO)
    </li>
    <li>
      O <strong>carro </strong><span style="text-decoration: underline;">medeOleo</span> sozinho. (CERTO)
    </li>
  </ul>
</div>

<p align="justify">
  Repare que faz todo sentido o carro medir óleo sozinho, enquanto não faz sentido nenhum o carro se dirigir sozinho (esse método deveria estar em uma classe Motorista), ou se lavar sozinho (deveria ser responsabilidade da classe LavaRapido)!
</p>

<p align="justify">
  O método liga e desliga não fazem taaanto sentido (afinal, um carro não se liga sozinho), mas nesse caso, não vejo outra alternativa (é o carro que sabe como se ligar!). Isso mostra que a regra acima é apenas uma diretriz, e por isso você deve usar de bom senso e de sua experiência.
</p>

<p align="justify">
  O interessante é que você pode adaptar essa regra até para métodos que recebem parâmetros. Se você tiver um método troca(peça), você escreve a seguinte sentença: O <strong>carro </strong><span style="text-decoration: underline;">troca [uma]  peça</span> sozinho. No caso, também não faz muito sentido, você poderia ter uma classe Mecânico, com o método troca(peça, carro).
</p>

<p align="justify">
  Enfim, é uma análise interesse, não acham?
</p>

<p align="justify">
  <em>(Exemplo retirado do livro Use a Cabeça: Desenvolvimento de Softwares, capítulo 5.</em>)
</p>