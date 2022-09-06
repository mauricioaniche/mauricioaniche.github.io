---
title: "Effective developer testing"
layout: page
categories: ["talk"]
---

We all know by now how to write automated tests. But can we get better at it? For example, how can we make sure we go beyond "happy path testing" and create really strong test suites? Is code coverage a bad metric we should ignore, or can it actually help us? Should we go for unit or integration tests? Or are E2E tests much better for more complex systems? Is TDD really a must? Or can we design testable systems without it?

Of course, the typical developer's answer is "it depends". But even though there is not always a clear answer, we'll answer as many as possible within 50 minutes. In this talk, I'll dive into what it takes to take developer testing to a whole new level based on lessons learned while trying to write good tests as a developer, as well as when trying to educate 500 TU Delft computer scientists on the art of software testing every year:

- How to write tests in a more systematic way so that we go beyond the happy path
- How can we use code coverage to improve the testing process, and what research says about it
- Unit vs integration vs E2E tests, and mocking: the good, the bad and the ugly.
- 3 simple rules to achieve design for testability, and how much TDD is needed.

In all these topics, I'll show small code snippets to illustrate the idea, and discuss real world trade-offs, such as "when to do it, when not to do it".

This talk is based on my recent Effective Software Testing, published by Manning (https://www.effective-software-testing.com/). You can buy is with 35% discount by using the "au35ani" discount code.


## Slides

* [Link to Google Docs](https://docs.google.com/presentation/d/17MVXOgCQ9J_pBvwuko12GvUvgIbPv0716nY540eEM_A/edit?usp=sharing).

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTTM3rVTOPKbgUjcFSrocu40phFd9iD9PxnEe55HUNdHqiRIcHMSoK-CrRIP3_XDLaQaTKloW3MlX5I/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>