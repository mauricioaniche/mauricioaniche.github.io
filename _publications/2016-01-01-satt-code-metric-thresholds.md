---
title: "SATT: Tailoring Code Metric Thresholds for Different Software Architectures"
download: "https://research.tudelft.nl/en/publications/satt-tailoring-code-metric-thresholds-for-different-software-arch"
authors: "Maurício Aniche, Christoph Treude, Andy Zaidman, Arie van Deursen, Marco Gerosa"
conference: "16th IEEE International Working Conference on Source Code Analysis and Manipulation (SCAM)"
categories: ["publication", "conference", "scam", "maintenance"]
year: 2016
doi: "10.1109/SCAM.2016.19"
---

Code metric analysis is a well-known approach for assessing the quality of a software system. However, current tools and techniques do not take the system architecture (e.g., MVC, Android) into account. This means that all classes are assessed similarly, regardless of their specific responsibilities. 

In this paper, we propose SATT (Software Architecture Tailored Thresholds), an approach that detects whether an architectural role is considerably different from others in the system in terms of code metrics, and provides a specific threshold for that role. We evaluated our approach on 2 different architectures (MVC and Android) in more than 400 projects. We also interviewed 6 experts in order to explain why some architectural roles are different from others. 

Our results shows that SATT can overcome issues that traditional approaches have, especially when some architectural role presents very different metric values than others.