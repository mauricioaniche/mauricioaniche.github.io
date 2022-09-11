---
title: Blog, Talks, and podcasts
layout: page
permalink: /blog-and-talks
---

{% include publications-menu.md %}

## Technical posts

* Aug 11, 2022 - ['I would have found this bug with E2E tests' is a fallacy!](https://www.effective-software-testing.com/finding-more-bugs-via-e2e-tests-is-a-fallacy)

* Jul 26, 2022 - [Intermediate data structures and observability](https://www.effective-software-testing.com/intermediate-data-structures-and-observability)

* Jul 21, 2022 - [Use case vs unit testing](https://www.effective-software-testing.com/use-case-vs-unit-testing)

* May 18, 2022 - [It's not about following a recipe!](https://www.effective-software-testing.com/it-is-not-about-following-a-recipe)

* Apr 10, 2022 - [Mocking framework vs mocks by hand](https://www.effective-software-testing.com/mocking-frameworks-or-mocks-by-hand)

* Mar 25, 2022 - [Should my end-to-end tests never stub stuff?](https://www.effective-software-testing.com/should-my-end-to-end-tests-never-stub-stuff)

* Mar 14, 2022 - [Do I systematically write tests all the time?](https://www.effective-software-testing.com/do-I-systematically-write-tests-all-the-time)

* Feb 25, 2022 - [Tests without assertions: why do they happen?](https://www.effective-software-testing.com/tests-without-assertions-why-do-they-happen)

* Feb 10, 2022 - [What do I mean by effective and systematic testing?](https://www.effective-software-testing.com/effective-and-systematic)

* Jan 19, 2022 - [Do unit tests make refactoring harder?](https://www.effective-software-testing.com/do-unit-tests-make-refactoring-harder)

* Jan 5, 2022 - [Can we get fully rid of flaky tests?](https://www.effective-software-testing.com/can-we-get-fully-rid-of-flaky-tests)

* Dec 2, 2021 - [When do I do TDD?](https://www.effective-software-testing.com/when-do-I-do-TDD)

* Nov 24, 2021 - [What makes a good test code?](https://www.effective-software-testing.com/what-makes-a-good-test-code)

* Nov 18, 2021 - [Why do developers hate code coverage? And why they should not hate it!](https://www.effective-software-testing.com/why-do-developers-hate-code-coverage)

## Personal posts

Some non-peer-reviewed stuff, with a more personal angle: 

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}

## Talks

Some of my public talks below. If you want me to speak for your company, drop me a message.

{% assign sorted_talks = site.talks | reverse %}
{% for talk in sorted_talks %}

* {{ talk.date | date: "%d-%b-%Y" }}: [{{ talk.title }}]({{ talk.url }})

{% endfor %}

## Youtube videos

* Mar, 2022 - [How coverage can be used and abused to guide testing](https://www.youtube.com/watch?v=f1DueZcSxRs)

* 2017 - [What's MC/DC coverage?](https://www.youtube.com/watch?v=bwtALQVx86w)

## Podcasts

I love being part of podcasts. Here's some of participations. I'm sorry most of them are in Brazilian Portuguese:

* [Effective Software Testing at SE Unlocked](https://www.software-engineering-unlocked.com/tests-find-bugs/)

* [Testing anti patterns at Codurance's podcast](https://www.codurance.com/publications/testing-anti-patterns)

* [An interview with me at HIDEV](https://open.spotify.com/episode/3Sp8qQ8GNAPihGJtpvYdfn?si=aahL3EILQ0aE0Kb-HmuoVA&utm_source=copy-link&nd=1) _(in portuguese)_

* [AI for software testing at HIDEV](https://open.spotify.com/episode/7oZo3N0s4guhnedufoCjMG?si=NcNcAv34S-KNDZSMJ9-PJQ&utm_source=copy-link&nd=1) _(in portuguese)_

* [Machine Learning for Software Engineering at Fronteiras da Engenharia de Software](https://anchor.fm/fronteirases/episodes/Aprendizado-de-Mquina-em-Engenharia-de-Software--com-Maurcio-Aniche-TU-Delft-e1acmcc) _(in portuguese)_

* [Design patterns at Hipsters.tech](https://www.hipsters.tech/design-patterns-hipsters-206/) _(in portuguese)_

* [Pesquisa em Engenharia de Software at Hipsters.tech](https://www.hipsters.tech/pesquisa-em-engenharia-de-software-hipsters-84/) _(in portuguese)_ 

* [SOLID at Hipsters.tech](https://www.hipsters.tech/solid-codigo-bom-e-bonito-hipsters-ponto-tech-219/) _(in portuguese)_ 

* [Testes automatizados at Hipsters.tech](https://www.hipsters.tech/testes-automatizados-hipsters-51/) _(in portuguese)_

* [Academic carrer at Lambda 3](https://www.lambda3.com.br/2021/12/lambda3-podcast-277-carreira-academica-em-ti/) _(in portuguese)_

* [An interview with me, by Adolfo Neto](https://www.youtube.com/watch?v=008ZT3aM87w) _(in portuguese)_

* [Industry vs Academia with Maurício Aniche, by The Wise Dev](https://www.youtube.com/watch?v=H2wS2Ql1X2I) _(in portuguese)_

* [TDD at Lambda3](https://www.lambda3.com.br/2017/03/podcast-36-tdd/) _(in portuguese)_ 

* [TDD at Bluesoft](https://www.youtube.com/watch?v=4scehXjiTCc) _(in portuguese)_
