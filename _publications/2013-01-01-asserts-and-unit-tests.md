---
title: "What Do the Asserts in a Unit Test Tell Us about Code Quality? A Study on Open Source and Industrial Projects"
download: "https://figshare.com/articles/What_Do_the_Asserts_in_a_Unit_Test_Tell_Us_about_Code_Quality_A_Study_on_Open_Source_and_Industrial_Projects/9638942"
authors: "Maurício Aniche, Gustavo Oliva, Marco Gerosa"
conference: "17th European Conference on Software Maintenance and Reengineering (CSMR)"
categories: ["publication", "conference", "saner", "testing"]
year: 2013
---

Unit tests and production code are intrinsically connected. A class that is easy to test usually presents desirable characteristics, such as low coupling and high cohesion. Thus, finding hard-to-test classes may help developers identify problematic code. Many different test feedbacks that warn developers about problematic code were already catalogued. 

In this paper, we argue that analyzing assert instructions in unit tests also aid in identifying and reasoning about potentially problematic pieces of code. We report an analysis conducted with both open source and industry projects relating assert instructions in a unit test with quality measures of the code being tested. We observed that when a production method has a unit test that uses the "assert" instruction in more than one object instance, it often exhibits higher cyclomatic complexity, number of lines of code, or higher number of method invocations. It means that developers should monitor the number of asserts in a unit test as it may indicate problems in the production code.
