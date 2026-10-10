---
title: Palestras, podcasts e entrevistas
layout: page
permalink: /blog-and-talks
---

Conversas e apresentações sobre testes, design de software, pesquisa e carreira. Para os artigos publicados aqui, visite o [blog](/blog).

## Artigos em outros sites

* [Seleção de testes na Adyen: economizando tempo e recursos](https://www.adyen.com/knowledge-hub/test-selection-at-adyen)
* [Adyen Tech Academy: levando integração e capacitação a outro nível](https://www.adyen.com/knowledge-hub/taking-onboarding-and-upskilling-to-the-next-level)

## Podcasts e entrevistas

Gosto de participar de conversas sobre engenharia de software. Confira também minhas participações em [podcasts brasileiros](/podcasts-br).

* [Escalabilidade dos testes — Hillside PatternCast](https://podcasts.apple.com/pt/podcast/15-test-scalability-with-mauricio-aniche/id1746508789?i=1000717362663)
* [O que a maioria dos engenheiros entende errado sobre testes — Beyond Coding #191](https://www.youtube.com/watch?v=oFO85YFuXjg)
* [Design orientado a objetos simples — Tech Lead Journal #177](https://techleadjournal.dev/episodes/177/)
* [Um guia de testes eficazes para desenvolvedores — Tech Lead Journal #139](https://techleadjournal.dev/episodes/139/)
* [Uma conversa sobre design orientado a objetos com Laurentiu Spilca](https://www.youtube.com/watch?v=vcrWLsChof4)
* [Testes eficazes de software — SE Unlocked](https://www.software-engineering-unlocked.com/tests-find-bugs/)
* [Antipadrões de testes — Codurance](https://www.codurance.com/publications/testing-anti-patterns)

## Palestras

{% assign sorted_talks = site.talks | sort: 'date' | reverse %}
{% for talk in sorted_talks %}
{% if talk.hide_from_list == nil %}
* [{{ talk.title }}{{ talk.extra }}]({{ talk.url }})
{% endif %}
{% endfor %}

Quer uma palestra para sua empresa? [Entre em contato](/contact).

## Newsletter sobre testes de software

Publico também artigos em inglês sobre testes. [Leia as edições anteriores](https://www.effective-software-testing.com/#articles) ou [assine a newsletter](https://effectivesoftwaretesting.substack.com/).
