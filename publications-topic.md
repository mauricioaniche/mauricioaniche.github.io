---
title: Publications per topic
layout: page
permalink: /publications/topic
---

{% include publications-menu.md %}

{% assign sorted = site.publications | reverse %}

## Software Maintenance (evolution, refactoring, and comprehension)


{% for post in sorted %}
{% if post.categories contains "maintenance" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## Software Testing

{% for post in sorted %}
{% if post.categories contains "testing" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## Runtime monitoring, log analysis, and DevOps

{% for post in sorted %}
{% if post.categories contains "monitoring" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Machine Learning for Software Engineering

{% for post in sorted %}
{% if post.categories contains "ml4se" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Software Security

{% for post in sorted %}
{% if post.categories contains "security" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## APIs

{% for post in sorted %}
{% if post.categories contains "api" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Human Factors in Software Engineering

{% for post in sorted %}
{% if post.categories contains "human-factors" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Mining Software Repository

{% for post in sorted %}
{% if post.categories contains "msr" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Software Engineering Education

{% for post in sorted %}
{% if post.categories contains "education" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

