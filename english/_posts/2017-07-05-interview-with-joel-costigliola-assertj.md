---
title: Interview with Joel Costigliola, creator of AssertJ
layout: post
tags:
  - assertj
  - interview
  - tu delft
  - stqe 2017
---

In the 2017 edition of our 
_Software Testing and Quality Engineering_ course at [TU Delft](http://www.tudelft.nl), 
we taught students how to use [AssertJ](http://joel-costigliola.github.io/assertj/) for the first time. 
AssertJ is a fluent and extensible
library for writing assertions in unit tests. 

As we all know, JUnit only contains
basic assert instructions, e.g., assertEquals(), assertNull(); it is up to developers
to come up with their own constructions when more complicated objects need to be
asserted. 
This is where AssertJ steps in: it provides developers with assertions for several 
different scenarios, such as asserting lists and strings.

As also part of our course, we try to connect our students with experienced 
software developers by means of Ask-Me-Anything sessions. This semester, we had
the pleasure of interviewing [Joel Costigliola](https://github.com/joel-costigliola), the mind behind AssertJ.

Our students asked him questions about his motivations, challenges, and future plans of AssertJ. You can find the full interview below.

**STQE student: Why did you come up with AssertJ in first place? What was your motivation?**

**Joel:** I first started to contribute to _Fest Assert_ (created by Alex Ruiz) which I later forked to create AssertJ (more on that later).
At the time I was already using a lot of open source softwares and I felt I had to contribute something back to open source community.
I compared assertions library for one of my project (Fest vs Hamcrest) and decided Fest was a clear winner, I decided to contribute to Fest Assert, Alex was kind enough to make the experience a nice one, I continued contributing up and end up being a member of the Fest team.

Then Alex moved to work for Google and did not have the time to manage Fest, the situation was a bit frustrating to me, Alex had heavily refactored the code but di not finish which prevented to do or accept any contribution, after a few months it was clear this was going nowhere so I asked Alex if he was ok for me to fork Fest and that's how AssertJ was created !

The motivation was obviously to give a new life to Fest Assert but with my ideas, Alex was pretty conservative with contributions, I'm more opened in the sense that if some user asks for a new assertion or some improvements, I usually accept even when I'm not particularly excited about it. Nowadays AssertJ is driven by its users (90% of the new features come from them).

To summarize it, AssertJ is "community driven" project, I try to make it easy to contribute to it and give a good experience to contributors (expecially first time contributors). 

**STQE student: In your opinion, what are the main differences between using AssertJ or using Hamcrest?**

**Joel:**  The One is IDE code completion that allows to discover the existing assertions, it is so frustrating to try to find the most relevant Hamcrest assertions !
This is also why I want to have code examples in the javadoc for all assertions, users should not leave their IDE to understand an assertion (ideally).
If you setup your IDE with favorite static import, you can just start typing asser... and let code completion do the rest.


**STQE student: What was the most challenging part in the AssertJ implementation?**

**Joel:** Correctly naming assertions and having a consistent API. Once you have released an API it is very difficult to change it as you don't want to have breaking changes (I try to limit breaking as much as possible).


**STQE student: Should I always use AssertJ or is it ok for me to use plain JUnit assertions too?**

**Joel:** Yes ! (laughing)  ... no, the two assertions that are better in JUnit are assertTrue and assertFalse because assertThat(booleanExpression).isTrue() takes more time to write and you can easily misuse it by writing assertThat(booleanExpression) which does not assert anything (assertThat(1 == 0) does not check anything wherear assertThat(1 == 0).isFalse() does).


**STQE student: I would imagine that teams using AssertJ for their tests have both improved productivity and maintainability compared to when not using AssertJ. Are there actually any studies that back this up?**

**Joel:** I don't know any studies about that, if only I knew someone in the academic world to run such a study ... ;-)


**STQE student: Are there plans on making AssertJ usable from Kotlin by default?**

**Joel:** I'm not sure what you mean by "usable by default", Kotlin being a JVM language it should be easy to use AssertJ.
Anyway that's where the community plays its part, you can make it happen it you feel it is worth it.


**STQE student: AssertJ aims at making assertions more readable in comparison to JUnit assertions. However, it is possible to make assertions in AssertJ like "assertThat(a==42)" which actually do not work at all. Do you think future releases of AssertJ should warn users for such constructs or is it the responsibility of programmers not to make such constructs?**

**Joel:** I already talked about that, the best option is using @CheckReturnValue with findbugs to detect this incorrect usage, see http://joel-costigliola.github.io/assertj/assertj-core.html#faq-incorrect-api-usage.
Unfortunately I don't think there is a way for AssertJ to warn you about that out of the box (I would be happy to be wrong).


**STQE student: What's the next step / future of AssertJ?**

**Joel:** 

- A complete assertion guide a bit like <http://www.baeldung.com/introduction-to-assertj>.
- A first class citizen recursive comparison API.
- More work on the assertion generator with IDE plugins, so that it is easy to get assertions for your project classes.
- Moving all AssertJ projects to the github assertj organization (having the project under my github repo is not ideal)
- More third party modules, the latest (not yet available) being <https://github.com/assertj/assertj-vavr>.

*On behalf of the STQE 2017 students and team, we thank Joel for this interview.*