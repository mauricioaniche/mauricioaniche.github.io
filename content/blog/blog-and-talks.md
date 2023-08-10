---
title: Blog, Talks, and podcasts
layout: page
permalink: /blog-and-talks
---

{% include publications-menu.md %}

## Software testing

Did you know I write a newsletter on software testing? You can see the previous published articles <a href="https://www.effective-software-testing.com/#articles">here</a> or subscribe to the newsletter right away!

<iframe src="https://effectivesoftwaretesting.substack.com/embed" style="border:1px solid #EEE; background:white;margin-top:1em;width:80%;height:250px;" frameborder="0" scrolling="no"></iframe>

## Talks

If you want me to speak for your company, drop me a message.

{% assign sorted_talks = site.talks | reverse %}
{% for talk in sorted_talks %}
{% if talk.hide_from_list == nil %}
* [{{ talk.title }}]({{ talk.url }})
{% endif %}
{% endfor %}

## Podcasts and interviews

I love being part of podcasts and interviews. If you are looking for my participation in Brazilian Portuguese podcasts, <a href="/podcasts-br">click here</a>.

* [#139 - A Developer's Guide to Effective Software Testing - Mauricio Aniche](https://techleadjournal.dev/episodes/139/) in the Tech Lead Podcast.

* [Discussion with Mauricio Aniche on Object Oriented Design!](https://www.youtube.com/watch?v=vcrWLsChof4), in Laurentiu Spilca's Youtube channel

* [Effective Software Testing](https://www.software-engineering-unlocked.com/tests-find-bugs/) at the SE Unlocked podcast.

* [Testing anti patterns](https://www.codurance.com/publications/testing-anti-patterns) at the Codurance's podcast.


## Other blog posts

Some other stuff that didn't fit any other category: 

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}
