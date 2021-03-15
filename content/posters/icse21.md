---
title: ICSE 2021
layout: page
permalink: /icse21
---

[ICSE 2021](https://conf.researchr.org/home/icse-2021) is the premier venue in software engineering. My research group is proudly presenting ten papers in the different co-located events. 

_I thank all my 25 collaborators (listed in any order): Jeanderson Cândido, Jan Haesen, Arie van Deursen, Hendrig Sellik, Onno van Paridon, Georgios Gousios, Bart van Oort, Luís Cruz, Casper Schröder, Adriaan van der Feltz, Annibale Panichella, Henk Grent, Aleksei Akimov, Frank Mulder, Felienne Hermans, Eric Maziero, Rafael Durelli, Vinicius Durelli, Jürgen Cito, and Aaron Beigelbeck, Julian Harty, Haonan Zhang, Lili Wei, Luca Pascarella and Weiyi Shang_



{% assign top = site.publications | where: "bottom", nil | reverse %}
{% assign bottom = site.publications | where: "bottom", "true" %}
{% assign sorted = top | concat: bottom %}

{% for post in sorted %}
{% if post.posters contains "icse21" %}
{% include poster-snippet.html %}
{% endif %}
{% endfor %}

