---
title: "The Prevalence of Code Smells in Machine Learning projects"
download: "https://arxiv.org/abs/2103.04146"
authors: "Bart van Oort, Luís Cruz, Maurício Aniche, Arie van Deursen"
conference: "1st Workshop on AI Engineering – Software Engineering for AI – WAIN'21"
doi:
categories: ["publication", "maintenance", "wain", "workshop"]
year: 2021
videoen: "TbgawiiYwJQ"
bottom: true
posters: ["icse21"]
---

Artificial Intelligence (AI) and Machine Learning (ML) are pervasive in the current computer science landscape. Yet, there still exists a lack of software engineering experience and best practices in this field. One such best practice, static code analysis, can be used to find code smells, i.e., (potential) defects in the source code, refactoring opportunities, and violations of common coding standards. 

Our research set out to discover the most prevalent code smells in ML projects. We gathered a dataset of 74 open-source ML projects, installed their dependencies and ran Pylint on them. This resulted in a top 20 of all detected code smells, per category. Manual analysis of these smells mainly showed that code duplication is widespread and that the PEP8 convention for identifier naming style may not always be applicable to ML code due to its resemblance with mathematical notation. More interestingly, however, we found several major obstructions to the maintainability and reproducibility of ML projects, primarily related to the dependency management of Python projects. We also found that Pylint cannot reliably check for correct usage of imported dependencies, including prominent ML libraries such as PyTorch.
