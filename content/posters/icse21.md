---
title: ICSE 2021
layout: page
permalink: /icse21
---

[ICSE 2021](https://conf.researchr.org/home/icse-2021) is the premier venue in software engineering. My research group is proudly presenting seven (!) papers in the different co-located events. 

{% assign sorted = site.publications | reverse %}
{% for post in sorted %}
{% if post.posters contains "icse21" %}
{% include poster-snippet.html %}
{% endif %}
{% endfor %}

