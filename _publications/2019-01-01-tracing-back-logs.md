---
title: "Tracing Back Log Data to its Log Statement: From Research to Practice"
link: "https://research.tudelft.nl/en/publications/tracing-back-log-data-to-its-log-statement-from-research-to-pract"
authors: "Daan Schipper, Maurício Aniche, Arie van Deursen"
conference: "IEEE/ACM 16th International Conference on Mining Software Repositories (MSR)"
doi: 10.1109/MSR.2019.00081
categories: ["publication", "conference", "msr", "monitoring", "industry-collaboration", "adyen"]
year: 2019
---

Logs are widely used as a source of information to understand the activity of computer systems and to monitor their health and stability. However, most log analysis techniques require the link between the log messages in the raw log file and the log statements in the source code that produce them. Several solutions have been proposed to solve this non-trivial challenge, of which the approach based on static analysis reaches the highest accuracy. We, at Adyen, implemented the state-of-the-art research on log parsing in our logging environment and evaluated their accuracy and performance. Our results show that, with some adaptation, the current static analysis techniques are highly efficient and performant. In other words, ready for use.
