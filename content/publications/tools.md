---
title: Tools
layout: page
permalink: /research/tools
---


{% include publications-menu.md %}
{% assign sorted = site.publications | reverse %}

A short of list of tools or prototypes I've work on at some point:

* [Springlint](https://github.com/mauricioaniche/springlint) is a code smell detection tool for Spring Boot/MVC projects. It was featured by the Spring community many years ago and uses Eclipse JDT behind the scenes.
* [CK](https://github.com/mauricioaniche/ck) is a simple Java metric calculator written in source code. It uses Eclipse JDT to build the AST, so it doesn't require compiled code.
* [Andy](https://github.com/SERG-Delft/andy) is an automated grader who assesses TU Delft's software testing students. It makes use of different metrics such as coverage, mutation coverage, and static analysis to come up with a final grade.
* [Hyperion](https://github.com/SERG-Delft/hyperion) is a tool that brings monitoring information (from your ELK stack) to the IDE so the developer can see how often an exception happens in production in their code.
* [TestKnight](https://github.com/SERG-Delft/TestKnight) helps people be more productive when writing tests. It helps engineers with MC/DC, contextualized coverage information, assertion suggestions, etc.
* [EvoSQL](https://github.com/SERG-Delft/evosql) is a search-based prototype that generates thorough tests for given SQL queries.