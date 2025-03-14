---
title: "Test selection at Adyen"
layout: page
categories: ["talk"]
---

If you work on a large-scale software system, odds are that a significant part of your build goes to test execution. It so often happens that you change one line of code but you get thousands of tests running, even though the majority of those tests don't even get close to that line of code. This happens because build tools don't know much about what your tests really cover and because they are quite conservative. Test selection is a problem that software engineering researchers have been working on for decades now. In this talk, I'll describe all the technical details of how we've implemented our own test selection algorithm at Adyen. The benefits were significant: 30x reduction in test case execution, 12x reduction in CPU time, and pipelines 10%-30% faster.

This talk is based on our blog post [Test selection at Adyen: saving time and resources](https://www.adyen.com/knowledge-hub/test-selection-at-adyen).

## Slides

<embed src="{{ site.url }}/assets/pdf/test-selection-at-adyen.pdf" type="application/pdf" width="100%" height="600px" />