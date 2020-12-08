---
title: Selected publications
layout: page
permalink: /publications/selected
---

{% include publications-menu.md %}

<section>
  <div class="container">

    <h2>Selected Publications</h2>

{% capture my_include %}{% include selected-publications.md %}{% endcapture %}
{{ my_include | markdownify }}

  </div>

</section>