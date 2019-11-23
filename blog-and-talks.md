---
title: Blog and Talks
layout: page
---

(Want me to talk at your conference? Just send me a message.)

## Talks

{% for talk in site.talks %}

* {{ talk.date | date: "%d-%b-%Y" }}: [{{ talk.title }}]({{ talk.url }})

{% endfor %}


## Blog posts

* Blog post: [Testing vs writing tests](https://medium.com/@mauricioaniche/testing-vs-writing-tests-d817bffea6bc)

* Blog post: [What do we (not) know about Domain-Driven Design?](https://codeburst.io/what-do-we-not-know-about-ddd-93727bc5908c)


