#import "template.typ": *

#show: cv-doc.with(lang: "en")

= Nikita Lanskov

Senior Software Engineer · Izmir, Turkey · open to EU relocation

#link("mailto:nikitalanskov@gmail.com")[nikitalanskov\@gmail.com] · #link("https://wa.me/905316014154")[+90 531 601 4154] · #link("https://linkedin.com/in/leins275")[linkedin.com/in/leins275] · #link("https://leins275.xyz")[leins275.xyz]

== Profile

Senior Software Engineer with 8 years building production backend and cloud infrastructure (Python, AWS, Kubernetes, Terraform) for regulated clients (Novartis, Merck) at EPAM. Owns DevOps and CI/CD end-to-end --- migrated Multi-AZ RDS, CI/CD platforms, and HPC workflow engines without downtime. Also CTO of a 30-person engineering consultancy I grew from 5.

== Core competencies

Engineering Leadership · Cloud (AWS) · DevOps & CI/CD · Solution Architecture · Identity & OAuth · IaC at Scale

== Skills

*Languages* --- Python, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

*Backend & Web* --- Django, DRF, FastAPI, Flask, React, Next.js, Vue, aiogram, python-telegram-bot

*Cloud, IaC & Orchestration* --- AWS (EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, Backup), Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

*CI/CD & Observability* --- GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make, Hugo, Nginx, OpenResty, Prometheus, Grafana

*Data* --- PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas

*Identity & Security* --- OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur

*ML & Mobile* --- PyTorch, OpenCV, U-Net, QuPath, React Native, Flutter (Dart)

== Experience

=== EPAM Systems --- Senior Software Engineer · Nov 2021 -- Present

_Backend and DevOps engineering for regulated life-sciences clients (Novartis, Merck) --- IaC, CI/CD platforms, OAuth, and HPC workflow tooling._

- Migrated Merck's iPaaS production RDS from single-instance to Multi-AZ with live data transfer (zero downtime for federated teams) and implemented cross-account S3 snapshot replication per Merck's compliance policy.
- Replatformed Novartis's Cromwell scientific workflow engine off Docker/Singularity onto a single EasyBuild module bundling Python, Perl, and the Cromwell binary --- eliminating container-runtime maintenance and per-host install steps for HPC users.
- Migrated Merck's Document Search Chatbot CI/CD end-to-end from Jenkins to GitHub Actions, wiring Artifactory as the Lambda artifact store and unlocking self-service deploys for the dev team.
- Shipped reusable Terraform modules for OAuth 2.0 authorization on AWS API Gateway and ALB at Novartis, adopted by multiple teams; included a reference Python service demonstrating Authorization Code + PKCE and On-Behalf-Of flows, with an OpenResty (Nginx + Lua) mirror that retrofitted legacy apps without code changes.
- Built Merck's iPaaS alerting stack from zero --- Flask webhook to Merck Mail API over SSL, cert-manager, alert rules across EKS nodes, MuleSoft quotas, Nginx, and log pipelines --- turning on-call from blind to instrumented.
- Earlier: reverse-engineered Anypoint's private API to automate MuleSoft RTF provisioning around a Terraform-provider gap; built an AWS Lambda + Jenkins pipeline that ingested SharePoint reports into MySQL, removing ~4 hours/week of manual wrangling; authored Chef + Jenkins-Conjur recipes that injected PAM credentials into CI/CD for scientific application teams.

=== ITS --- CTO · Jan 2020 -- Present _(at ITS since Jun 2018)_

_Engineering leadership across multiple products and the company's internal platform. Grew the team from 5 to 30 engineers. Own company-wide engineering methodology, presales, and project delivery._

- Built and grew XTHON into a gamified online-hackathon platform hosting 100+ events (Digital Breakthrough, Lisbon Hackathon); progressed through frontend → backend → DevOps → engineering-lead roles, ran sprints for a 2--12-engineer team, and evolved the DevOps stack from per-repo Jenkins + S3 → multi-stage Docker on private registries → a GitHub Flow monorepo.
- Built and operate ITS's internal engineering platform from scratch --- self-hosted GitLab + GitLab CI, Jenkins, Linux servers, containerized service mesh on Docker --- supporting 30 engineers and 100+ hosted hackathons.
- Shipped Microcirculation (Far East Innovations): fine-tuned a U-Net to 0.678 Dice/F1 for blood-vessel segmentation on slit-lamp ophthalmology images, built a computational-geometry post-processing pipeline (decomposition, skeletonization, length/width, clinician-derived classification), and launched the FastAPI + Vue service publicly at #link("https://eye.its.xyz")[eye.its.xyz]; supervised three bachelor/master theses and registered a database certificate.
- Launched and grew the company's Wiki.js knowledge base to 31 active contributors (9 with 50+ commits each), SSO via corporate Keycloak; drove adoption through internal knowledge-management meetups and embedded the wiki as a default part of how the team ships.
- Designed and launched a Telegram + Todoist Helpdesk Bot powering technical support across 10 Digital Breakthrough hackathons, including the national and international finals; scaled the support team from 1 to 3 agents with a pull-based ticket distribution model.
- Earlier: led ML Showroom (CV demo platform) as PM with a 3-engineer team; led first PM engagement on a Flutter + Firebase career-assistant app for Kaspersky Lab (formative KISS / stack-risk lesson); built the Python backend and React Native client for a museum audio-guide app; trained a PyTorch + OpenCV model for seal detection from UAV imagery (basis of bachelor's thesis defended at SPbPU).

== Personal projects / Open source

=== Matrix homeserver --- production Ansible deployment

- Reproducible IaC for self-hosted Synapse with voice/video (LiveKit, Coturn), OIDC auth via Matrix Auth Service, and system hardening (UFW, fail2ban); two-stage Makefile-driven deploy reaches production in ~10 minutes from a clean VM.

=== tg-smm --- Telegram → Hugo blog bridge

- Async python-telegram-bot service that buffers Telegram media groups and commits rendered Markdown directly to the blog repo via the GitHub Git Data API; GitOps-deployed to Kubernetes with Sealed Secrets at rest.

== Education

=== M.Sc. (incomplete), Applied Mathematics --- SPbPU · 2020 -- 2022

- Mentor for the Algorithms and Data Structures course.

=== B.Sc., Applied Mathematics --- SPbPU · 2016 -- 2020

- Thesis: seal recognition from drone imagery (OpenCV, PyTorch).

== Spoken languages

Russian (native) · English (B2+)

== Links

- Portfolio: #link("https://leins275.xyz")[leins275.xyz]
- LinkedIn: #link("https://linkedin.com/in/leins275")[linkedin.com/in/leins275]
- XTHON Platform: #link("https://xthon.xyz")[xthon.xyz]
- Eye Vessel Demo: #link("https://eye.its.xyz")[eye.its.xyz]
- U-Net Meetup talk: #link("https://youtu.be/unuBcZAFOvY")[youtu.be/unuBcZAFOvY]
- Knowledge Management Meetup talk: #link("https://youtu.be/sdgjbPIgvRQ")[youtu.be/sdgjbPIgvRQ]
