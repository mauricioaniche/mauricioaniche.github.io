---
title: Pesquisas na Adyen
seo_title: Pesquisas na Adyen — Maurício Aniche
description: Pesquisas de Maurício Aniche em colaboração com a Adyen sobre testes, análise de logs, APIs e evolução de sistemas de software.
layout: page
permalink: /research/adyen
---


{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

{% for post in sorted %}
{% if post.categories contains "adyen" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

