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

Senior Software Engineer with 6+ years building production backend systems and cloud infrastructure on AWS, Kubernetes, and Terraform for pharmaceutical and tech clients. I design CI/CD pipelines, write Python and Rust services for data processing and integration workflows, and own DevOps automation end-to-end. As CTO of a 30-person consultancy, I combine hands-on engineering with team leadership, delivery ownership, and technical mentoring.

## Skills

**Languages** — Python, Rust, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

**Backend & Web** — Django, DRF, FastAPI, Flask, React, Next.js, Vue, Centrifugo (WebSockets), aiogram, python-telegram-bot

**Cloud & AWS** — EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, AWS Backup

**IaC & Orchestration** — Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

**CI/CD & Tooling** — GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make

**Data & Streaming** — PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas, Debezium (CDC)

**Observability & Identity** — Prometheus, Grafana, OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur

**Other** — Hugo, Nginx, OpenResty, MuleSoft, Wiki.js, ML/CV (PyTorch, OpenCV, U-Net, QuPath), React Native, Flutter

## Experience

### EPAM Systems — Senior Software Engineer · Nov 2021 – Present

#### Cromwell — Scientific Pipeline Engine on HPC *(Novartis · Apr 2025 – Present)*

**Stack:** Python, Pandas, EasyBuild, Cromwell, HPC

- Migrated the Cromwell workflow engine from Docker/Singularity to an EasyBuild bundle, packaging Python, Perl, and the Cromwell binary into a single deployable module.
- Designed validation logic for a pipeline-input verification tool, preserving the existing job-queue and submission architecture while rewriting business rules.
- Built ETL pipeline for reconciliation data processing using Pandas.

#### Document Search Chatbot (GCToC) *(Merck · Nov 2023 – Feb 2025)*

**Stack:** Python, Terraform, AWS Lambda, AWS (API Gateway, S3, Cognito, CloudFront, VPC), JavaScript, Jenkins, GitHub Actions

- Migrated CI/CD end-to-end from Jenkins to GitHub Actions, including pipeline refactoring and Artifactory integration for Lambda artifact storage.
- Built an AWS Lambda + Jenkins automation that imported SharePoint reports into MySQL, cutting ~4 hours/week of manual data wrangling.
- Stood up a new test environment under MERCK's security model (CloudFront-managed internet access, S3 bucket policies, Cognito pool overrides).
- Extended Terraform modules for full infrastructure-as-code coverage; configured VPC-endpoint API Gateway integration with CloudFront.

#### iPaaS — API Integration Platform *(Merck · Jan 2024 – Dec 2024)*

**Stack:** Python, Terraform, Terragrunt, Kubernetes, AWS (EKS, RDS, S3), MuleSoft, Flask, Jenkins, GitHub Actions, Grafana

- Built a Grafana alerting system from scratch: Flask webhook for the MERCK Mail API (SSL-secured), refactored Kubernetes cert-manager, alert rules across EKS nodes, MuleSoft quotas, Nginx, and logging.
- Migrated a single-instance RDS to Multi-AZ with live data transfer for federated teams; implemented compliant backup flow (snapshots replicated to S3) per MERCK requirements.
- Automated MuleSoft RTF provisioning in Python by reverse-engineering the Anypoint UI's API, working around a missing Terraform provider feature.
- Supported federated teams in adopting a new IAM-roles strategy across their AWS accounts.

#### Novartis DevOps Support — OAuth & PAM Engineering *(Novartis · Nov 2021 – Jun 2023)*

**Stack:** AWS (ALB, API Gateway), Azure AD, OAuth 2.0, PKCE, Terraform, Python, Groovy, Jenkins, Bash, Chef, OpenResty, Lua

- Designed and shipped reusable Terraform modules for OAuth2-based authorization on AWS API Gateway and ALB, adopted across multiple teams; built example Python service demonstrating Authorization Code and On-Behalf-Of flows.
- Built a Python Lambda for OAuth token parsing and claims-injection header rewriting; mirrored the same behavior in OpenResty (Nginx + Lua) for legacy apps.
- Authored Chef recipes and Jenkins-Conjur pipelines for PAM credential injection in CI/CD across scientific application teams; wrote supporting Bash for multiple PAM flows.

### ITS — CTO · Jan 2020 – Present *(at ITS since Jun 2018)*

*Engineering leadership across multiple products and internal infrastructure. Grew the team from 5 to 30 people. Own company-wide engineering methodology, presales, and successful project delivery.*

#### Helpdesk Bot — Support Automation *(ITS · Nov 2023 – Feb 2025)*

**Stack:** Python, aiogram, FastAPI, Docker, PostgreSQL, sqladmin, Todoist API

- Designed and launched a Telegram + Todoist support bot for hackathon technical support, used across 10 Digital Breakthrough events including national and international finals.
- Implemented two-way async communication between Telegram users and Todoist agents; scaled the support team from 1 to 3 agents with a pull-based ticket distribution model.
- Owned the project end-to-end: architecture, team assembly, production launch, CI/CD setup.

#### Microcirculation — Eye Vessel Detection *(Far East Innovations · Sep 2021 – Nov 2023)*

**Stack:** Python, PyTorch, OpenCV, FastAPI, Vue, U-Net, QuPath

- Fine-tuned a U-Net model to 0.678 Dice/F1 segmentation quality for blood-vessel detection in slit-lamp ophthalmology images.
- Built post-processing pipeline using computational geometry: vessel decomposition, skeletonization, length/width measurement, and clinician-derived classification.
- Calibrated optical measurements using 3D-printed eye models per microscope to derive per-device transformation matrices.
- Shipped as a FastAPI + Vue web service with a public demo at [eye.its.xyz](https://eye.its.xyz); supervised three bachelor/master theses on segmentation and synthetic data generation; registered database certificate; presented at a U-Net meetup.

#### ML Showroom *(ITS · Sep 2021 – Feb 2022)*

**Stack:** Python

- Led delivery of a computer-vision demo platform as PM: scoped MVP, coordinated a 3-engineer team, owned client handoff.

#### Career Assistant — Mobile App *(Kaspersky Lab · Jan 2021 – Apr 2021)*

**Stack:** Python, Flutter, Dart, Firebase, GraphQL

- Managed first project as PM: a Flutter + Firebase mobile app connecting career experts with junior specialists; project closed pre-launch, surfacing a durable lesson on KISS and stack-risk management.

#### Corporate Knowledge Base *(ITS · Oct 2020 – Present)*

**Stack:** Wiki.js, Docker Compose, PostgreSQL, Elasticsearch, Keycloak, SSO, Git

- Launched and grew the company's internal Wiki.js knowledge base to 31 unique contributors (9 with 50+ commits each); SSO via corporate Keycloak.
- Deployed via Docker Compose + PostgreSQL with Git-synchronized content for backup, authorship tracking, and version history.
- Drove adoption through knowledge-management meetups, making the wiki a core part of company culture.

#### XTHON — Hackathon Platform *(ITS · Jun 2020 – Present)*

**Stack:** Python, Flask, SQLAlchemy, JavaScript, React, Next.js, OpenResty, Nginx, Material UI, Docker

- Built and grew XTHON into a gamified online-hackathon platform hosting 100+ events including Digital Breakthrough and Lisbon Hackathon; rolled through frontend → backend → DevOps → engineering-lead roles.
- Migrated landing-page SPA to Next.js for SSR (previously Pug-based with OpenResty meta-tag injection); built a standalone JS API library hosted on S3 for embedding into legacy pages.
- Evolved DevOps from per-repo Jenkins + S3 to multi-stage Docker images and private registries (JCR → GitLab) to a monorepo on GitHub Flow.
- Led backend refactoring: extracted business logic from controllers into services and added unit-test coverage to CI; managed sprints across a 2–12 person team.

#### ITS Core Infrastructure *(ITS · Jun 2020 – Present)*

**Stack:** Jenkins, GitLab, Linux, Bash, Docker

- Built and operate ITS's internal platform from scratch — self-hosted GitLab + GitLab CI, Jenkins, Linux servers, containerized service mesh on Docker — supporting 30 engineers and 100+ hosted hackathons.

#### Museum Guide — Mobile App *(ITS · Jun 2018 – Jun 2019)*

**Stack:** Python, React Native

- Built backend (Python) and mobile (React Native) for an audio-tour museum guide application.

#### Seal Recognition from Drone Imagery *(ITS · May 2018 – May 2020)*

**Stack:** Python, OpenCV, PyTorch

- Trained a deep-learning model (OpenCV + PyTorch) for seal detection in UAV aerial photography; experimented with augmentation strategies and color-space transformations.
- Defended bachelor's thesis at SPbPU on this work.

### RUVENTS LTD — Backend Engineer · Jan 2021 – Oct 2021

#### FADM — Web Application Support *(RUVENTS · Jan 2021 – Oct 2021)*

**Stack:** Python, Django, AngularJS

- Owned production support for a Django + AngularJS portal: added structured logging and an alerting runbook to cut incident triage time.

## Personal Projects / Open Source

### sodg.rs — Rust crate (Surging Object DiGraph)

**Stack:** Rust, Cargo, GitHub Actions, codecov.

- Open-source library implementing a directed-graph data structure with automatic garbage collection, used by the EO virtual machine; [published on crates.io](https://crates.io/crates/sodg) with CI gating on coverage and lint via GitHub Actions.

### Matrix homeserver — production Ansible deployment

**Stack:** Ansible, Docker Compose, Matrix Synapse, LiveKit, Coturn, Matrix Auth Service (OIDC), PostgreSQL, Let's Encrypt, UFW, fail2ban.

- Reproducible IaC for self-hosted Synapse with voice/video, OIDC auth, and full system hardening; two-stage Makefile-driven deploy (~10 minutes from clean VM).

### grand-chat — real-time chat platform

**Stack:** Django 5, DRF, React + TypeScript, Centrifugo, PostgreSQL, Debezium (CDC), Prometheus, Grafana, Docker Compose.

- End-to-end real-time chat with CDC-streamed updates from PostgreSQL to WebSocket clients via Centrifugo; full observability stack (Prometheus + Grafana) baked into compose.

### tg-smm — Telegram → Hugo blog bridge

**Stack:** Python (async), python-telegram-bot, GitHub Git Data API, Kubernetes, Argo CD, Sealed Secrets, GitHub Actions, GHCR.

- Async bot that buffers Telegram media groups and commits rendered Markdown directly to the blog repo via the GitHub API; GitOps-deployed to Kubernetes with Sealed Secrets at rest.

## Education

### M.Sc. (incomplete), Applied Mathematics — SPbPU · 2020 – 2022

- Mentor for the Algorithms and Data Structures course.

### B.Sc., Applied Mathematics — SPbPU · 2016 – 2020

- Thesis: seal recognition from drone imagery (OpenCV, PyTorch).

## Languages

Russian (native) · English (B2+)

## Links

- Portfolio: [leins275.xyz](https://leins275.xyz)
- LinkedIn: [linkedin.com/in/leins275](https://linkedin.com/in/leins275)
- XTHON Platform: [xthon.xyz](https://xthon.xyz)
- Eye Vessel Demo: [eye.its.xyz](https://eye.its.xyz)
- U-Net Meetup talk: [youtu.be/unuBcZAFOvY](https://youtu.be/unuBcZAFOvY)
- Knowledge Management Meetup talk: [youtu.be/sdgjbPIgvRQ](https://youtu.be/sdgjbPIgvRQ)
