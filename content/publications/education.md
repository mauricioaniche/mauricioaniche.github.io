---
title: Pesquisa em educação
seo_title: Pesquisa em educação — Maurício Aniche
description: Artigos de Maurício Aniche sobre educação em Ciência da Computação e ensino de engenharia de software, a partir de sua experiência como professor.
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



