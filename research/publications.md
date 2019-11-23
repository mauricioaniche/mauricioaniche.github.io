---
title: Publications
layout: page
permalink: /publications
---

{% include publications-menu.md %}


{% for post in site.posts %}
{% if post.categories contains "publication" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

