---
layout: page
title: Resume
permalink: /resume/
description: >-
  Resume of Aarif Khan, a software engineer with experience in backend
  systems, RESTful APIs, and a background in Computer Science and Mathematics.
---

**{{ site.author.name }}**

[{{ site.author.email }}](mailto:{{ site.author.email }}) · [Website]({{ site.url }}) · [LinkedIn]({{ site.author.linkedin }}) · [GitHub](https://github.com/aarifkhan7)

## Experience

**Software Engineer**, Tekion Corp. — Bengaluru, India — Jan 2025–Present (joined as Software Engineering Intern)
- Designed and delivered modular, plug-and-play webhook infrastructure processing 500 Kafka records/sec, enabling new publishers to onboard by adding a single class — no changes to existing code
- Reduced p99 latency from 400ms to under 200ms (a 50% improvement) by root-causing and resolving a p99 latency SLA breach on a production open API GET endpoint through query optimization.
- Decreased average latency from 350ms to 10ms (a 97% improvement) on a read-heavy config API handling 50 req/sec by caching infrequently-changed config values in memory.
- Owned backend design and implementation for a GM vehicle check-in feature end to end, building a screen-agnostic job-creation API that consolidated 4 separate screen integrations into a single reusable contract with no per-screen logic
- Built a Systems Integrator platform enabling third-party companies to develop integrations on Tekion's open APIs — deployed in an isolated cluster for security, reducing integration go-to-market time by shifting delivery from a single internal team to multiple third-party teams working in parallel, validated by delivering the first proof-of-concept integration with a small team
- Diagnosed and fixed a P0 production incident where a warranty posting defect caused ~2,000 invalid entries for the first dealer migrated to a new system (out of 2,000 total customers);

**Associate Software Developer**, Location Solutions, LLC — Dubai (Remote, Part-time) — Mar 2024–Aug 2024
- Rewrote a legacy .NET/C# service in Node.js, improving performance, scalability, and maintainability; reduced average response time by 20% for a specific workload, used by every Location Solutions customer
- Implemented in-memory join algorithms for time-series application data, avoiding repeated single-record database read/write round-trips of the database.
- Increased backend algorithm test coverage to 60% through comprehensive unit testing, improving reliability and reducing regressions
- Integrated OpenTelemetry logging into a legacy service, enabling retroactive debugging of customer-reported failures that previously had no visibility.

## Projects

**Schema-Guaranteed LLM Decoding for Structured Medical Extraction** — Independent project — [Source](https://www.kaggle.com/code/ajajchauhan/outlines-in-langchain)
- Tools & technologies used: Python, Transformers, XGrammar, Pydantic, Qwen2.5-1.5B.
- Built a grammar-constrained LLM pipeline using XGrammar to compile a JSON schema into GPU-level token constraints, guaranteeing schema-valid structured output (symptom, severity, duration, category) from unstructured clinical notes.
- Validated 200 real clinical notes end-to-end, measuring structural validity (JSON parses and matches schema) separately from semantic accuracy (extracted category matches ground-truth medical specialty), then ran failure analysis on the misses to trace them to model capacity rather than the schema constraint.

**Real Time Object Detection on a Video Stream from Drone/Mobile** — Team/hackathon project, built during CodeUtsava 7.0 — [Source](https://github.com/aarifkhan7/codeutsava7)
- Problem solved: pothole detection using drone footage and machine learning.
- Tools & technologies used: MERN stack, Flask, OpenCV, YOLOv8, RTMP protocol.
- Took an input stream from an RTMP source and ran object detection on the video frames.
- Built the detection script with OpenCV to run object detection and send frames to the server and database.
- Built an API to store detected frames into the file system and MongoDB database.
- Built a frontend UI in React to interact with the detected objects.

**CNN-Based Haze Classification and Dehazing** — Independent project, Bachelor's minor project — [Source]({{ site.baseurl }}/projects/2026-07-26-dehazer/)
- Tools & technologies used: Python, TensorFlow/Keras, CNNs, Res2Net, PixelShuffle.
- Built a 3-class CNN classifier (No Haze / Mild / Dense) to route hazy images to a haze-level-appropriate dehazing network, reaching 93% validation accuracy, up from 37% at epoch one.
- Implemented a teacher-student knowledge-transfer dehazing network (based on Wu et al.'s KTDN architecture) from a research paper with unspecified training details, combining L2, SSIM, and VGG19 perceptual losses for the teacher network.
- Trained the teacher network on a combined RESIDE/I-Haze/O-Haze/NH-Haze dataset, reducing validation loss from 0.40 to 0.15 over 200 epochs.

## Education

**B.Tech in Computer Science and Engineering** — National Institute of Technology, Raipur — 2025
CGPA/Percentage: 7.52/10

## Skills

**Languages:** C++, JavaScript, Java

**Developer Tools:** Git, Postman, Chrome Developer Tools

**Frameworks:** Spring Boot, Express.js, Node.js

**Cloud / Databases:** SQL, MongoDB, Kafka, Redis, Elasticsearch

**Soft Skills:** Communication, Team Collaboration, Problem-solving, Analytical Thinking

**Areas of Interest:** Operating Systems, Databases, Computer Networks

## Achievements

- **Winner, CodeUtsava 7.0** — Central India's largest hackathon, organized by NIT Raipur — Nov 2023
- **Winner, CSE-MCA-IT branch, Vigyan Science Exhibition** — organized by NIT Raipur — Oct 2023
- **Codeforces Specialist** — Global Rank 530 in Codeforces Round 944 (Div. 4) — May 2024
- **Global Rank 2446/29648** in LeetCode Biweekly Contest 112
