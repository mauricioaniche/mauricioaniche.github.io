---
title: Research at Adyen
layout: page
permalink: /research/education
---


{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

I often write computer science education papers, based on my experience as a teacher:


{% for post in sorted %}
{% if post.categories contains "education" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}



