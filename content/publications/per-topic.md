---
title: Publicações por tema
layout: page
permalink: /publications/topic
---

{% include publications-menu.md %}

{% include get-all-publications.md %}

## Manutenção de software (evolução, refatoração e compreensão)


{% for post in sorted %}
{% if post.categories contains "maintenance" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## Testes de software

{% for post in sorted %}
{% if post.categories contains "testing" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## Monitoramento, análise de logs e DevOps

{% for post in sorted %}
{% if post.categories contains "monitoring" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Aprendizado de máquina para engenharia de software

{% for post in sorted %}
{% if post.categories contains "ml4se" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Segurança de software

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

## Fatores humanos em engenharia de software

{% for post in sorted %}
{% if post.categories contains "human-factors" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Mineração de repositórios de software

{% for post in sorted %}
{% if post.categories contains "msr" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Educação em engenharia de software

{% for post in sorted %}
{% if post.categories contains "education" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

