---
title: Industry collaborations
layout: page
permalink: /publications/industry
---

{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

I highly value applied research. See the list of publications I have with industrial partners. If you are interested in university-industry collaboration, feel free to contact me!

{% for post in sorted %}
{% if post.categories contains "industry-collaboration" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

