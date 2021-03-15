{% assign top = site.publications | reverse | where_exp:"item",
"item.bottom == nil" %}
{% assign bottom = site.publications | where: "bottom", "true" %}
{% assign sorted = top | concat: bottom %}