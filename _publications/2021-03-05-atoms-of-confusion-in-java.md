---
title: "Atoms of Confusion in Java"
download: "https://arxiv.org/abs/2103.05424"
authors: "Chris Langhout, Maurício Aniche"
conference: "29th IEEE/ACM International Conference on Program Comprehension (ICPC)"
doi:
categories: ["publication", "icpc", "maintenance", "conference"]
posters: ["icse21"]
year: 2021
---

Although writing code seems trivial at times, problems arise when humans misinterpret what the code actually does. One of the potential causes are "atoms of confusion", the smallest possible patterns of misinterpretable source code. Previous research has investigated the impact of atoms of confusion in C code. Results show that developers make significantly more mistakes in code where atoms are present.

In this paper, we replicate the work of Gopstein et al. to the Java language. After deriving a set of atoms of confusion for Java, we perform a two-phase experiment with 132 computer science students (i.e., novice developers). 

Our results show that participants are 2.7 up to 56 times more likely to make mistakes in code snippets affected by 7 out of the 14 studied atoms of confusion, and when faced with both versions of the code snippets, participants perceived the version affected by the atom of confusion to be more confusing and/or less readable in 10 out of the 14 studied atoms of confusion.