---
title: Publications per venue
layout: page
permalink: /publications/venue
---

{% include publications-menu.md %}

{% assign top = site.publications | where: "bottom", nil | reverse %}
{% assign bottom = site.publications | where: "bottom", "true" %}
{% assign sorted = top | concat: bottom %}

## Journals

### Transactions on Software Engineering (TSE)

{% for post in sorted %}
{% if post.categories contains "tse" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


### Empirical Software Engineering (EMSE)

{% for post in sorted %}
{% if post.categories contains "emse" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


### Journal of Systems and Software (JSS)

{% for post in sorted %}
{% if post.categories contains "jss" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Journal of the Brazilian Computer Society (JBCS)

{% for post in sorted %}
{% if post.categories contains "jbcs" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Conferences


### International Conference on Software Engineering (ICSE)


{% for post in sorted %}
{% if post.categories contains "icse" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


### Foundations on Software Engineering (FSE)


{% for post in sorted %}
{% if post.categories contains "fse" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


### International Conference on Software Maintenance and Evolution (ICSME)

{% for post in sorted %}
{% if post.categories contains "icsme" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### International Conference on Program Comprehension (ICPC)

{% for post in sorted %}
{% if post.categories contains "icpc" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Mining Software Repositories (MSR)

{% for post in sorted %}
{% if post.categories contains "msr" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Automated Software Engineering (ASE)

{% for post in sorted %}
{% if post.categories contains "ase" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Software Analysis, Evolution and Reenginering (SANER / CSMR)

{% for post in sorted %}
{% if post.categories contains "saner" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### MobileSoft

{% for post in sorted %}
{% if post.categories contains "mobilesoft" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Technical Symposium on Computer Science Education (SIGCSE)


{% for post in sorted %}
{% if post.categories contains "sigcse" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


### Working Conference on Source Code Analysis and Manipulation (SCAM)

{% for post in sorted %}
{% if post.categories contains "scam" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Brazilian Symposium on Software Engineering (SBES)

{% for post in sorted %}
{% if post.categories contains "sbes" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

### Agile Conference (AGILE)

{% for post in sorted %}
{% if post.categories contains "agile" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}

## Workshops

{% for post in sorted %}
{% if post.categories contains "workshop" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}


## Arxiv

{% for post in sorted %}
{% if post.categories contains "arxiv" %}
{% include publication-snippet.html %}
{% endif %}
{% endfor %}
