---
id: 677
title: Como você usa construtores?
date: 2015-11-28T23:24:00+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=677
permalink: /2015/11/como-voce-usa-construtores/
categories:
  - Blog em Português
tags:
  - boas práticas
  - construtores
  - oop
  - orientação à objetos
---
Construtores são legais, afinal, eles nos permitem garantir que uma classe não será instanciada sem alguns dados básicos. No entanto, a dúvida sempre aparece: **o que devemos passar pelo construtor e o que devemos passar pelo método?**

Bem, minhas regras pessoais são:

  * Se a classe é uma entidade, então eu peço no construtor todos os dados necessários para que a entidade seja válida. Por exemplo, _Pessoa_ precisa de _nome_, vai pelo construtor.

<div id="wrap_githubgist6404d0787e0d6f283f4d" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

  * Se a classe não é uma entidade, e ela precisa de &#8220;ferramentas de trabalho&#8221; (outras dependências, como DAOs, etc), eu as passo todas pelo construtor, sempre. Já os valores que serão utilizados ao longo do processamento, eu passo sempre pelo método.

<div id="wrap_githubgist2e68553c0afa6bd14c68" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

  * Se algum dos frameworks que estou usando me obrigar a ter um construtor default, eu o crio, com a menor visibilidade possível, e o anoto com @Deprecated.

<div id="wrap_githubgistfa05d7ca8c467b402cce" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

  * Se estou refatorando algum código legado, não me incomodo de ter um construtor padrão, fazendo alguma ação padrão.

<div id="wrap_githubgist5cf61842a4abd9c440be" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

  * Se minha classe aceita diferentes combinações de valores obrigatórios, tenho diferentes construtores. Em entidades, se tenho atributos não obrigatórios, às vezes crio dois construtores, recebendo e não recebendo aquele atributo. Depende da situação.

<div id="wrap_githubgistb0a5e27ceb8ab0eaac9c" style="width:100%">
  <div style='margin-bottom:1em;padding:0;'>
    <noscript>
      <code>&lt;pre style='overflow:auto;margin:0;padding:0;border:1px solid #DDD;'>Not Found&lt;/pre></code>
    </noscript>
  </div>
</div>

Acho que é isso. Se vc tiver as suas regras, estou curioso para conhecê-las!