---
title: Publications
layout: page
permalink: /publications
---

{% include publications-menu.md %}

{% include get-all-publications.md %}

## 2024

{% for post in sorted %}
{% if post.year == 2024 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2022

{% for post in sorted %}
{% if post.year == 2022 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2021

{% for post in sorted %}
{% if post.year == 2021 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2020

{% for post in sorted %}
{% if post.year == 2020 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2019

{% for post in sorted %}
{% if post.year == 2019 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2018

{% for post in sorted %}
{% if post.year == 2018 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2017

{% for post in sorted %}
{% if post.year == 2017 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2016

{% for post in sorted %}
{% if post.year == 2016 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## 2015-2010

{% for post in sorted %}
{% if post.year <= 2015 %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}



