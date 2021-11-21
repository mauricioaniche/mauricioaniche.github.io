---
title: Research at Adyen
layout: page
permalink: /research/adyen
---


{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

We do a lot of research at Adyen, usually by means of MSc thesis internships. If you are a TU Delft student, and want to do some nice research here, drop me an e-mail.

{% for post in sorted %}
{% if post.categories contains "adyen" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

