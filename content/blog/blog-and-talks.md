---
title: Blog, Talks, and podcasts
layout: page
permalink: /blog-and-talks
---

## Adyen

* [Test selection at Adyen: saving time and resources](https://www.adyen.com/knowledge-hub/test-selection-at-adyen)

* [Adyen Tech Academy: Taking Onboarding and Upskilling to The Next Level](https://www.adyen.com/knowledge-hub/taking-onboarding-and-upskilling-to-the-next-level)

## Podcasts and interviews

I love being part of podcasts and interviews. If you are looking for my participation in Brazilian Portuguese podcasts, <a href="/podcasts-br">click here</a>.

* [Beyond Coding Podcast #191 - What Most Engineers Get Wrong About Testing](https://www.youtube.com/watch?v=oFO85YFuXjg)

* [#177 - Simple Object-Oriented Design: Principles for Writing Clean & Maintainable Software - Mauricio Aniche](https://techleadjournal.dev/episodes/177/) in Tech Lead Podcast.

* [#139 - A Developer's Guide to Effective Software Testing - Mauricio Aniche](https://techleadjournal.dev/episodes/139/) in the Tech Lead Podcast.

* [Discussion with Mauricio Aniche on Object Oriented Design!](https://www.youtube.com/watch?v=vcrWLsChof4), in Laurentiu Spilca's Youtube channel

* [Effective Software Testing](https://www.software-engineering-unlocked.com/tests-find-bugs/) at the SE Unlocked podcast.

* [Testing anti patterns](https://www.codurance.com/publications/testing-anti-patterns) at the Codurance's podcast.

## Blog posts

I randomly blog about stuff:

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}

## Talks

{% assign sorted_talks = site.talks | reverse %}
{% for talk in sorted_talks %}
{% if talk.hide_from_list == nil %}
* [{{ talk.title }}{{ talk.extra }}]({{ talk.url }})
{% endif %}
{% endfor %}

If you want me to speak for your company, drop me a message.

## Software testing newsletter

Did you know I write a newsletter on software testing? You can see the previous published articles <a href="https://www.effective-software-testing.com/#articles">here</a> or subscribe to the newsletter right away!

<iframe src="https://effectivesoftwaretesting.substack.com/embed" style="border:1px solid #EEE; background:white;margin-top:1em;width:80%;height:250px;" frameborder="0" scrolling="no"></iframe>
