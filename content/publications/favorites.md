---
title: Publicações em destaque
layout: page
permalink: /publications/favorites
---

{% include publications-menu.md %}

Uma seleção dos meus trabalhos favoritos:

{% capture my_include %}{% include selected-publications.md %}{% endcapture %}
{{ my_include | markdownify }}
