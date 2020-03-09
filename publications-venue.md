---
title: Publications per venue
layout: page
permalink: /publications/venue
---

{% include publications-menu.md %}

{% assign sorted = site.publications | reverse %}

## Journals

### Transactions on Software Engineering (TSE)

{% for post in sorted %}
{% if post.categories contains "tse" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


### Empirical Software Engineering (EMSE)

{% for post in sorted %}
{% if post.categories contains "emse" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


### Journal of Systems and Software (JSS)

{% for post in sorted %}
{% if post.categories contains "jss" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

## Conferences


### International Conference on Software Engineering (ICSE)


{% for post in sorted %}
{% if post.categories contains "icse" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


### Foundations on Software Engineering (FSE)


{% for post in sorted %}
{% if post.categories contains "fse" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


### International Conference on Software Maintenance and Evolution (ICSME)

{% for post in sorted %}
{% if post.categories contains "icsme" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Mining Software Repositories (MSR)

{% for post in sorted %}
{% if post.categories contains "msr" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Automated Software Engineering (ASE)

{% for post in sorted %}
{% if post.categories contains "ase" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Software Analysis, Evolution and Reenginering (SANER / CSMR)

{% for post in sorted %}
{% if post.categories contains "saner" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Technical Symposium on Computer Science Education (SIGCSE)


{% for post in sorted %}
{% if post.categories contains "sigcse" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


### Working Conference on Source Code Analysis and Manipulation (SCAM)

{% for post in sorted %}
{% if post.categories contains "scam" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Brazilian Symposium on Software Engineering (SBES)

{% for post in sorted %}
{% if post.categories contains "scam" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

### Agile Conference (AGILE)

{% for post in sorted %}
{% if post.categories contains "agile" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}

## Workshops

{% for post in sorted %}
{% if post.categories contains "workshop" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


## Arxiv

{% for post in sorted %}
{% if post.categories contains "arxiv" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}
