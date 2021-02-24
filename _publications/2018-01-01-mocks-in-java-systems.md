---
title: "Mock objects for testing java systems: Why and how developers use them, and how they evolve"
download: "https://research.tudelft.nl/en/publications/mock-objects-for-testing-java-systems-why-and-how-developers-use-"
authors: "Davide Spadini, Maurício Aniche, Magiel Bruntink, Alberto Bacchelli"
conference: "Empirical Software Engineering (EMSE)"
doi: 10.1007/s10664-018-9663-0
categories: ["publication", "journal", "emse", "maintenance", "testing", 
 "selected-testing"]
year: 2018
---

When testing software artifacts that have several dependencies, one has the possibility of either instantiating these dependencies or using mock objects to simulate the dependencies’ expected behavior. Even though recent quantitative studies showed that mock objects are widely used both in open source and proprietary projects, scientific knowledge is still lacking on how and why practitioners use mocks. An empirical understanding of the situations where developers have (and have not) been applying mocks, as well as the impact of such decisions in terms of coupling and software evolution can be used to help practitioners adapt and improve their future usage. 

To this aim, we study the usage of mock objects in three OSS projects and one industrial system. More specifically, we manually analyze more than 2,000 mock usages. We then discuss our findings with developers from these systems, and identify practices, rationales, and challenges. These results are supported by a structured survey with more than 100 professionals. Finally, we manually analyze how the usage of mock objects in test code evolve over time as well as the impact of their usage on the coupling between test and production code. 

Our study reveals that the usage of mocks is highly dependent on the responsibility and the architectural concern of the class. Developers report to frequently mock dependencies that make testing difficult (e.g., infrastructure-related dependencies) and to not mock classes that encapsulate domain concepts/rules of the system. Among the key challenges, developers report that maintaining the behavior of the mock compatible with the behavior of original class is hard and that mocking increases the coupling between the test and the production code. Their perceptions are confirmed by our data, as we observed that mocks mostly exist since the very first version of the test class, and that they tend to stay there for its whole lifetime, and that changes in production code often force the test code to also change.
