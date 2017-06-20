---
id: 237
title: 'Eu preciso de 100% de cobertura de testes?'
date: 2011-02-22T16:40:44+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=237
permalink: /2011/02/sera-que-eu-preciso-de-100-de-cobertura-de-testes/
categories:
  - Blog em Português
tags:
  - cobertura de código
  - tdd
  - teste de integração
  - teste de software
  - teste de unidade
---
**Mito: não ter 100% de cobertura é a mesma coisa que nada!**

Muitas pessoas discutem a necessidade de ter 100% de cobertura em um código. Mas não vejo problemas em códigos que não tenham 100% de cobertura de testes de unidade. 

Acredito que isso deve ser uma meta da equipe, buscar sempre a maior cobertura possível; mas essa é uma meta que você provavelmente _não vai alcançar_; alguns trechos de código simplesmente não valem a pena serem testados de maneira isolada!

Explico: Veja essa classe do [Restfulie.NET](http://www.github.com/mauricioaniche/restfulie.net/), por exemplo, chamada [AspNetMvcUrlGenerator](https://github.com/mauricioaniche/restfulie.net/blob/master/Restfulie.Server/Marshalling/UrlGenerators/AspNetMvcUrlGenerator.cs): ela serve para gerar URLs para Actions em Controllers, utilizando as rotas pré-definidas. Repare que ela faz uso intenso das APIs do Asp.Net MVC, utilizando inclusive alguns métodos estáticos (que sabemos que é difícil de testar) como no HttpContext. 

<pre lang="java">public class AspNetMvcUrlGenerator : IUrlGenerator
    {
        public string For(string controller, string action, IDictionary&lt;string, object> values)
        {
            var httpContextWrapper = new HttpContextWrapper(HttpContext.Current);
            var urlHelper = new UrlHelper(new RequestContext(httpContextWrapper, 
              RouteTable.Routes.GetRouteData(httpContextWrapper)));

            return FullApplicationPath(httpContextWrapper.Request) + 
              urlHelper.Action(action, controller, new RouteValueDictionary(values));
        }

        private string FullApplicationPath(HttpRequestBase request)
        {
            var url = request.Url.AbsoluteUri.Replace(request.Url.AbsolutePath, 
               string.Empty) + request.ApplicationPath;
            return url.EndsWith("/") ? url.Substring(0, url.Length - 1) : url;
        }
    }
</pre>

Eu até poderia ter feito alguma mágica e escrito um teste de unidade para esse código. Mas para quê? Apenas para aumentar o número? **Não faz sentido!** Esse trecho de código precisa de um teste de integração, e não de um teste de unidade!

Um outro exemplo é o teste de propriedades (Properties do C#). Preciso realmente deles? A própria linguagem implementou isso pra mim. O mesmo acontece no caso dos getters/setters do Java, onde o programador geralmente usa o Eclipse para gerá-los.

Você precisa cobrir seu código de testes, mas você pode usar testes de diferentes níveis para isso (testes de unidade, de integração, de sistema, etc)! **Escrever testes de unidade inúteis, apenas para chegar nos 100% de cobertura, é desperdício**.