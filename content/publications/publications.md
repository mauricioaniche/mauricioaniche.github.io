---
title: Publications
layout: page
permalink: /publications
---

{% include publications-menu.md %}

{% assign top = site.publications | where: "bottom", nil | reverse %}
{% assign bottom = site.publications | where: "bottom", "true" %}
{% assign sorted = top | concat: bottom %}

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



