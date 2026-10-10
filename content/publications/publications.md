---
title: Publicações científicas
layout: page
permalink: /publications
description: Acervo de pesquisas de Maurício Aniche sobre testes, qualidade e evolução de software, organizado por ano, tema e veículo.
---

Pesquisas sobre testes, manutenibilidade, evolução de software e práticas de engenharia. Explore o acervo por ano, tema ou veículo de publicação.

Os títulos bibliográficos são mantidos no idioma original para facilitar a busca e a citação. Os resumos estão em português.

{% include publications-menu.md %}

{% assign years = site.publications | map: 'year' | uniq | sort | reverse %}
{% for year in years %}
## {{ year }}

{% assign year_posts = site.publications | where: 'year', year | sort: 'date' | reverse %}
{% for post in year_posts %}
{% include publication-snippet.html %}
{% endfor %}
{% endfor %}
