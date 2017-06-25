---
id: 825
title: 'SATT: Code Metric Thresholds for Different Software Architectures'
date: 2016-08-11T14:39:15+00:00
author: mauricioaniche
comments: true
layout: post
guid: http://www.mauricioaniche.com/?p=825
permalink: /2016/08/scam-2016-satt-tailoring-code-metric-thresholds-for-different-software-architectures/
categories:
  - Publications
tags:
  - code metrics
  - satt
  - scam
  - scam2016
---

Code metric analysis is a well-known approach for assessing the quality of a software system. However, current tools and techniques do not take the system architecture (e.g., MVC, Android) into account. This means that all classes are assessed similarly, regardless of their specific responsibilities. In this paper, we propose SATT (Software Architecture Tailored Thresholds), an approach that detects whether an architectural role is considerably different from others in the system in terms of code metrics, and provides a specific threshold for that role. We evaluated our approach on 2 different architectures (MVC and Android) in more than 400 projects. We also interviewed 6 experts in order to explain why some architectural roles are different from others. Our results shows that SATT can overcome issues that traditional approaches have, especially when some architectural role presents very different metric values than others.

[Download the paper](/wp-content/uploads/2016/08/scam2016.pdf)