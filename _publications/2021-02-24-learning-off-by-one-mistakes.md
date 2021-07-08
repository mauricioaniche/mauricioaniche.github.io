---
title: "Learning Off-By-One Mistakes: An Empirical Study"
download: "https://arxiv.org/abs/2102.12429"
authors: "Hendrig Sellik, Onno van Paridon, Georgios Gousios, Maurício Aniche"
conference: "Mining Software Repositories Conference (MSR)"
doi: "10.1109/MSR52588.2021.00019"
categories: ["publication", "maintenance", "ml4se", "msr", "conference", "industry-collaboration", "adyen"]
posters: ["icse21"]
year: 2021
videoen: "8RUAeKsjho4"
---

Mistakes in binary conditions are a source of error in many software systems. They happen when developers use, e.g., < or > instead of <= or >=. These boundary mistakes are hard to find and impose manual, labor-intensive work for software developers. While previous research has been proposing solutions to identify errors in boundary conditions, the problem remains open. 

In this paper, we explore the effectiveness of deep learning models in learning and predicting mistakes in boundary conditions. We train different models on approximately 1.6M examples with faults in different boundary conditions. 

We achieve a precision of 85% and a recall of 84% on a balanced dataset, but lower numbers in an imbalanced dataset. We also perform tests on 41 real-world boundary condition bugs found from GitHub, where the model shows only a modest performance. Finally, we test the model on a large-scale Java code base from Adyen, our industrial partner. The model reported 36 buggy methods, but none of them were confirmed by developers.
