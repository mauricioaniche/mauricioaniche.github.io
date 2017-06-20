---
id: 178
title: Restfulie 0.5.0 has been released!
date: 2010-07-12T12:03:21+00:00
author: mauricioaniche
layout: post
guid: http://www.aniche.com.br/?p=178
permalink: /2010/07/restfulie-0-5-0-has-been-released/
categories:
  - Blog em Português
tags:
  - asp.net mvc 2
  - REST
  - restfulie
---
[Mauricio Aniche](http://www.twitter.com/mauricioaniche) with contributions from [Pedro Reys](http://www.twitter.com/pedroreys) and [Felipe Seixas](http://www.twitter.com/seixasfelipe) have released the Restfulie&#8217;s C# Server 0.5  support on top of Asp.Net Mvc 2.

As new versions of Restfulie come up, it becomes more clear which extension points are important and should be easy to be used, the media type and http results are two of those aspects that Restfulie C# tries to help the developers by allowing them to write classes focused on one task only as we shall see here.

A simple C# Item model can be rendered in your controller as in ruby and java:

<pre class="csharp">[ActAsRestfulie]
public class ItemsController : Controller
{
private MemoryDatabase database;

public ItemsController()
{
  database = new MemoryDatabase();
}

public virtual ActionResult Index()
{
  return new Ok(database.List());
}

public virtual ActionResult Get(int id)
{
  var item = database.List().Where(i =&gt; i.Id == id).SingleOrDefault();
  if (item == null) return new NotFound();
  return new OK(item);
}
}
</pre>

If you want to add some link relations to any resource, simply let your model implement IBehaveAsResource and add the SetRelations method:

<pre class="csharp">public class Item : IBehaveAsResource
{
public void SetRelations(Relations relations)
{
  relations.Named("self").Uses().Get(Id);
  relations.Named("origin").At("http://www.some-fabric.com/");
}
}
</pre>

The http GET request to an item with application/json in the accept header will now return:

<pre class="javascript">{"Id":1,"Name":"Pencil","Price":"1.50",
"links":[{"rel":"self","href":"http://localhost:1198/Items/1"},
{"rel":"origin","href":"http://www.some-fabric.com/"}]}
</pre>

But we know relations work in different ways with different media types (and the Link header) so you might want to add your own media type marshaller/unmarshaller, which is capable of understanding a new media type. Restfulie C# comes with support for application/json, application/xml and application/atom+xml.

If you want to add your own result, simply implement a RestfulieResult using a series of decorators to your new result:

<pre class="csharp">public class OK : RestfulieResult
{
public OK() { }
public OK(object model) : base(model) { }

public override ResultDecorator GetDecorators()
{
  return new StatusCode((int)HttpStatusCode.OK,
    new ContentType(MediaType.Synonyms.First(),
    new Content(BuildContent())));
}
}
</pre>

This [release documentation is already out](http://wiki.github.com/mauricioaniche/restfulie.net/) and the [download](http://github.com/mauricioaniche/restfulie.net/downloads) can also be done at github.

Restfulie C# requires the dot net framework 3.5+, and uses castle in order to create dynamic proxy for setting up relations.﻿