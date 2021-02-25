---
title: "Code smells for Model-View-Controller architectures"
download: "https://research.tudelft.nl/en/publications/code-smells-for-model-view-controller-architectures"
authors: "Maurício Aniche, Gabriele Bavota, Christoph Treude, Marco Gerosa, Arie van Deursen"
conference: "Empirical Software Engineering Journal (EMSE)"
categories: ["publication", "journal", "emse", "maintenance", "favorite", "selected-maintenance"]
videopt: "Pd5CdV5sPbo"
videoen: "KPnNpTsZB40"
year: 2017
doi: 10.1007/s10664-017-9540-2
---

Previous studies have shown the negative effects that low-quality code can have on maintainability proxies, such as code change- and defect-proneness. One of the symptoms for low-quality code are code smells, defined as sub-optimal implementation choices. While this definition is quite general and seems to suggest a wide spectrum of smells that can affect software systems, the research literature mostly focuses on the set of smells defined in the catalogue by Fowler and Beck, reporting design issues that can potentially affect any kind of system, regardless of their architecture (eg Complex Class). However, systems adopting a specific architecture (eg the Model-View-Controller pattern) can be affected by other types of poor practices that only manifest themselves in the chosen architecture. 

We present a catalogue of six smells tailored to MVC applications and defined by surveying/interviewing 53 MVC developers. We validate our catalogue from different perspectives. First, we assess the relationship between the defined smells and the code change- and defect-proneness. Second, we investigate when these smells are introduced and how long they survive. Third, we survey 21 developers to verify their perception of the defined smells. Fourth, since our catalogue has been mainly defined together with developers adopting a specific Java framework in their MVC applications (eg Spring), we interview four expert developers working with different technologies for the implementation of their MVC applications to check the generalizability of our catalogue. 

The achieved results show that the defined Web MVC smells (i) more often than not, have more chances of being subject to changes and defects, (ii) are mostly introduced when the affected file (ie the file containing the smell) is committed for the first time in the repository and survive for long time in the system, (iii) are perceived by developers as severe problems, and (iv) generalize to other languages/frameworks.