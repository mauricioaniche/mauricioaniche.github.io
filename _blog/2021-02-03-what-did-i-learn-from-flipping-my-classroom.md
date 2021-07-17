---
title: "What did I learn from flipping my classroom?"
layout: post
---

I experimented with flipped classroom in the 2019-2020 and the 2020-2021 editions of our Software Testing and Quality (CSE1110). This was the first and second times I tried it "for real". I asked students to [read the material](https://sttp.site), solve some exercises, and ask questions in the online forum _before_ the lecture; the lecture itself was going to be used only for debating.

In the first year I did it, I wasn't fully certain this would work. My honest thought was that students would not do their tasks before the lecture. I was afraid of not having questions to answer or topics to debate; I even made sure to have the slides I used in the previous years as backup plan in case this did not work. I could not be more wrong! 


A **large number of students actually read the lecture notes _before_ the lecture takes place**. See the figures below, for 2020 and 2021, respectively. Note that the majority of the students affirm to have read the lecture notes before _all_ our 13 lectures in 2020 (I obtained 329 responses out of around 500 students that take the course), and the majority of students also affirm to read the notes before the lecture in 2021 (number of respondents in the figure), although in a less expressive way when compared to the previous year. That is, at least to me, the most important lesson learned here. Of course, there is also a non-negligible number of students that never read the lecture notes, but I prefer to look at it at the positive side.


![png](/assets/blog/flipped-classroom/output_6_0.png)

<img src="/assets/blog/flipped-classroom/reading-material-2021.png" style="width: 70%">


On the other hand, **solving the exercises _before_ the lecture is definitely done less often.** You see the raw data in the figures below. When reflecting about the first year, I would say that I offered too many exercises and a lot of them involved coding. This means students could not simply "wake up one hour before the lecture and read it". I changed that in the second year: questions before the lecture were mostly short multiple choice questions. Even with them being much quicker to answers, students still do not seem to engage on those. Interestingly, as I show later, solving exercises was very popular when it came to studying for the exam. 

![png](/assets/blog/flipped-classroom/output_8_0.png)

<img src="/assets/blog/flipped-classroom/doing-exercises-2021.png" style="width: 70%">


I also told students at the introductory lecture that I would not be giving "any new material" per se in the lectures; rather, they would be for answering questions and debating more advanced topics. Therefore, the dark side inside of me was expecting students to not attend the lectures. Without having hard numbers, I indeed have higher attendance at the beginning of the course, with more than 300 participants watching me on Zoom, but at the end, this number dropped to an average of 150. This happened in both years, and it is reflected in their survey answers. That being said, not attending lectures is somewhat part of the culture of our students, as a lot of them prefer to use that time to study. Nevertheless, **I did not perceive a big drop in attendance when compared to traditional lecturing** where people had to be there to listen to the information. Moreover, I definitely recognized many students that followed every single lecture (a tricky thing to do in the online setting as everybody had their webcams off, and interacted mostly via chat). 

Interestingly, my perception was that the **level of the questions that students asked me during the lecture were definitely one level higher than in the years where I did not flipped the classroom**. Some of the questions were so more advanced that, in many times, I had to improvise new examples to make my point. My conjecture here is that students now all know the basics before joining my lecture, and therefore, they take questions to the next level. 

The **number of questions in the forum was also very high in the first year**. In the end of the 2019-2020, we had 201 questions and 443 replies (I never had so many questions in the online forum before). Many of questions did happen before the lecture, although I do not have concrete numbers to share. I made sure to reply those questions every morning before the lecture started and I used these questions as discussion points in the lecture. Interestingly, **the number of questions dropped in the 2020-2021 edition**. I do not have concrete numbers in hands, but there were definitely less questions. I see two explanations for that. First, we adopted StackOverflow as a Q&A system. While I noticed an increase in the quality of answers provided by the students themselves, maybe students feel a bit more afraid of posting a question that will last throughout all the next editions of the course. Second, students are now more used to studying online. When I asked in class why there were so few questions, they mentioned that a lot of the questions actually happen in their private Discord channel. Part of my plan for year 3 will be to convince them that is actually important to build a knowledge base.


![png](/assets/blog/flipped-classroom/output_10_0.png)

<img src="/assets/blog/flipped-classroom/attending-lectures-2021.png" style="width: 70%">

Another interesting point, and probably very contextual to our CS program, is that students did not work on the optional labwork assignment we offered. 2020 was the first year I offered it as optional (i.e., not part of the grade), following our new regulations that do not allow mandatory homework assignments. Although I told students the labwork would give them a more practical perspective on the topic and that TAs were available to help them with any questions, you see in the figure below that **just a few students actually worked on all the three parts of the (optional) labwork project**. In the second year, I decided to completely drop the assignment and focus on more "focused exercises". That did seem to work as **the majority of students solved exercises related to all the lectures**. This seems to be the way and I plan to improve even more our suite of exercises.

![png](/assets/blog/flipped-classroom/output_12_0.png)

<img src="/assets/blog/flipped-classroom/exercises-after-2021.png" style="width: 70%">

Maybe another unsurprising thing is that **a large portion of students do not spend all the hours they are supposed to in the course**. CSE1110 is a 5 ECTS course, which means that students should spend around 14 hours a week on the course, e.g., following lectures, reading, solving exercises, studying. As you can see below, just a few students actually reach the 14 hours. My gut feeling says that Q4 (the quarter where my course takes place) is a busy one for students, as they have two follow other two theoretical foundational computer science courses. I often see them spending a lot of energy on these other courses (they are pretty hard!) while I walk in the lab. I am not sure if increasing the number of activities is a good idea, given their pretty busy schedule. Maybe I should just accept that they will not be spending all the hours they need. I also note that a few of them go beyond 15 hours, which is also not ideal. I should understand why this is the case.

![png](/assets/blog/flipped-classroom/output_14_0.png)

<img src="/assets/blog/flipped-classroom/hours-week-2021.png" style="width: 70%">

Finally, I asked students how they studied for the final exam. While not really a surprise, **solving exercises and re-reading the lecture notes were popular study practices**. Interestingly though is that they prefer not to solve the questions I put in the lecture notes (which are quite varied), but questions I explicitly share as "those questions are similar to the exam questions", which are somewhat more focused on the types of questions I can ask during exams. This is again another regulation we have here: we have to offer some practice exams, and students take that to their advantages. My lesson learned here is to just offer more "exam practices" with more questions. Truth be told, those questions are not that bad, as they are mostly snippets of code where I ask students to write tests, and they have to leverage JUnit and/or Mockito to test them. I'll invest in other types of tests soon (e.g., integration tests, Selenium tests, etc). Moreover, I enjoyed that they actually **re-read my lecture notes**, showing that all the effort I put in actually building those is paying off. Finally, it seems that students prefer to **re-read the lecture notes rather than re-watching the videos**. Besides the textual notes, I also shared a bunch of videos. That is also a good thing for me as evolving textual lecture notes is just much easier than evolving videos.


![png](/assets/blog/flipped-classroom/output_16_1.png)

<img src="/assets/blog/flipped-classroom/how-study-2021.png" style="width: 70%">


What did I have to change in my course to make it flipped? Three things:

- First, **creating lecture notes**. That was a lot of work, to be honest. However, I feel that the cost will pay off over time, as I can easily reuse them for the years to come. (Well, given how much my students enjoyed it, I decided to write a proper book on the topic, which is a lot of work again; so, follow me for some news soon). Some news: I am working on a full book on software testing that will be published by Manning in 2021. I'll keep you posted.

- Second, **trusting that students would do their part**. It was very hard for me to go for the first lectures without a long deck of slides. I was really afraid that we would stay there in silence for the entire lecture. However, the more the time passed, the more I saw that I could really trust on them. In addition, given that the lecture notes were available on GitHub, I told students to submit pull requests whenever they find anything not so clear. Throughout the quarter, I received 100+ PRs from students! Although I said students would get bonus points for that, I prefer to believe that some of them were really engaged in simply making the material better. Also, **make sure you do not have the perfect scenario in mind**. For example, we saw that students do not do exercises before the lecture. Maybe I should just accept that and focus on other ways for them to exercise their knowledge.

- Third, **reserving time to answer the questions**. All the time I did not spend preparing slides, I had to spend answering questions in the forum. I wanted to give students an awesome experience, so I read all the questions that were posted, and answered the large majority of them (the others were answered by some TA). Answering questions did not take a significant amount of time, though. I am going to guess that 30 minutes before each lecture was usually enough. I also then spend some time crafting some last-minute slides with the main points that I observed in the forum.

Finally, I must say I have been really enjoying the flipped classroom experience. In both years, I feel it was good for me and for the students. I did not feel bored at all in any of the lectures (a common feeling when you are giving the same lecture for the Nth time). 


**Acknowledgments:** This would not be possible without the help of so many people. First, Frank Mulder, my partner in this course. Also, I should thank Wouter Pollet and Sará Juhusová, my head TAs (Wouter being my head TA for the third time in a row). Also, to Marsha Ginsberg, for lots of grammar improvements on the lecture notes themselves. Finally, to all the 2019-2020 and 2020-2021 CSE1110 students for being so nice.
