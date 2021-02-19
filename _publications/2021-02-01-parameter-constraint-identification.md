---
title: "Automatically Identifying Parameter Constraints in Complex Web APIs: A Case Study at Adyen"
link: "https://arxiv.org/abs/2102.00871"
authors: "Henk Grent, Aleksei Akimov, Maurício Aniche"
conference: "IEEE/ACM 43rd International Conference on Software Engineering: Software Engineering in Practice (ICSE-SEIP)"
doi: 
categories: ["publication", "maintenance", "ml4se", "icse", "conference", "industry-collaboration", "adyen"]
year: 2021
---

Web APIs may have constraints on parameters, such that not all parameters are either always required or always optional. Moreover, the presence or value of one parameter could cause another parameter to be required, or parameters could have restrictions on what kinds of values are valid. Having a clear overview of the constraints helps API consumers to integrate without the need for additional support and with fewer integration faults. We made use of existing documentation and code analysis approaches for identifying parameter constraints in complex web APIs. 

In this paper, we report our case study of several APIs at Adyen, a large-scale payment company that offers complex Web APIs to its customers. Our results show that the documentation- and code-based approach can identify 23% and 53% of the constraints respectively and, when combined, 68% of them. We also reflect on the current challenges that these approaches face. In particular, the absence of information that explicitly describes the constraints in the documentation (in the documentation analysis), and the engineering of a sound static code analyser that is sensitive to data-flow, maintains longer parameter references throughout the API's code, and that is able to symbolically execute the several libraries and frameworks used by the API (in the static analysis).
