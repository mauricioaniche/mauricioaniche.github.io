---
title: Pesquisa em engenharia de software
seo_title: Pesquisa em engenharia de software — Maurício Aniche
description: Conheça a trajetória de pesquisa de Maurício Aniche em testes, manutenção, aprendizado de máquina e monitoramento de software.
layout: page
permalink: /research
---

Minha trajetória de pesquisa conecta problemas reais de desenvolvimento a evidências e ferramentas que ajudam engenheiros a construir sistemas melhores. Hoje, meu foco está na liderança de engenharia, mas o acervo de trabalhos continua disponível aqui.

{% include publications-menu.md %}
{% assign sorted = site.publications | sort: 'date' | reverse %}

## Manutenção e evolução de software

Como tornar o código mais fácil de entender, refatorar e evoluir? Minha pesquisa considera o contexto das arquiteturas para identificar os trechos que tornam sistemas web e mobile difíceis de manter.

{% for post in sorted %}
{% if post.categories contains 'selected-maintenance' %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Testes de software

Testes também são código. Investiguei como ajudar desenvolvedores a criar casos de teste eficazes e manter grandes suítes de testes automatizados.

{% for post in sorted %}
{% if post.categories contains 'selected-testing' %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Aprendizado de máquina para engenharia de software

Modelos de aprendizado de máquina podem apoiar tarefas de manutenção que são difíceis de modelar manualmente. Essa linha de pesquisa explora como usar esses modelos no trabalho de desenvolvimento.

{% for post in sorted %}
{% if post.categories contains 'selected-ml4se' %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Monitoramento e análise de logs

Em sistemas complexos, os testes precisam ser complementados pelo monitoramento. Pesquisei ferramentas que ajudam desenvolvedores a entender o comportamento dos sistemas em produção a partir dos logs.

{% for post in sorted %}
{% if post.categories contains 'selected-monitoring' %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}
