---
id: 274
title: Testando datas (e métodos estáticos)
date: 2011-09-21T16:26:41+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=274
permalink: /2011/09/testando-datas-e-metodos-estaticos/
categories:
  - Blog em Português
tags:
  - API de data
  - métodos estáticos
  - tdd
  - testabilidade
  - teste de unidade
---
Muitas pessoas me perguntam como escrever testes de unidade de classes que lidam com datas. E, geralmente o problema está em como testar classes que usam a data/hora atual.

Esse problema acontece pois grande parte das APIs que lidam com datas, tanto no mundo .Net quanto no mundo Java, fazem uso de métodos estáticos. Por exemplo:

<pre lang="brush:csharp">DateTime.Now // C#
Calendar.getInstance() // Java
</pre>

Generalizando o problema, a dificuldade nao é testar datas, mas sim qualquer classe que faz uso de métodos estáticos. Por exemplo, como escrever um teste para o método abaixo?

<pre lang="brush:csharp">public int DiasEntreHjEAData(DateTime data) {
  return (DateTime.Now - data).TotalDays;
}
</pre>

A propriedade **Now** sempre irá devolver a data corrente, dificultando assim a escrita do teste; como escrever um teste onde o cenário muda o tempo todo?

Não conseguir simular o comportamento do método **Now**, e esse eh um dos problemas de usar métodos estáticos: dificulta o teste das classes que os utilizam (além de não permitir o uso decente de polimorfismo, mas isso é uma outra discussão&#8230;)

Para resolver esse problema, precisamos deixar de usar métodos estáticos. Mas e como fazer com as APIs que já existem, e não podemos mudá-las, como é o caso da API de _DateTime_? 

Isso não nos impede de criarmos uma abstração em cima disso! Veja o código abaixo:

<pre lang="brush:csharp">public interface Relogio {
  DateTime Hoje();
}

public class RelogioDoSistema : Relogio {
  public DateTime Hoje() {
    return DateTime.Now;
  }
}
</pre>

Veja que criamos a interface _Relogio_, que abstrai o problema de calcular a hora atual. Nosso método acima agora, em vez de invocar o método estático, faz uso da nova abstração:

<pre lang="brush:csharp">public class Algoritmo {

  // recebido pelo construtor
  private Relogio relogio;

  public int DiasEntreHjEAData(DateTime data) {
    return (relogio.Hoje() - data).TotalDays;
  }
}
</pre>

Pronto. Veja agora que testar essa classe é facil. Basta passarmos um mock e simular o comportamento esperado do _Relogio_.

Resumindo, métodos estáticos dificultam a escrita de testes de unidade. Para resolver isso podemos: evitar a escrita de métodos estáticos, ou criar abstrações que escondem esses métodos. Nao é feio criar abstrações como a _Relogio_; feio é não testar! 🙂