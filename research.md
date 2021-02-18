---
title: Research
layout: page
permalink: /research
---

{% assign sorted = site.publications | reverse %}

**Software maintenance** can be quite expensive in practice. Researchers 
estimate that 60% of the costs of a software
is dedicated to its evolution, e.g., enhancements and bug fixes.
Therefore, tools and techniques that help developers in better maintaining their
software systems are of utmost importance to our society.

To that aim, I focus my research on three topics:

- **Software maintenance, refactoring, and evolution**: can we help developers in writing more maintainable and
easy-to-evolve code? Can we help developers in better comprehending the source code of complex systems? Can we help developers in detecting problematic pieces of code that need to be refactored? Can we help them in refactor their code?

- **Software testing**: Can we help developers in testing their software? Can we
help developers in maintaining the large automated test suites they write?

- **Software monitoring and log analysis**: Can we help developers in monitoring their systems? How can we leverage log data to give developers insights about how their systems behave in production?

_TU Delft MSc students_: Are you looking for thesis ideas on these topics? Read my [guidelines for MSc students](/msc-students) and message me.

_(Dutch) industrial partners_: If you are interested in partnering up for research in any of these topics, just message me!

## Software maintenance (evolution, refactoring, comprehension)

Lots of research have been focusing on high-level quality measurements, such as
coupling and cohesion in object-oriented systems.
My research focuses on understanding and detecting
what constitutes hard-to-maintain
pieces of code in specific architectures, such as web and mobile applications.
A key characteristic
of my research is that it takes _the context_ of the system as a fundamental
part of the model.

**Key publications:**

{% for post in sorted %}
{% if post.categories contains "selected-maintenance" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


## Software testing

In modern software development, testing _is_ code. My research focuses on
helping developers in understanding what are the characteristics of a
maintainable test code suite. 

**Key publications:**

{% for post in sorted %}
{% if post.categories contains "selected-testing" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}


## Software monitoring and log analysis

Testing might not be enough in large-scale complex systems. Thus, monitoring
is fundamental to their maintenance. My research focuses on better understanding
and providing tools for modern software monitoring. This research is done together
with [Adyen B.V.](http://www.adyen.com), a large-scale payment company that provides
services for more than 4,500 companies all around the world. 

**Key publications:**

{% for post in sorted %}
{% if post.categories contains "selected-monitoring" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}



## Industry collaboration

I highly value applied research. See the list of publications I have with industrial partners. If you are interested in university-industry collaboration, feel free to contact me!

{% for post in sorted %}
{% if post.categories contains "industry-collaboration" %}
{% include publication-snippet.md %}
{% endif %}
{% endfor %}
