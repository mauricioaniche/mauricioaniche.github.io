---
title: "Interactive Static Software Performance Analysis in the IDE"
download: 
authors: "Aaron Beigelbeck, Maurício Aniche, Jürgen Cito"
conference: "29th IEEE/ACM International Conference on Program Comprehension (ICPC 2021)"
doi:
categories: ["publication", "icpc", "monitoring", "short-paper"]
posters: ["icse21"]
bottom: true
year: 2021
---

Detecting performance issues due to suboptimal code during the development process can be a daunting task, especially when it comes to localizing them after noticing performance degradation after deployment. Static analysis has the potential to provide early feedback on performance problems to developers without having to run profilers with expensive (and often unavailable) performance tests.

We develop a VSCode tool that integrates the static performance analysis results from Infer via code annotations and decorations (surfacing complexity analysis results in context) and side panel views showing details and overviews (enabling explainability of the results). Additionally, we design our system for interactivity to allow for more responsiveness to code changes as they happen. We evaluate the efficacy of our tool by measuring the overhead that the static performance analysis integration introduces in the development workflow.

Further, we report on a case study that illustrates how our system can be used to reason about software performance in the context of a real performance bug in the ElasticSearch open-source project.

* Demo video: https://www.youtube.com/watch?v=-GqPb_YZMOs
* Repository: https://github.com/ipa-lab/vscode-infer-performance