{% for post in site.posts %}
{% if post.categories contains "selected" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}