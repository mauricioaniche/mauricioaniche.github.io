---
title: Publications per topic
layout: page
permalink: /publications/topic
---

{% include publications-menu.md %}

## Software Maintenance (evolution, refactoring, and comprehension)


{% for post in site.posts %}
{% if post.categories contains "maintenance" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


## Software Testing

{% for post in site.posts %}
{% if post.categories contains "testing" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


## Runtime monitoring, log analysis, and DevOps

{% for post in site.posts %}
{% if post.categories contains "monitoring" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}



## APIs

{% for post in site.posts %}
{% if post.categories contains "api" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

## Human Factors in Software Engineering

{% for post in site.posts %}
{% if post.categories contains "human-factors" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

## Mining Software Repository

{% for post in site.posts %}
{% if post.categories contains "msr" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

## Software Engineering Education

{% for post in site.posts %}
{% if post.categories contains "education" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}