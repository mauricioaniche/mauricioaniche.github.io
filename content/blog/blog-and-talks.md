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

## Podcasts

I love being part of podcasts. If you are looking for my participation in Brazilian Portuguese podcasts, <a href="/podcasts-br">click here</a>.

* [Effective Software Testing at SE Unlocked](https://www.software-engineering-unlocked.com/tests-find-bugs/)

* [Testing anti patterns at Codurance's podcast](https://www.codurance.com/publications/testing-anti-patterns)


## Personal posts

Some other stuff that didn't fit any other category: 

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}
