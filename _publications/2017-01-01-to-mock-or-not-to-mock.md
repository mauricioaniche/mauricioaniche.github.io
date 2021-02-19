---
title: "To Mock or Not To Mock? An Empirical Study on Mocking Practices"
link: "https://research.tudelft.nl/en/publications/to-mock-or-not-to-mock-an-empirical-study-on-mocking-practices"
authors: "Davide Spadini, Maurício Aniche, Magiel Bruntink, Alberto Bacchelli"
conference: "IEEE 14h International Conference on Mining Software Repositories (MSR)"
categories: ["publication", "conference", "msr", "testing"]
year: 2017
doi: 10.1109/MSR.2017.61
---

When writing automated unit tests, developers often deal with software artifacts that have several dependencies. In these cases, one has the possibility of either instantiating the dependencies or using mock objects to simulate the dependencies' expected behavior. Even though recent quantitative studies showed that mock objects are widely used in OSS projects, scientific knowledge is still lacking on how and why practitioners use mocks. Such a knowledge is fundamental to guide further research on this widespread practice and inform the design of tools and processes to improve it. The objective of this paper is to increase our understanding of which test dependencies developers (do not) mock and why, as well as what challenges developers face with this practice. 

To this aim, we create MOCKEXTRACTOR, a tool to mine the usage of mock objects in testing code and employ it to collect data from three OSS projects and one industrial system. Sampling from this data, we manually analyze how more than 2,000 test dependencies are treated. Subsequently, we discuss our findings with developers from these systems, identifying practices, rationales, and challenges. These results are supported by a structured survey with more than 100 professionals. 

The study reveals that the usage of mocks is highly dependent on the responsibility and the architectural concern of the class. Developers report to frequently mock dependencies that make testing difficult and prefer to not mock classes that encapsulate domain concepts/rules of the system. Among the key challenges, developers report that maintaining the behavior of the mock compatible with the behavior of original class is hard and that mocking increases the coupling between the test and the production code.
