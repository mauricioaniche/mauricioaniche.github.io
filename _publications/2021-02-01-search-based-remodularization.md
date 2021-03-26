---
title: "Search-Based Software Re-Modularization: A Case Study at Adyen"
download: "https://arxiv.org/abs/2102.00701"
authors: "Casper Schröder, Adriaan van der Feltz, Annibale Panichella, Maurício Aniche"
conference: "IEEE/ACM 43rd International Conference on Software Engineering: Software Engineering in Practice (ICSE-SEIP)"
doi:
categories: ["publication", "maintenance", "ml4se", "icse", "conference", "industry-collaboration", "adyen", "selected-maintenance"]
posters: ["icse21"]
year: 2021
---

Deciding what constitutes a single module, what classes belong to which module or the right set of modules for a specific software system has always been a challenging task. The problem is even harder in large-scale software systems composed of thousands of classes and hundreds of modules. Over the years, researchers have been proposing different techniques to support developers in re-modularizing their software systems. In particular, the search-based software re-modularization is an active research topic within the software engineering community for more than 20 years.

This paper describes our efforts in applying search-based software re-modularization approaches at Adyen, a large-scale payment company. Adyen's code base has 5.5M+ lines of code, split into around 70 different modules. We leveraged the existing body of knowledge in the field to devise our own search algorithm and applied it to our code base. 

Our results show that search-based approaches scale to large code bases as ours. Our algorithm can find solutions that improve the code base according to the metrics we optimize for, and developers see value in the recommendations. Based on our experiences, we then list a set of challenges and opportunities for future researchers, aiming at making search-based software re-modularization more efficient for large-scale software companies.