---
title: ICSE 2021
seo_title: Pesquisas no ICSE 2021 — Maurício Aniche
description: Conheça os dez artigos apresentados pelo grupo de pesquisa de Maurício Aniche nos eventos associados ao ICSE 2021.
layout: page
permalink: /icse21
---

[ICSE 2021](https://conf.researchr.org/home/icse-2021) é uma das principais conferências de engenharia de software. Meu grupo de pesquisa apresentou dez artigos nos diferentes eventos associados à edição de 2021.

_Agradeço aos meus 25 colaboradores (listados sem ordem específica): Jeanderson Cândido, Jan Haesen, Arie van Deursen, Hendrig Sellik, Onno van Paridon, Georgios Gousios, Bart van Oort, Luís Cruz, Casper Schröder, Adriaan van der Feltz, Annibale Panichella, Henk Grent, Aleksei Akimov, Frank Mulder, Felienne Hermans, Eric Maziero, Rafael Durelli, Vinicius Durelli, Jürgen Cito, Aaron Beigelbeck, Julian Harty, Haonan Zhang, Lili Wei, Luca Pascarella, e Weiyi Shang._


{% include get-all-publications.md %}

{% for post in sorted %}
{% if post.posters contains "icse21" %}
{% include poster-snippet.html %}
{% endif %}
{% endfor %}

