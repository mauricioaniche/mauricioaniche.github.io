---
title: Colaborações com a indústria
seo_title: Pesquisa com a indústria — Maurício Aniche
description: Trabalhos de pesquisa aplicada de Maurício Aniche com parceiros da indústria, conectando desafios reais de desenvolvimento à engenharia de software.
layout: page
permalink: /publications/industry
---

{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

Valorizo a pesquisa aplicada. Aqui estão os trabalhos que desenvolvi com parceiros da indústria. Para conversar sobre colaboração entre universidade e empresas, entre em contato.

{% for post in sorted %}
{% if post.categories contains "industry-collaboration" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

