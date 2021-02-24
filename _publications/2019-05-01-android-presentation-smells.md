---
title: "An Empirical Catalog of Code Smells for the Presentation Layer of Android Apps"
download: "https://research.tudelft.nl/en/publications/an-empirical-catalog-of-code-smells-for-the-presentation-layer-of"
authors: "Suelen Goularte Carvalho, Maurício Aniche, Júlio Veríssimo, Rafael Durelli, Marco Aurélio Gerosa"
conference: "Empirical Software Engineering journal (EMSE)"
abstract: "This paper proposes a catalog of code smells that might happen in the presentation layer of Android apps. The paper also empirically evaluates how often these smells happen in ~600 open source Android apps."
categories: ["publication", "journal", "emse", "maintenance"]
year: 2019
doi: 10.1007/s10664-019-09768-9
---


Software developers, including those of the Android mobile platform, constantly seek to improve their applications’ maintainability and evolvability. Code smells are commonly used for this purpose, as they indicate symptoms of design problems. However, although the literature presents a variety of code smells, such as God Class and Long Method, characteristics that are specific to the underlying technologies are not taken into account. The presentation layer of an Android app, for example, implements specific architectural decisions from the Android platform itself (such as the use of Activities, Fragments, and Listeners) as well as deal with and integrate different types of resources (such as layouts and images). 

Through a three-step study involving 246 Android developers, we investigated code smells that developers perceive for this part of Android apps. We devised 20 specific code smells and collected the developers’ perceptions of their frequency and importance. We also implemented a tool that identifies the proposed code smells and studied their prevalence in 619 open-source Android apps. Our findings suggest that: 1) developers perceive smells specific to the presentation layer of Android apps; 2) developers consider these smells to be of high importance and frequency; and 3) the proposed smells occur in real-world Android apps. Our domain-specific smells can be leveraged by developers, researchers, and tool developers for searching potentially problematic pieces of code.
