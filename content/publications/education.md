---
title: Pesquisa em educação
layout: page
permalink: /research/education
---


{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

Artigos sobre educação em Ciência da Computação, baseados na minha experiência como professor:


{% for post in sorted %}
{% if post.categories contains "education" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}



