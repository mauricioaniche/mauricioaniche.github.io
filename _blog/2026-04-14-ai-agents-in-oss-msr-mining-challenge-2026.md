---
title: "AI Agents in Open Source: A Synthesis from the MSR Mining Data Challenge 2026"
layout: post
---

## Executive Summary

This synthesis integrates findings from 62 papers, published at MSR Mining Challenge 2026, analyzing AI coding agent contributions to open-source software. The research reveals a complex landscape where AI agents exhibit significant capability but introduce distinct challenges across code quality, review dynamics, and integration patterns. While agents demonstrate comparable structural code changes to humans in many contexts, critical gaps emerge in validation rigor, technical debt accumulation, and task-specific performance.

**Important:** This entire text was created via Claude Cowork and Codex. I only made random checks to ensure references were pointing to correct papers. This text may contain errors or factually incorrect information.

## Dataset Context

The MSR 2026 Mining Challenge is grounded in the AIDev dataset, which captures 932,791 agent-authored pull requests across 116,211 repositories and 72,189 developers. The dataset spans five widely studied coding agents: OpenAI Codex, Devin, GitHub Copilot, Cursor, and Claude Code [63].

## Thematic Synthesis of Findings

### 1. Pull Request Acceptance and Rejection Patterns

AI-generated PRs are often more rejection-prone than human-authored code, but the size of the gap depends strongly on task type, review dynamics, and the specific agent rather than on agent authorship alone [9, 11, 16]. Incomplete implementations, weak testing, documentation mismatches, and unsuitable solutions recur across rejection studies as major failure modes for agent-authored PRs [9, 13, 33]. Task type is a dominant driver of acceptance, with documentation and other narrow tasks integrating more easily than features, performance work, or large maintenance changes, while PR size and early review signals further shape outcomes [17, 20, 41, 49]. Social and process context still matters: creator reputation, review engagement patterns, and whether the same account submits and merges a PR all influence outcomes, and a narrow but important class of small, focused agentic PRs can still clear auto-merge thresholds in favorable repositories [12, 8, 61].

### 2. Code Quality and Technical Debt Accumulation

Agent-generated code introduces quality concerns that often persist even after integration. Build-focused analyses show that most agent-authored build edits are quality-neutral, but dependency and maintainability smells still appear in a meaningful minority of cases [4]. Silent PRs can raise cyclomatic complexity and preserve or increase quality issues without attracting much discussion, which suggests that some degradation passes through review unnoticed [15]. Post-merge analyses of merged agentic PRs find that code smells dominate observed issues, while functional bugs are less frequent but more severe, and separate studies report more redundancy, unnecessary methods, and stronger reviewer skepticism about maintainability in agent-authored code [55, 62, 32]. Technical-debt and readability studies further suggest that generated changes can trade maintainability for expedience, and later reversions commonly cite overengineering, functional incorrectness, and dependency-management problems as reasons that agent code does not stick [29, 31, 28].

### 3. Security Vulnerabilities and Risk Profiles

Security outcomes in agent-generated code are mixed rather than uniformly worse or better. Security-focused analyses show that agent-authored PRs introduce real weaknesses, including hard-coded credentials and command injection, but performance varies by task, agent, and change scope, with agents sometimes outperforming humans on small, focused bug fixes [25]. Review-theme studies also show that security-related concerns are more common in rejected PRs, and revert studies indicate that security-related reversions are rare but potentially high impact when they do occur [7, 28]. Communication studies add that humans, bots, and agents mention vulnerability identifiers in different ways, with agent mentions comparatively rare and concentrated in PR descriptions, titles, and commit messages rather than richer review discussion [56]. In sensitive domains such as blockchain repositories, this mixed picture reinforces the need to interpret agent activity together with the higher consequence of failure [39, 25].

### 4. Testing Practices and Coverage Dynamics

Testing remains central but uneven across agentic development. Large-scale studies find that testing is increasingly common in agent-authored PRs, varies by agent and task type, and often continues to evolve after the initial submission rather than arriving complete in the first patch [44, 57]. Coverage analyses show that AI-only PRs can achieve higher diff coverage than human PRs while keeping assertion quality broadly comparable, yet zero-coverage PRs remain common across all groups [58]. Test-generation studies further show that agent-authored tests are often longer and denser in assertions, but failure analyses reveal that runtime and assertion errors dominate when those tests break, pointing to stronger syntactic than semantic performance [60, 46]. The same validation gap appears in non-functional work such as optimization, where agent-authored performance PRs are less likely than human PRs to include explicit validation evidence [5].

### 5. Human-AI Review Collaboration and Dynamics

Review dynamics differ materially between human and agent-authored PRs. Review-theme studies show that feedback on agent-authored code centers on correctness and logic, but documentation, refactoring, testing, rollback, and security concerns become more prominent in rejected PRs [7]. Other analyses show that the same review signals do not operate identically across human and agent PRs: additional reviewer discussion can correlate with lower merge odds for agentic PRs, and agent submissions are more often merged by the same account that opened them [8]. Human intervention remains important even when it is not ubiquitous; maintainers frequently step in to constrain scope, repair testing or build issues, and align agent changes with project expectations, while reviewer-bot feedback appears much less decisive and can lengthen resolution time when comment volume rises [27, 40]. OSS practice therefore still reflects human-AI teaming rather than hands-off autonomy, with many AI-assisted PRs landing quickly and with little explicit feedback, especially from contributors without prior code ownership [14].

### 6. Agent-Specific Behavioral Patterns and Fingerprinting

Each AI agent exhibits distinct behavioral signatures that support reliable identification and meaningful differentiation. Behavioral fingerprinting can identify the submitting agent with 97.2% F1, showing that commit structure, PR-body style, and code characteristics vary systematically across tools [23]. Those differences also matter operationally: task-stratified and task-level comparisons show that Codex performs consistently well across many categories, while Claude Code, Cursor, Devin, and Copilot each show narrower strengths or distinct trade-offs in acceptance, review volume, and message quality [17, 42]. Behavioral patch analysis reinforces the same point, with Claude Code skewing toward rewriting, Devin toward incremental edits, Codex toward mixed reshape-and-preserve edits, and Copilot toward stronger local repetition [45]. CI/CD and auto-merge studies further suggest that agents vary in specialization and integration success rather than behaving as a single homogeneous class [22, 61].

### 7. Message-Code Consistency and Communication Quality

Communication quality is a recurrent integration bottleneck for agentic PRs. Message-code inconsistency appears in a small but consequential minority of agent-authored PRs and is associated with lower acceptance and much longer merge times, especially when descriptions claim work that the code does not actually implement [24]. Comparative studies also show that agents write stronger commit-level messages than PR-level summaries, while readability and completeness vary by PR type and by the communication style of different agents [6, 47, 34]. At the same time, both human and agentic PRs can show high semantic alignment between descriptions and diffs, which suggests that review difficulty is driven less by raw topical mismatch than by weak high-level explanation and reviewability [43]. A related problem is under-explained work: silent PRs and weakly grounded PRs make review harder, and instruction files improve outcomes only inconsistently unless they are clear, structured, and sufficiently specific [15, 52].

### 8. CI/CD Integration and Build System Reliability

CI/CD and build changes remain a fragile area for agentic development. Workflow studies show that agent-authored PRs succeed in CI/CD most of the time, but reliability varies by task and language, with bug-fix work especially failure-prone [10]. Agents do modify CI/CD configurations and workflow YAML, yet such changes are relatively uncommon and are reviewed slightly more cautiously than non-CI/CD changes, even if some agents show configuration specialization [22]. Continuous-integration studies add that agents can resolve failures much faster than humans but also introduce most of the failures they later help fix, leaving human maintainers deeply involved in stabilization [26]. Build-code analysis suggests that most agent-authored build edits are neutral, but dependency and maintainability problems still emerge inside build files [4].

### 9. Task-Type and Domain-Specific Performance Variation

Agent effectiveness varies dramatically across task types, which makes context-aware evaluation essential. Task-stratified studies show a gap of roughly 29 percentage points between the highest- and lowest-acceptance task categories, with documentation, chore, and some fix work landing more easily than features, tests, or performance-related changes [17, 42]. Size sensitivity also differs by task: bug-fix PRs tolerate substantially larger changes than feature PRs before merge probability drops sharply [41]. Domain studies show that these patterns are not uniform across ecosystems: Android projects accept agentic PRs more often than iOS, while blockchain repositories show similar acceptance across agent groups but strong resolution-time sensitivity to larger PRs [37, 39]. Non-functional tasks further underscore the variability, as performance and energy-related PRs are harder to validate and often harder to merge than more routine work [5, 35, 59].

### 10. Developer Experience and Integration Friction

Developer experience and repository context materially shape the cost of working with coding agents. Lower-experience vibe coders submit larger PRs that attract far more review comments, stay open much longer, and are accepted less often, suggesting that AI assistance can shift verification burden onto reviewers rather than remove it [38]. In OSS settings, AI-assisted PRs also come disproportionately from contributors without prior code ownership and often receive limited feedback even when merged, which can mask weak oversight [14]. Repository governance matters as well: auto-merge behavior clusters strongly at the repository level, and less mature or more permissive repositories are more likely to let small, focused agentic PRs pass directly [61]. Instruction files help some projects but do not solve integration friction reliably unless they are well structured and actively maintained [52].

### 11. Refactoring Behavior and Code Modification Strategies

Agents adopt refactoring and modification strategies that differ from human approaches in recognizable ways. Refactoring studies show that agent-authored Java refactorings are dominated by annotation-related edits, whereas human refactorings are much more structurally diverse; only Cursor shows a statistically significant increase in refactoring smells relative to developers [18]. Larger-scale modification studies add that the main differences between agentic and human PRs lie in commit packaging, files touched, and deleted lines rather than only in total added-line volume [43]. Behavioral patch analysis complements this by showing stable agent-specific tendencies toward rewriting, incremental editing, or stronger local repetition across languages and tasks [45].

### 12. Code Ecosystem Interaction and Dependency Management

Agents demonstrate relatively conservative but still imperfect ecosystem behavior. Library imports appear in many agent-authored PRs, but new dependency additions are rare, usually limited in number, and often version-pinned explicitly, suggesting that agents more often work within existing project ecosystems than expand them aggressively [3]. Even so, dependency-management problems remain an important downstream failure mode and contribute materially to later reverts [28]. This combination points to a workflow where agents usually avoid aggressive ecosystem change, but still struggle with compatibility and integration when they do touch dependencies [3, 28].

### 13. Code Clone Patterns and Reuse Behavior

Code reuse patterns show both overlap and important differences between human and agent contributions. In agent-authored PRs, Type-III and Type-I clones are the most common forms of duplication, and clones that persist across multiple commits are much more likely to be merged than one-shot clone introductions [48]. In collaborative projects, most clone genealogies are still introduced by humans, but agent-originated lineages survive at roughly similar rates, which suggests that the main difference lies in downstream maintenance rather than immediate rejection [54]. Human developers frequently perform the later stabilization and normalization work on agent-created clones, reinforcing the broader pattern of post-generation cleanup and human follow-through [48, 54].

### 14. Agent Adoption Patterns and Repository Maturity Effects

Repository characteristics strongly influence how agent contributions integrate and are accepted. Coding agents produce the largest throughput gains when introduced into repositories without prior AI tooling, while maintainability risks and warning growth remain visible regardless of prior exposure [30]. Repository maturity also shapes integration norms: auto-merge behavior is highly repository-specific, with more mature repositories less likely to auto-merge everything and more likely to enforce consistent review requirements [61]. Instruction files add another governance layer, but their benefits are heterogeneous; only a minority of projects show strong merge-rate improvements after adding them, and better outcomes tend to appear in projects with longer, more structured instructions [52].

### 15. Post-Merge Persistence and Lifecycle Follow-Through

Merge is not the endpoint of agentic work. Downstream reference analysis shows that only 4.2% of agent-authored PRs are referenced later, but 95.62% of those references are initiated by humans, who often build on, adapt, or correct earlier agent work rather than simply accepting it as final [36]. Even after successful integration, 2.66% of agentic PRs later attract reverting commits, and post-merge studies of merged bug-fix PRs still find common maintainability problems plus less frequent but more severe functional blockers [28, 55]. Clone genealogy evidence reinforces the same pattern: humans frequently stabilize and normalize agent-created clones over time, which means long-term value depends on persistence and downstream maintenance effort rather than first-pass merge decisions alone [54]. Together, these studies suggest that acceptance is an incomplete success metric and that agent evaluation should track reversions, follow-on references, clone survival, and post-merge cleanup burden.

## Implications for Practitioners

1. **Implement Task-Type Aware Review Policies**: Acceptance rates vary 29 percentage points across task categories, suggesting one-size-fits-all review workflows are ineffective. Practitioners should adopt differential review processes, with lighter scrutiny for well-scoped tasks (documentation, bug fixes) and intensive review for complex changes (refactoring, performance optimization, feature development). In practice, this means introducing agents first on narrow, low-blast-radius work and requiring additional scrutiny for large maintenance, breaking-change-sensitive, or security-critical changes. Size-aware thresholds should vary by agent and task type, as smaller focused PRs demonstrate substantially higher merge probability across all agents.

2. **Establish Quality Gates Before Merge**: Silent acceptance without discussion introduces technical debt at scale; 56.87% of silent PRs increase cyclomatic complexity despite integration. Implement mandatory quality checks for agent PRs including static analysis, test coverage validation (requiring non-zero diff-coverage), and message-code consistency verification. PR communication should also be part of the quality bar: agent-authored PRs should provide an accurate summary of the change, the rationale behind it, and concrete validation evidence. The 51.7% acceptance gap and 3.5x merge delay for high-inconsistency PRs justify investment in automated screening. Size constraints should be enforced contextually, with Copilot and Cursor PRs capped more aggressively than Codex contributions due to distinct therapeutic windows.

3. **Select Agents Based on Task Specialization**: Individual agents demonstrate distinct strengths (Codex at general tasks, Copilot at documentation despite higher review overhead, Claude Code at detailed code changes). Practitioners should conduct small-scale pilots to establish baseline performance metrics for their specific repositories before widespread deployment. The 29% variance between agents on identical task types justifies agent selection rather than assuming interchangeability.

4. **Prioritize Testing and Security Validation**: 62.6% of test failures are runtime errors requiring semantic understanding, and agents rarely mention vulnerability identifiers (90 mentions vs. 2,302 human) despite generating code with measurable security gaps. Establish supplementary test generation and security scanning as mandatory gates. The 1.7% MCI rate with 51.7% acceptance impact suggests PR description verification would provide high ROI. For sensitive domains (blockchain, security-critical code), default to lower acceptance thresholds and require human validation.

5. **Invest in Developer Training and CI/CD Maturity**: Vibe coders face 5.16x longer resolution times despite 2.15x larger contributions, indicating training gaps. Provide structured guidance on code review practices, PR composition, and alignment with project infrastructure. Keep a human reviewer accountable for every agent-authored change, because bot-only review and low-signal automated feedback are not strong enough substitutes for human judgment when correctness, architecture, or business context matters. The 27.23% CI failure rate for agentic PRs versus 20.27% human rate reflects tuning opportunities; mature CI/CD systems with clear feedback loops accelerate agent integration. Repository maturity and governance structures measurably influence acceptance, suggesting foundational infrastructure investments yield outsized returns.

6. **Monitor for Silent Technical Debt**: Type-4 semantic clones (1.87x higher in agent code) and redundancy accumulation occur undetected when reviewers focus on surface correctness. Implement periodic code quality audits specifically targeting agent-introduced patterns, and track reversions, hotfixes, and post-merge cleanup alongside technical debt metrics across agent cohorts. The 65.1% maintainability deterioration in readability-focused refactorings suggests agents' optimization attempts often backfire; restrict refactoring autonomy to well-scoped changes with explicit quality improvement validation.

7. **Define Clear Expectations Through Guidelines and Feedback Loops**: Only 27.7% of projects saw merge rate improvements after adding instruction files, but those with larger (976-word) well-structured files showed 20% gains. Invest in comprehensive, example-rich guidelines describing expected code patterns, test requirements, integration constraints, repository conventions, and task-specific prompts. Clear feedback loops remain critical; the finding that 79.1% of successful merges show no explicit feedback suggests high-quality guidelines can offset review labor, but guidance quality matters immensely. Teams should therefore treat instruction files and related guidance as maintained engineering assets rather than one-time prompt artifacts.

## Implications for Researchers

1. **Develop Predictive Models for Agentic PR Triage**: Early prediction of review effort (achieving AUC 0.96 with structural features) shows substantial promise for reducing reviewer burden. Future work should extend Circuit Breaker models to predict other dimensions of review complexity including security risk, test adequacy, and maintainability impact. These models should remain task-aware by separating small fixes, documentation, refactoring, testing, CI/CD, security-sensitive maintenance, and performance work rather than collapsing everything into aggregate acceptance signals. Multivariate prediction models incorporating task type, agent identity, repository maturity, and change structure could enable automated routing to appropriate review pathways, potentially reducing 5.16x resolution delays for complex contributions.

2. **Investigate Root Causes of Task-Type Variance**: The 29-percentage-point gap between highest and lowest task categories vastly exceeds inter-agent variance, yet remains poorly understood mechanistically. Conduct fine-grained analysis of why feature development, refactoring, and performance optimization generate distinct failure modes. Hypothesis-driven studies comparing agent reasoning trajectories across task types could identify retraining opportunities. Qualitative analysis of reviewer feedback across task categories would illuminate whether acceptance gaps reflect genuine quality differences or reviewer bias.

3. **Design Intervention Studies on Reviewer-Support Tooling**: The 51.7% acceptance gap and 3.5x delay for high-MCI PRs suggests immediate intervention research opportunity. Test automated correction mechanisms (suggesting description rewrites based on code diffs), prompt engineering variations, and post-hoc description verification. Beyond message-code consistency, build reviewer-facing tools that signal likely review burden, highlight risky change patterns, and surface where scarce human attention is most needed. Randomized controlled trials in real repositories would establish whether improving review support and description quality can close acceptance gaps. Additionally, investigate whether agents can learn to self-verify their own implementation completeness before submission.

4. **Establish Longitudinal Tracking of Technical Debt Metrics**: Current analysis reveals immediate post-merge patterns, but long-term maintenance burden remains underexplored. Track code smell progression, refactoring rates, reversions, downstream references, and defect introduction in agent-contributed code over 6-12 month periods. Build companion benchmarks and datasets for non-functional and lifecycle outcomes such as security, breaking changes, readability, clone propagation, documentation quality, and maintainability debt. Investigate whether accumulated Type-4 clones and redundancy create lasting defect clusters or become absorbed into normal maintenance patterns. Extension to cross-project comparisons would clarify whether technical debt effects vary by codebase characteristics.

5. **Conduct Human-Centered Studies of Collaboration Dynamics**: Qualitative research into why reviewer engagement reduces agent PR acceptance (17.6x lower odds) could illuminate fundamental human-AI trust dynamics. Study how developers mentally model agent capabilities, what feedback patterns effectively improve agent contributions, and how team norms evolve with agent adoption. Ethnographic studies in organizations at different AI adoption maturity levels would capture transitional dynamics and identify practices supporting successful integration.

6. **Develop Agent Behavior and Grounding Models**: Existing fingerprinting (97.2% F1-score with behavioral features) enables detection but lacks interpretability. Future work should create explainable agent behavior ontologies mapping feature patterns to underlying design decisions and failure modes. Researchers should also investigate richer forms of project grounding such as instruction files, repository memory, coding conventions, and architectural context, and test which grounding strategies measurably improve reviewability, correctness, and long-term maintainability. This foundation could enable predictive behavior modeling and principled agent comparison frameworks independent of raw merge rates.

7. **Design Evaluation Frameworks for Domain-Specific Performance**: Current metrics apply broadly but miss domain constraints; blockchain, mobile, security-critical, and energy-aware development each show distinct challenges. Develop domain-specific evaluation rubrics capturing both technical and contextual acceptance criteria, and tie those rubrics to broader benchmarks that measure non-functional and lifecycle behavior rather than merge rate alone. Research whether agents succeed differently in specialized domains and whether domain-aware prompting or fine-tuning improves outcomes. Longitudinal studies in specialized ecosystems (blockchain, security frameworks) would illuminate whether general-purpose agents can address domain-specific requirements or require specialization.

## References

1. From Industry Claims to Empirical Reality: An Empirical Study of Code Review Agents in Pull Requests — Kowshik Chowdhury, Dipayan Banik, K M Ferdous, Shazibul Islam Shamim
2. When AI Teammates Meet Code Review: Collaboration Signals Shaping the Integration of Agent-Authored Pull Requests — Costain Nachuma, Minhaz F. Zibran
3. A Study of Library Usage in Agent-Authored Pull Requests — Lukas Twist, Jie M. Zhang
4. AI Builds, We Analyze: An Empirical Study of AI-Generated Build Code Quality — Anwar Ghammam, Mohamed Almukhtar
5. How Do Agents Perform Code Optimization? An Empirical Study — Huiyun Peng, Antonio Zhong Qiu, Ricardo Andrés Calvo Méndez, Kelechi G. Kalu, James C. Davis
6. Code Change Characteristics and Description Alignment: A Comparative Study of Agentic versus Human Pull Requests — Dung Pham, Taher A. Ghaleb
7. Understanding Dominant Themes in Reviewing Agentic AI-authored Code — Md. Asif Haider, Thomas Zimmermann
8. Let's Make Every Pull Request Meaningful: An Empirical Analysis of Developer and Agentic Pull Requests — Haruhiko Yoshioka, Takahiro Monno, Haruka Tokumasu, Taiki Wakamatsu, Yuki Ota, Nimmi Weeraddana, Kenichi Matsumoto
9. Do AI-Generated Pull Requests Get Rejected More? (Yes but Why?) — Yiru Wang, Zhou Yang
10. Reliability of AI Bots Footprints in GitHub Actions CI/CD Workflows — Syed Muhammad Ashhar Shah, Sehrish Habib, Muizz Hussain, Maryam Abdul Ghafoor, Abdul Ali Bangash
11. Bug-Fixing in the Age of AI: Human vs. Agentic Pull Requests — Renato Domingues, Fernando Castor, Fernanda Madeiral
12. Why and When Agentic Pull Requests are (not) Accepted: An Exploratory Study — Strauss Marius Christoph, Schulze Sandro
13. When Bots Get the Boot: Understanding PR Rejections in the Era of AI Coders — Karla Gonzalez, Mariam El Mezouar
14. On Autopilot? An Empirical Study of Human-AI Teaming and Review Practices in Open Source — Haoyu Gao, Peerachai Banyongrakkul, Hao Guan, Mansooreh Zahedi, Christoph Treude
15. The Quiet Contributions: Insights into AI-Generated Silent Pull Requests — S. M. Mahedy Hasan, Md Fazle Rabbi, Minhaz Zibran
16. Why Are Agentic Pull Requests Accepted or Rejected? An Empirical Study — Sien Reeve Peralta, Fumika Hoshi, Hironori Washizaki, Naoyasu Ubayashi, Inase Kondo, Yoshiki Higo, Hiroki Mukai, Norihiro Yoshida, Kazuki Kusama, Hidetake Tanaka, Youmei Fan
17. Comparing AI Coding Agents: A Task-Stratified Analysis of Pull Request Acceptance — Giovanni Pinna, Jingzhi Gong, David Williams, Federica Sarro
18. How do Agents Refactor: An Empirical Study — Lukas Ottenhof, Daniel Penner, Abram Hindle, Thibaud Lutellier
19. Mining Type Constructs Using Patterns in AI-Generated Code — Imgyeong Lee, Tayyib Ul Hassan, Abram Hindle
20. Where Do AI Coding Agents Fail? An Empirical Study of Failed Agentic Pull Requests in GitHub — Ramtin Ehsani, Sakshi Pathak, Shriya Rawal, Abdullah Al Mujahid, Mia Mohammad Imran, Preetha Chatterjee
21. When is Generated Code Difficult to Comprehend? Assessing AI Agent Python Code Proficiency in the Wild — Nanthit Temkulkiat, Chaiyong Ragkhitwetsagul, Morakot Choetkiertikul, Ruksit Rojpaisarnkit, Raula Gaikovina Kula
22. When AI Agents Touch CI/CD Configurations: Frequency and Success — Taher A. Ghaleb
23. Fingerprinting AI Coding Agents on GitHub — Taher A. Ghaleb
24. Analyzing Message-Code Inconsistency in AI Coding Agent-Authored Pull Requests — Jingzhi Gong, Giovanni Pinna, Yixin Bian, Jie M. Zhang
25. When AI Writes Code: Investigating Security Issues in Agentic Software Changes — Esteban Dectot-Le Monnier de Gouville, Mohammad Hamdaqa, Moataz Chouchen
26. On the Reliability of Agentic AI in Continuous Integration Pipelines — Jasem Khelifi, Mahi Begoug, Ali Ouni, Mohammed Sayagh, Mohamed Aymen Saied, Moataz Chouchen
27. Behind Agentic Pull Requests: An Empirical Study on Developer Interventions in AI Agent-Authored Pull Requests — Syrine Khelifi, Ali Ouni, Maha Khemaja
28. When AI Code Doesn’t Stick: An Empirical Study on Reverted Changes Introduced by AI Coding Agents — Issam Oukhay, Mahi Begoug, Moataz Chouchen, Ali Ouni
29. Characterizing Self-Admitted Technical Debt Generated by AI Coding Agents — Zaki Brahmi, Ali Ouni, Mohammed Sayagh, Mohamed Aymen Saied
30. AI IDEs or Autonomous Agents? Measuring the Impact of Coding Agents on Software Development — Shyam Agarwal, Hao He, Bogdan Vasilescu
31. Do AI Agents Really Improve Code Readability? — Kyogo Horikawa, Kosei Horikawa, Yutaro Kashiwa, Hidetake Uwano, Hajimu Iida
32. What to Cut? Predicting Unnecessary Methods in Agentic Code Generation — Kan Watanabe, Tatsuya Shirai, Yutaro Kashiwa, Hajimu Iida
33. Understanding the Rejection of Fixes Generated by Agentic Pull Requests - Insights from the AIDev Dataset — Mahmoud Abujadallah, Ali Arabat, Mohammed Sayagh
34. How AI Coding Agents Communicate: A Study of Pull Request Characteristics and Human Review Responses — Kan Watanabe, Rikuto Tsuchida, Takahiro Monno, Bin Huang, Kazuma Yamasaki, Youmei Fan, Kazumasa Shimari, Kenichi Matsumoto
35. How Do Agentic AI Systems Deal With Software Energy Concerns? A Pull Request-Based Study — Tanjum Motin Mitul, Md. Masud Mazumder, Md Nahidul Islam Opu, Shaiful Chowdhury
36. Humans Integrate, Agents Fix: How Agent-Authored Pull Requests Are Referenced in Practice — Islem Khemissi, Moataz Chouchen, Dong Wang, Raula Gaikovina Kula
37. On the Adoption of AI Coding Agents in Open-source Android and iOS Development — Muhammad Ahmad Khan, Hasnain Ali, Muneeb Rana, Muhammad Saqib Ilyas, Abdul Ali Bangash
38. Novice Developers Produce Larger Review Overhead for Project Maintainers while Vibe Coding — Syed Ammar Asdaque, Imran Haider, Muhammad Umar Malik, Maryam Abdul Ghafoor, Abdul Ali Bangash
39. Studying the Footprints of AI Coding Agents in Blockchain Repositories — Munim Iftikhar, Maaz Shahid, Shahreyar Ashraf, Muhammad Saqib Ilyas, Abdul Ali Bangash
40. On the Footprints of Reviewer Bots' Feedback on Agentic Pull Requests in OSS GitHub Repositories — Syeda Kaneez Fatima, Yousuf Abrar, Abdul Rehman Tahir, Amelia Nawaz, Shamsa Abid, Abdul Ali Bangash
41. The Dose Makes the Agent: Therapeutic Index Analysis of AI Coding Contributions — Giuseppe Destefanis, Ronnie de Souza Santos, Marco Ortu, Mairieli Wessel
42. A Task-Level Evaluation of AI Agents in Open-Source Projects — Shojibur Rahman, Md Fazle Rabbi, Minhaz Zibran
43. How AI Coding Agents Modify Code: A Large-Scale Study of GitHub Pull Requests — Daniel Ogenrwot, John Businge
44. An Empirical Study of Tests in Agentic Pull Requests — Sabrina Haque, Sarvesh Ingale, Christoph Csallner
45. Behavioral Analysis of AI Code Generation Agents: Edit, Rewrite, and Repetition — Mahdieh Abazar, Reyhaneh Farahmand, Gouri Ginde, Benjamin Tan, Lorenzo De Carli
46. An Empirical Analysis of Test Failures in AI-Generated Pull Requests — Alireza Hoseinpour, Sajjad Rezvani Boroujeni, Jashhvanth Tamilselvan Kunthavai, Kyle Cusimano, Abbas Heydarnoori
47. Readability of AI-Generated Pull Request Descriptions Across Pull Request Types — Aidan Tobar, Joseph Peterson, Abbas Heydarnoori
48. A Study on Code Clone Lifecycles in Pull Requests Created by AI Agents — Italo Uchoa
49. Early-Stage Prediction of Review Effort in AI-Generated Pull Requests — Duy Minh Dao Sy, Trung Kiet Huynh, Phu Quy Nguyen Lam, Phu Hoa Pham, Chi Nguyen Tran, Dinh Ha Duong Nguyen, Bao Tran Truong
50. Safer Builders, Risky Maintainers: A Comparative Study of Breaking Changes in Human vs Agentic PRs — K M Ferdous, Dipayan Banik, Kowshik Chowdhury, Shazibul Islam Shamim
51. Why Are AI Agent–Involved Pull Requests (Fix-Related) Remain Unmerged? An Empirical Study — Khairul Alam, Saikat Mondal, Banani Roy
52. Toward Instructions-as-Code: Understanding the Impact of Instruction Files on Agentic Pull Requests — Ali Arabat, Mohammed Sayagh
53. Who Writes the Docs in SE 3.0? Agent vs. Human Documentation Pull Requests — Kazuma Yamasaki, Joseph Ayobami Joshua, Tasha Settewong, Mahmoud Alfadel, Kazumasa Shimari, Kenichi Matsumoto
54. An Empirical Study of Code Clone Genealogies in Human–AI Collaborative Development — Denis Sousa, Italo Uchoa, Matheus Paixao, Chaiyong Ragkhitwetsagul, Thiago Lima
55. Beyond Bug Fixes: An Empirical Investigation of Post-Merge Code Quality Issues in Agent-Generated Pull Requests — Shamse Tasnim Cynthia, Al Muttakin, Banani Roy
56. Who Said CVE? How Vulnerability Identifiers Are Mentioned by Humans, Bots, and Agents in Pull Requests — Pien Rooijendijk, Christoph Treude, Mairieli Wessel
57. Human-Agent versus Human Pull Requests: A Testing-Focused Characterization and Comparison — Roberto Milanese, Francesco Salzano, Angelica Spina, Antonio Vitale, Remo Pareschi, Fausto Fasano, Mattia Fazzini
58. Test Coverage of Code Changes in AI-Generated Pull Requests — Tales Vinícius Alves da Cunha, Leopoldo Teixeira
59. How Do Agentic AI Systems Address Performance Optimizations? A BERTopic-Based Analysis of Pull Requests — Md Nahidul Islam Opu, Shahidul Islam, Muhammad Asaduzzaman, Shaiful Chowdhury
60. Testing with AI Agents: An Empirical Study of Test Generation — Suzuka Yoshimoto, Shun Fujita, Kosei Horikawa, Daniel Feitosa, Yutaro Kashiwa, Hajimu Iida
61. LGTM! Characteristics of Auto-Merged LLM-based Agentic PRs — Ruben Branco, Paulo Canelas, Catarina Gamboa, Alcides Fonseca
62. More Code, Less Reuse: Investigating Code Quality and Reviewer Sentiment towards AI-generated Pull Requests — Haoming Huang, Pongchai Jaisri, Shota Shimizu, Lingfeng Chen, Sota Nakashima, Gema Rodríguez-Pérez
63. AIDev: Studying AI Coding Agents on GitHub — Hao Li, Haoxiang Zhang, Ahmed E. Hassan

## Prompt

Below the initial prompt that was used to generate this report. Many other prompts followed to ensure the validity of the text.

```
In this folder, we have all PDFs of the MSR mining challenge. This year's challenge was to understand code changes done by agentic AI coders. You can read more about it in the website https://2026.msrconf.org/track/msr-2026-mining-challenge?#Call-for-Mining-Challenge-Papers and in dataset.pdf.

You will act as a senior software engineering researcher that will summarize and group the main findings of these papers by themes, similarly to performing a systematic literature review.

Your first task is to go paper by paper, read each of them, and then write a summary about the paper. Each summary must have the following: the title and list of authors, a two paragraph summary of the paper (which you can use the introduction and the conclusions part of the paper), and then a bullet point list with 5 to 7 main findings of the paper (which you can get from the results, findings, and implications sections of the paper). Each paper summary should be stored in a markdown file with the same name of the PDF.

Then, once all summaries are created, you will read all the summaries and analyze their main findings as a whole. You should group the main findings by themes. Each theme must have a bullet point list of the findings. Each finding must be accompanied by the paper that that finding comes from, and if it comes from multiple papers, list all the papers. The citation must be the name of the PDF.

Then, let's write a section called "Implications for Practitioners" with 5-7 recommendations based on these findings. Think of industry developers rather than OSS developers here.

Then, let's write a "Implications for Researchers", looking at all the findings. What type of work can they do to improve the current state of things.

Finally, create a References section at the bottom where you list the name of the pdf and its title and author list. Get them one by one from the summary files.
```