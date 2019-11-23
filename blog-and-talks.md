---
title: Blog and Talks
layout: page
---

(Want me to talk at your conference? Just send me a message.)

## Talks

{% assign sorted_talks = site.talks | reverse %}
{% for talk in sorted_talks %}

* {{ talk.date | date: "%d-%b-%Y" }}: [{{ talk.title }}]({{ talk.url }})

{% endfor %}


## Blog posts

{% assign sorted_posts = site.blog | reverse %}
{% for post in sorted_posts %}

* {{ post.date | date: "%d-%b-%Y" }}: [{{ post.title }}]({{ post.url }})

{% endfor %}