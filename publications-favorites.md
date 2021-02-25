---
title: Favorite publications
layout: page
permalink: /publications/favorites
---

{% include publications-menu.md %}

These are my favourite papers of all times:

{% capture my_include %}{% include selected-publications.md %}{% endcapture %}
{{ my_include | markdownify }}
