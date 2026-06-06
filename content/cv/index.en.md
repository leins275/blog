+++
title = "CV"
slug = "cv"
date = 2026-06-06
type = "cv"
draft = false
[params]
  pdf = "/files/Nikita-Lanskov-Senior-Software-Engineer.pdf"
+++

# Nikita Lanskov

Senior Software Engineer · Izmir, Turkey · open to EU relocation

[nikitalanskov@gmail.com](mailto:nikitalanskov@gmail.com) · [+90 531 601 4154](https://wa.me/905316014154) · [linkedin.com/in/leins275](https://linkedin.com/in/leins275) · [leins275.xyz](https://leins275.xyz)

## Profile

Senior Software Engineer with 8 years shipping production backend services and cloud infrastructure — Python, Rust, AWS, Kubernetes, Terraform — for regulated enterprise clients (Novartis, Merck) at EPAM. Designs CI/CD pipelines and owns DevOps automation end-to-end, with a track record of migrating critical workloads — Multi-AZ RDS, CI/CD platforms, HPC workflow engines — without downtime. Also CTO of a 30-person engineering consultancy I grew from 5, owning delivery, technical methodology, and presales.

## Skills

**Languages** — Python, Rust, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

**Backend & Web** — Django, DRF, FastAPI, Flask, React, Next.js, Vue, Centrifugo (WebSockets), aiogram, python-telegram-bot

**Cloud & AWS** — EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, AWS Backup

**IaC & Orchestration** — Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

**CI/CD & Tooling** — GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make, Hugo, Nginx, OpenResty

**Data & Streaming** — PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas, Debezium (CDC)

**Identity & Observability** — OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur, Prometheus, Grafana

**Mobile & ML** — React Native, Flutter (Dart), PyTorch, OpenCV, U-Net, QuPath

**Other** — MuleSoft, Wiki.js

## Experience

### EPAM Systems — Senior Software Engineer · Nov 2021 – Present

#### Cromwell — Scientific Pipeline Engine on HPC *(Novartis · Apr 2025 – Present)*

**Stack:** Python, Pandas, EasyBuild, Cromwell, HPC

- Replatformed the Cromwell scientific workflow engine from Docker/Singularity to a single EasyBuild module bundling Python, Perl, and the Cromwell binary — eliminating container-runtime maintenance and per-host install steps for HPC users.
- Rewrote pipeline-input validation rules for a job-submission verification tool, preserving the existing queue architecture while modernizing the business logic.
- Built a Pandas-based ETL for cross-system reconciliation data, replacing manual data wrangling for downstream scientific consumers.

#### Document Search Chatbot (GCToC) *(Merck · Nov 2023 – Feb 2025)*

**Stack:** Python, Terraform, AWS Lambda, AWS (API Gateway, S3, Cognito, CloudFront, VPC), JavaScript, Jenkins, GitHub Actions

- Migrated the project's CI/CD end-to-end from Jenkins to GitHub Actions — refactored pipelines and wired Artifactory as the Lambda artifact store, enabling self-service deploys for the dev team.
- Built an AWS Lambda + Jenkins automation that ingested SharePoint reports into MySQL, eliminating ~4 hours/week of manual data wrangling.
- Stood up an isolated test environment under Merck's enterprise security model — CloudFront-managed egress, S3 bucket policies, Cognito pool overrides — clearing a release blocker for the QA team.
- Closed gaps in the Terraform footprint to deliver full IaC coverage; wired VPC-endpoint API Gateway behind CloudFront for compliant ingress.

#### iPaaS — API Integration Platform *(Merck · Jan 2024 – Dec 2024)*

**Stack:** Python, Terraform, Terragrunt, Kubernetes, AWS (EKS, RDS, S3), MuleSoft, Flask, Jenkins, GitHub Actions, Grafana

- Built the project's alerting stack from zero — Flask webhook to Merck Mail API over SSL, refactored Kubernetes cert-manager, alert rules across EKS nodes, MuleSoft quotas, Nginx, and log pipelines — turning on-call from blind to instrumented.
- Migrated production RDS from single-instance to Multi-AZ with live data transfer (zero downtime for federated teams); implemented compliant backup flow with cross-account S3 snapshot replication per Merck policy.
- Automated MuleSoft RTF provisioning in Python by reverse-engineering the Anypoint UI's private API, unblocking IaC adoption around a Terraform provider gap.
- Onboarded federated teams onto a new IAM-roles strategy across their AWS accounts, replacing ad-hoc access patterns.

#### Novartis DevOps Support — OAuth & PAM Engineering *(Novartis · Nov 2021 – Jun 2023)*

**Stack:** AWS (ALB, API Gateway), Azure AD, OAuth 2.0, PKCE, Terraform, Python, Groovy, Jenkins, Bash, Chef, OpenResty, Lua

- Shipped reusable Terraform modules for OAuth 2.0 authorization on AWS API Gateway and ALB, adopted by multiple Novartis teams; included a reference Python service demonstrating Authorization Code + PKCE and On-Behalf-Of flows.
- Built a Python Lambda for OAuth token parsing and claims-injection header rewriting at the edge; mirrored the same behavior in OpenResty (Nginx + Lua) to retrofit legacy apps without code changes.
- Authored Chef recipes and Jenkins-Conjur pipelines that injected PAM credentials into CI/CD for scientific application teams, replacing manually-handled secrets across multiple PAM flows.

### ITS — CTO · Jan 2020 – Present *(at ITS since Jun 2018)*

*Engineering leadership across multiple products and the company's internal platform. Grew the team from 5 to 30 engineers. Own company-wide engineering methodology, presales, and project delivery.*

#### Helpdesk Bot — Support Automation *(ITS · Nov 2023 – Feb 2025)*

**Stack:** Python, aiogram, FastAPI, Docker, PostgreSQL, sqladmin, Todoist API

- Designed and launched a Telegram + Todoist support bot powering technical support for 10 Digital Breakthrough hackathons, including the national and international finals.
- Implemented bidirectional async messaging between Telegram users and Todoist agents; scaled the support team from 1 to 3 agents with a pull-based ticket distribution model.
- Owned delivery end-to-end: architecture, team assembly, CI/CD, production launch.

#### Microcirculation — Eye Vessel Detection *(Far East Innovations · Sep 2021 – Nov 2023)*

**Stack:** Python, PyTorch, OpenCV, FastAPI, Vue, U-Net, QuPath

- Fine-tuned a U-Net model to 0.678 Dice/F1 for blood-vessel segmentation in slit-lamp ophthalmology images.
- Built a computational-geometry post-processing pipeline — vessel decomposition, skeletonization, length/width measurement, clinician-derived classification — turning raw masks into clinical-grade measurements.
- Calibrated optical measurements with 3D-printed eye models per microscope to derive per-device transformation matrices.
- Shipped as a FastAPI + Vue service with a public demo at [eye.its.xyz](https://eye.its.xyz); supervised three bachelor/master theses, registered a database certificate, and presented the work at a U-Net meetup.

#### ML Showroom *(ITS · Sep 2021 – Feb 2022)*

**Stack:** Python

- Led delivery of a computer-vision demo platform as PM: scoped the MVP, coordinated a 3-engineer team, and owned client handoff.

#### Career Assistant — Mobile App *(Kaspersky Lab · Jan 2021 – Apr 2021)*

**Stack:** Python, Flutter, Dart, Firebase, GraphQL

- Led my first PM engagement: a Flutter + Firebase mobile app connecting career experts with junior specialists. Project closed pre-launch — a formative lesson on KISS and stack-risk management that has shaped scoping decisions since.

#### Corporate Knowledge Base *(ITS · Oct 2020 – Present)*

**Stack:** Wiki.js, Docker Compose, PostgreSQL, Elasticsearch, Keycloak, SSO, Git

- Launched and grew the company's Wiki.js knowledge base to 31 active contributors (9 with 50+ commits each), with SSO via corporate Keycloak.
- Deployed on Docker Compose + PostgreSQL with Git-synchronized content for backup, authorship tracking, and version history.
- Drove adoption through internal knowledge-management meetups, embedding the wiki as a default part of how the team ships.

#### XTHON — Hackathon Platform *(ITS · Jun 2020 – Present)*

**Stack:** Python, Flask, SQLAlchemy, JavaScript, React, Next.js, OpenResty, Nginx, Material UI, Docker

- Built and grew XTHON into a gamified online-hackathon platform hosting 100+ events (Digital Breakthrough, Lisbon Hackathon); progressed through frontend → backend → DevOps → engineering-lead roles.
- Migrated the landing-page SPA to Next.js SSR (replacing Pug + OpenResty meta-tag injection) and shipped a standalone JS API library on S3 for embedding into legacy partner pages.
- Evolved the DevOps stack from per-repo Jenkins + S3 → multi-stage Docker images on private registries (JCR → GitLab) → a GitHub Flow monorepo, cutting release friction at each step.
- Led backend refactor: extracted business logic from controllers into services and added unit-test coverage to CI; ran sprints for a 2–12-engineer team.

#### ITS Core Infrastructure *(ITS · Jun 2020 – Present)*

**Stack:** Jenkins, GitLab, Linux, Bash, Docker

- Built and operate ITS's internal engineering platform from scratch — self-hosted GitLab + GitLab CI, Jenkins, Linux servers, containerized service mesh on Docker — supporting 30 engineers and 100+ hosted hackathons.

#### Museum Guide — Mobile App *(ITS · Jun 2018 – Jun 2019)*

**Stack:** Python, React Native

- Built the Python backend and React Native mobile client for an audio-tour museum guide application.

#### Seal Recognition from Drone Imagery *(ITS · May 2018 – May 2020)*

**Stack:** Python, OpenCV, PyTorch

- Trained a deep-learning model (PyTorch + OpenCV) for seal detection in UAV aerial photography; experimented with augmentation strategies and color-space transformations.
- Basis of bachelor's thesis defended at SPbPU.

### RUVENTS LTD — Backend Engineer · Jan 2021 – Oct 2021

#### FADM — Web Application Support *(RUVENTS · Jan 2021 – Oct 2021)*

**Stack:** Python, Django, AngularJS

- Owned production support for a Django + AngularJS portal; introduced structured logging and an alerting runbook that cut incident triage time.

## Personal Projects / Open Source

### sodg.rs — Rust crate (Surging Object DiGraph)

**Stack:** Rust, Cargo, GitHub Actions, codecov.

- Open-source directed-graph data structure with automatic garbage collection, used by the EO virtual machine; [published on crates.io](https://crates.io/crates/sodg) with CI gates on coverage and lint via GitHub Actions.

### Matrix homeserver — production Ansible deployment

**Stack:** Ansible, Docker Compose, Matrix Synapse, LiveKit, Coturn, Matrix Auth Service (OIDC), PostgreSQL, Let's Encrypt, UFW, fail2ban.

- Reproducible IaC for self-hosted Synapse with voice/video, OIDC auth, and system hardening; two-stage Makefile-driven deploy reaches production in ~10 minutes from a clean VM.

### grand-chat — real-time chat platform

**Stack:** Django 5, DRF, React + TypeScript, Centrifugo, PostgreSQL, Debezium (CDC), Prometheus, Grafana, Docker Compose.

- End-to-end real-time chat streaming PostgreSQL changes to WebSocket clients via Debezium CDC → Centrifugo; full Prometheus + Grafana observability stack baked into compose.

### tg-smm — Telegram → Hugo blog bridge

**Stack:** Python (async), python-telegram-bot, GitHub Git Data API, Kubernetes, Argo CD, Sealed Secrets, GitHub Actions, GHCR.

- Async bot that buffers Telegram media groups and commits rendered Markdown directly to the blog repo via the GitHub Git Data API; GitOps-deployed to Kubernetes with Sealed Secrets at rest.

## Education

### M.Sc. (incomplete), Applied Mathematics — SPbPU · 2020 – 2022

- Mentor for the Algorithms and Data Structures course.

### B.Sc., Applied Mathematics — SPbPU · 2016 – 2020

- Thesis: seal recognition from drone imagery (OpenCV, PyTorch).

## Spoken languages

Russian (native) · English (B2+)

## Links

- Portfolio: [leins275.xyz](https://leins275.xyz)
- LinkedIn: [linkedin.com/in/leins275](https://linkedin.com/in/leins275)
- XTHON Platform: [xthon.xyz](https://xthon.xyz)
- Eye Vessel Demo: [eye.its.xyz](https://eye.its.xyz)
- U-Net Meetup talk: [youtu.be/unuBcZAFOvY](https://youtu.be/unuBcZAFOvY)
- Knowledge Management Meetup talk: [youtu.be/sdgjbPIgvRQ](https://youtu.be/sdgjbPIgvRQ)
