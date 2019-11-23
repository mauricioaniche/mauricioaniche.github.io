---
title: Publications
layout: page
permalink: /publications
---

{% include publications-menu.md %}

{% assign sorted = site.publications | reverse %}
{% for post in sorted %}
{% include publication-snippet.md %}
{% endfor %}

