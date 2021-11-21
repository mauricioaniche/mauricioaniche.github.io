---
title: Blog and Talks
layout: page
permalink: /blog-and-talks
---

{% include publications-menu.md %}

## Blog posts

Some non-peer-reviewed stuff: 

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}

I also write testing related stuff in the <a href="https://www.effective-software-testing.com">website of my Effective Software Testing</a> book.

## Talks

Some of my public talks below. If you want me to speak for your company, drop me a message.

{% assign sorted_talks = site.talks | reverse %}
{% for talk in sorted_talks %}

* {{ talk.date | date: "%d-%b-%Y" }}: [{{ talk.title }}]({{ talk.url }})

{% endfor %}


