---
title: "Test selection at Adyen: saving time and resources"
download: "https://www.adyen.com/knowledge-hub/test-selection-at-adyen"
authors: "Mauricio Aniche"
conference: "Adyen's blog post"
categories: ["blog", "testing", "adyen", "selected-testing"]
year: 2024
---

If you work on a large-scale software system, odds are that a significant part of your build goes to test execution. It so often happens that you change one line of code but you get thousands of tests running, even though the majority of those tests don't even get close to that line of code.

Test selection is a problem that software engineering researchers have been working on for decades now, but surprisingly there are no industry-wide solutions yet; therefore, companies might need to implement their own services for that. 

At Adyen, we implemented our own test selection tool. We saw benefits such as a reduction in the number of tests executed by 30x, CPU time savings by 12x, and overall pipelines faster by 10% to 30%.

* [Blog post](https://www.adyen.com/knowledge-hub/test-selection-at-adyen)