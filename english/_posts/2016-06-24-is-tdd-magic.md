---
id: 788
title: Is TDD magic?
date: 2016-06-24T01:43:48+00:00
author: mauricioaniche
comments: true
layout: post
guid: http://www.aniche.com.br/?p=788
permalink: /2016/06/is-tdd-magic/
categories:
  - Blog in English
tags:
  - class design
  - tdd
  - test-driven development
  - unit testing
---
<p class="graf--p">
  <em class="markup--em markup--p-em">Will I create a better class design if I use Test-Driven Development? </em><strong class="markup--strong markup--p-strong"><em class="markup--em markup--p-em">Well, yes and no; TDD doesn&#8217;t do magic.</em></strong><em class="markup--em markup--p-em"> In this article, we discuss the effects of the practice, and how the practice can help developers during class design. We do it by interviewing developers from different companies.</em>
</p>

<p class="graf--p">
  Developers commonly argue that TDD helps software design, improving internal code quality. For example, Kent Beck [4], Robert Martin [5], Steve Freeman [6], and Dave Astels [7], state in their books (without scientific evidence) that the writing of unit tests in a TDD fashion promotes significant improvement in class design, helping developers to create simpler, more cohesive, and less coupled classes. They even consider TDD as a class design technique [8], [9]. Nevertheless, the way in which TDD actually guides developers during class design is not yet clear.
</p>

<p class="graf--p">
  We ask: <em class="markup--em markup--p-em">What are the developers’ perceptions on the effects of Test-Driven Development in class design?</em>
</p>

<p class="graf--p">
  We invited developers from the Brazilian software development industry to be part of this study. We had 14 participants from 6 different companies.
</p>

### TDD does not drive to a better design by itself 

<p class="graf--p">
  Participants affirmed that the practice of TDD did not change their class design during the experiment. The main justification was that their experience and previous knowledge regarding object-orientation and design principles guided them during class design. They also affirmed that a developer with no knowledge in object-oriented design would not create a good class design just by practicing TDD or writing unit tests.
</p>

<p class="graf--p">
  The participants gave two good examples reinforcing the point. One of them said that he made use of a design pattern [30] he learned a few days before. Another participant mentioned that his studies on SOLID principles helped him during the exercises.
</p>

<p class="graf--p">
  The only participant who had never practiced TDD before stated that he did not feel any improvement in the class design when practicing the technique. Curiously, this participant said that he considered TDD a design technique. It somehow indicates that the popularity of the effects of TDD in class design is high. That opinion was slightly different from that of experienced participants, who affirmed that TDD was not only about design, but also about testing.
</p>

<p class="graf--p">
  However, different from the idea that TDD and unit tests do not guide developers directly to a good class design, all participants said that TDD has positive effects on class design. Many of them mentioned the difficulty of trying to stop using TDD or thinking about tests, what can be one reason for not having significant difference in terms of design quality in the code produced with and without TDD.
</p>

<p class="graf--p graf--startsWithDoubleQuote">
  <em class="markup--em markup--p-em">“When you are about to implement something, you end up thinking about the tests that you’ll do. It is hard to think “write code without thinking about tests!”. As soon as you get used to it, you just don’t know another way to write code… ”</em>
</p>

<p class="graf--p">
  According to them, TDD can help during class design process, but in order to achieve that, the developer should have certain experience in software development. Most participants affirmed that their class designs were based on their experiences and past learning processes. In their opinion, the best option is to link the practice of TDD and experience.
</p>

### Baby steps and simplicity 

<p class="graf--p">
  TDD suggests developers to work in small (baby) steps; one should define the smallest possible functionality, write the simplest code that makes the test green, and do one refactoring at a time [4].
</p>

<p class="graf--p">
  In the interviews, participants commented about this. One of them mentioned that, when not writing tests, a developer thinks about the class design at once, creating a more complex structure than needed.
</p>

<p class="graf--p">
  One of the participants clearly stated how he makes use of baby steps, and how it helps him think better about his class design:
</p>

<p class="graf--p graf--startsWithDoubleQuote">
  <em class="markup--em markup--p-em">“Because we start to think of the small and not the whole. When I do TDD, I write a simple rule (…), and then I write the method. If the test passes, it passes! As you go step by step, the architecture gets nice. (…) I used to think about the whole (…). I think our brain works better when you think small. If you think big, it is clear, at least for me, that you will end up forgetting something. ”</em>
</p>

### Refactoring confidence 

<p class="graf--p">
  Participants affirmed that, during the process of class design, changing minds is constant. After all, there is still a small knowledge about the problem, and about how the class should be built. This was the most mentioned point by the participants. According to them, an intrinsic advantage of TDD is the generated test suite. It allows developers to change their minds and refactor all the class design safely. Confidence, according to them, is an important factor when changing class design or even implementation.
</p>

<p class="graf--p graf--startsWithDoubleQuote">
  <em class="markup--em markup--p-em">“It gives me the opportunity to learn along the way and make things differently. (…). The test gives you confidence. ”</em>
</p>

<p class="graf--p">
  A participant even mentioned a real experience, in which TDD made the difference. According to him, he changed his mind about the class design many times and trusted the test suite to guarantee the expected behavior.
</p>

### A safe space to think 

<p class="graf--p">
  In an analogy done by one of the participants, tests are like <em class="markup--em markup--p-em">draft paper</em>, in which they can try different approaches and change their minds about it frequently. According to them, when starting by the test, developers are, for the first time, using their own class. It makes developers look for a better and clearer way to invoke the class’ behaviors, and facilitate its use:
</p>

<p class="graf--p graf--startsWithDoubleQuote">
  <em class="markup--em markup--p-em">“Tests help you on that. They are a draft for you to try to model it the best way you can. If you had to model the class only once, it is like if you have only one chance. Or if you make it wrong, fixing it would give you a lot of work. The idea of you having tests and thinking about them, it is like if you have an empty draft sheet, in which you can put and remove stuff because that stuff doesn’t even exist.”</em>
</p>

<p class="graf--p">
  We asked their reasons for not thinking on the class design even when they were not practicing TDD or writing tests. According to them, when a developer does not practice TDD, they get too focused on the code they are writing, and thus, they end up not thinking about the class design they were creating. They believe tests make them think of how the class being created will interact with the other classes and of the easiness of using it.
</p>

<p class="graf--p">
  One of the participants was even more precise in his statement. According to him, developers that do not practice TDD, as they do not think about the class design they are building, they end up not doing good use of OOP. TDD forces developers to speed down, allowing them to think better about what they are doing.
</p>

### Rapid feedback 

<p class="graf--p">
  Participants also commented that one difference they perceived when they practiced TDD was the constant feedback. In traditional testing, the time between the production code writing and test code writing is too long. When practicing TDD, developers are forced to write the test first, and thus receive the feedback a test can provide sooner.
</p>

<p class="graf--p">
  One participant commented that, from the test, developers observe and criticize the code they are designing. As the tests are done constantly, developers end up continuously thinking about the code and its quality:
</p>

<p class="graf--p graf--startsWithDoubleQuote">
  <em class="markup--em markup--p-em">“When you write the test, you soon perceive what you don’t like in it (…). You don’t perceive that until you start using tests.”</em>
</p>

<p class="graf--p">
  Reducing the time between the code writing and test writing also helps developers to create code that effectively solves the problem. According to the participants, in traditional testing, developers write too much code before actually knowing if it works.
</p>

### The search for testability 

<p class="graf--p">
  Maybe the main reason for the practice of TDD helping developers in their class design is the constant search for testability. It is possible to infer that, when starting to produce code by its test, the production code should be, necessarily, testable.
</p>

<p class="graf--p">
  When it is not easy to test a specific piece of code, developers understand it as a class design smell. When this happens, developers usually try to refactor the code to make it easier to test. A participant also affirmed that he takes it as a rule; if it is hard to test, then the code may be improved.
</p>

<p class="graf--p">
  Feathers [33] raised this point: the harder it is to write the test, the higher the chance of a class design problem. According to him, there is a strong synergy between a highly testable class and a good class design; if developers are looking for testability, they end up creating good class design; if they are looking for good class design, they end up writing testable code.
</p>

<p class="graf--p">
  Participants went even further. During the interviews, many of them mentioned patterns that made (and make) them think about possible design problems in the class they build. As an example, they told us that when they feel the need to write many different unit tests to a single method, this may be a sign of a non-cohesive method. They also said that when a developer feels the need to write a big scenario for a single class or method, it is possible to infer that this need emerges in classes dealing with too many objects or containing too many responsibilities, and thus, it is not cohesive. They also mentioned how they detect coupling issues. According to them, the abusive use of mocking objects indicates that the class under testing has coupling issues.
</p>

### What did we learn from it? 

<p class="graf--p">
  The first interesting myth contested by the participants was the idea that the practice of TDD would drive developers towards a better design by itself. As they explained, the previous experience and knowledge in good design is what makes the difference; however, TDD helps developers by giving feedback by means of the unit tests that they are writing constantly. As they also mentioned, the search for testability also makes them rethink about the class design many times during the day — if a class is not easy to be tested, then they refactor it.
</p>

<p class="graf--p">
  We agree with the rationale. In fact, when comparing to test-last approaches, developers do not have the constant feedback or the need to write testable code. They will have the same feedback only at the end, when all the production code is already written. That may be too late (or expensive) to make a big refactoring in the class design.
</p>

<p class="graf--p">
  <a href="http://www.aniche.com.br/2016/06/788/tdd-feedback/" rel="attachment wp-att-789"><img class="alignnone size-full wp-image-789" src="http://www.aniche.com.br/wp-content/uploads/2016/06/tdd-feedback.png" alt="tdd-feedback" width="505" height="247" srcset="/wp-content/uploads/2016/06/tdd-feedback.png 505w, /wp-content/uploads/2016/06/tdd-feedback-300x147.png 300w" sizes="(max-width: 505px) 100vw, 505px" /></a>
</p>

<p class="graf--p">
  We also agree with the confidence when refactoring. As TDD forces developers to write unit tests frequently, those tests end up working as a safety net. Any broken change in the code is quickly identified. This safety net makes developers more confident to try and experiment new design changes — after all, if the changes break anything, tests will warn developers about it. That is why they also believe the tests are a safe space to think.
</p>

<p class="graf--p">
  <em class="markup--em markup--p-em">Therefore, we believe that is is not the practice by itself that helps developers to improve their class design; but it is the consequences of the constant act of writing a unit test, make that class testable, and refactor the code, that drives developers through a better design.</em>
</p>

### Conclusions 

<p class="graf--p">
  To answer the research question: <em class="markup--em markup--p-em">What are the developers’ perceptions on the effects of Test-Driven Development in class design?</em>
</p>

<p class="graf--p">
  <strong class="markup--strong markup--p-strong">Developers believe that the practice of test-driven development helps them to improve their class design, as the constant need of writing a unit test for each piece of the software forces them to create testable classes. These small feedbacks — is your test easy to be tested or not? — makes them think and rethink about the class and improve it. Also, as the number of tests grow, they act as a safety net, allowing developers to refactor freely, and also try and experiment different approaches to that code. Based on that, we suggest developers to experiment the practice of test-driven development, as its effects look positive to software developers.</strong>
</p>

<p class="graf--p">
  <em class="markup--em markup--p-em">If you wanna read the full journal paper or need the references: </em><a class="markup--anchor markup--p-anchor" href="http://www.journal-bcs.com/content/21/1/15" rel="nofollow" data-href="http://www.journal-bcs.com/content/21/1/15"><em class="markup--em markup--p-em">http://www.journal-bcs.com/content/21/1/15</em></a><em class="markup--em markup--p-em">.</em>
</p>