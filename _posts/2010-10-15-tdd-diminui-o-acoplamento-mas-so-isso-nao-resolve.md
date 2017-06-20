---
id: 204
title: TDD diminui o acoplamento, mas só isso não resolve!
date: 2010-10-15T12:41:23+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=204
permalink: /2010/10/tdd-diminui-o-acoplamento-mas-so-isso-nao-resolve/
categories:
  - Blog em Português
tags:
  - acoplamento
  - dependências
  - design de classes
  - estabilidade
  - tdd
---
Uma das conhecidas vantagens do TDD é que ele &#8220;diminui o acoplamento&#8221;, ou &#8220;ajuda a diminuir o acoplamento&#8221;. Entretanto, alguns estudos (como os que comentei nesse [post](http://www.aniche.com.br/2010/04/tdd-realmente-ajuda/)) mostram que, quando medidos, a diferença de acoplamento entre projetos feitos com TDD e projetos não feitos com TDD não é tão grande assim. Por que isso acontece?

Suponha o seguinte código:

<pre lang="java">public class Copiadora {
  public void copiar() {
    var leitor = new LeitorDeXML();
    var escritor = new EscritorPelaSerial();
    while (leitor.TemCaracteres()) {
      escritor.Escreve(leitor.LeCaracteres());
    }
  }
}</pre>

Veja que essa classe é fortemente acoplada com duas classes: _LeitorDeXML_ e _EscritorPelaSerial_. Se quantificarmos isso, podemos dizer que o acoplamento dessa classe é igual a &#8220;2&#8221; (já que ela está acoplada a 2 classes).

Mas, ao fazer TDD, você naturalmente criaria um código parecido com isso:

<pre lang="java">public interface ILeitor {
  bool TemCaracteres();
  string LeCaracteres();
}
public interface IEscritor {
  void Escreve(string conteudo);
}
public class Copiadora {
  private ILeitor leitor;
  private IEscritor escritor;
  public Copiadora(ILeitor leitor, IEscritor escritor) {
    this.leitor = leitor;
    this.escritor = escritor;
  }
  public void Copiar() {
    while (leitor.TemCaracteres()) {
      escritor.Escreve(leitor.LeCaracteres());
    }
  }
}</pre>

Veja que agora a classe é acoplada com as interfaces _ILeitor_ e _IEscritor_. Ainda assim, a métrica de acoplamento nos informaria &#8220;2&#8221;.

Qual a diferença? _A diferença agora é que a classe está acoplada com módulos (classes, interfaces) mais_ **_estáveis_**_._ A estabilidade, segundo Bob Martin [1], mede o quão difícil (ou improvável) é realizar uma mudança na classe.

As classes _LeitorDeXML_ e _EscritorPelaSerial_ muito provavelmente são acopladas com outras classes (a classe _EscritorPelaSerial_, por exemplo, deve ser acoplada com alguma outra classe que auxilia na troca de mensagens pela porta serial) e isso faz com que elas possam eventualmente sofrer alterações; são classes mais voláteis. Já as interfaces _ILeitor_ e _IEscritor_ não dependem de nada, são independentes. Além disso, essas interfaces serão implementadas por várias outras classes, e isso faz com que essas interfaces sejam ainda mais difíceis de mudar (afinal, se você mudar uma delas, você vai ter que mudar a implementação em N classes que as implementam), tornando-as assim altamente estáveis.

Podemos dizer então que uma **boa dependência** é uma dependência com um módulo (ou classe) estável, e uma **má dependência** é uma dependência com um módulo (ou classe) instável. _TDD faz com que o programador acople suas classes com módulos geralmente mais estáveis!_ Por quê? Porque TDD obriga você a pensar apenas no que você espera das outras classes, sem pensar ainda em uma implementação concreta. Esses comportamentos esperados acabam geralmente se transformando em interfaces, que frequentemente se tornam estáveis.

Para garantir um design de qualidade não basta apenas reduzir o acoplamento, mas sim acoplar com _boas dependências_! E para medir qualidade de design, também não bastam apenas métricas de acoplamento! 🙂

**Referências**

Esse post é fortemente baseado no trabalho do Bob Martin sobre princípios e métricas de qualidade em design de sistemas orientados à objetos.

[1] Martin, Robert C. _Stability_ (<http://www.objectmentor.com/resources/articles/stability.pdf>)
  
[2] Martin, Robert C. _Agile Principles, Patterns and Practices in C#_