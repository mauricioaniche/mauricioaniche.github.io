---
title: "Are the Methods in Your Data Access Objects (DAOs) in the Right Place? A Preliminary Study"
download: "https://figshare.com/articles/Are_the_Methods_in_Your_Data_Access_Objects_DAOs_in_the_Right_Place_A_Preliminary_Study/11032967"
authors: "Maurício Aniche, Gustavo Oliva, Marco Aurélio Gerosa"
conference: "6th International Workshop on Managing Technical Debt (MTD)"
categories: ["publication", "workshop", "maintenance"]
year: 2014
---

Isolating code that deals with system infrastructure from code that deals with domain rules is a good practice when developing applications. Code that deals with the database, for example, is often isolated in classes following a Data Access Object (DAO) pattern. Developers often create a DAO for each domain entity in the system. However, as some pieces of code deal with more than one entity/table, developers need to decide in which DAO they will place the code, and sometimes choose a less intuitive location. In this paper, we present a heuristic to identify methods that may have been written in an ambiguous place. To validate the idea, we tested it on three industrial projects froma Brazilian company. The heuristic selected, on average, 13% to 18% of the methods in DAOs. After evaluating such methods, we concluded that the heuristic was correct in 50% to 75% of cases. Therefore, we believe that the heuristic can indicate possible technical debt, where the developers may inspect and possibly refactor.
