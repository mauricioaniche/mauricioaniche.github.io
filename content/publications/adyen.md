---
title: Research at Adyen
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

