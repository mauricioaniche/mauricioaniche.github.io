{% assign sorted = site.publications | reverse %}

{% for post in sorted %}
{% if post.categories contains "favorite" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}