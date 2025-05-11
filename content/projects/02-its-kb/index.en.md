+++ 
date         = 2025-05-11T12:31:17+03:00
draft        = false
title        = "Corporate KB"
description  = "Structured approach for knowledge sharing"
client       = "ITS"
roles        = ["Project manager", "Business analyst", "DevOps"]
skills = ["Git", "Knowledge sharing", "Change management", "PostgreSQL", "SSO", "Keycloak", "Docker"]
start        = "Oct 2020"
end          = "now"
+++

In my second year at ITS, I began to think systematically about preserving and transferring knowledge within the team. I was inspired by [this video](https://youtu.be/9hruCcHC4FY?feature=shared), which led me to launch an internal corporate knowledge base.

The main goal of the project was to create a shared space where employees could conveniently capture, structure, and share knowledge without access barriers. It was important to ensure both the technical reliability of the solution and the development of a culture around its use.

## 📈 Key Results and Further Development

Since 2020, the team has grown from 5 to 30 people. According to the git repository logs of the knowledge base, 31 unique contributors have participated in the project, 9 of whom have made over 50 commits each. This demonstrates that the knowledge base is not only active but continues to grow and evolve.

Over time, the role of the wiki also changed: while initially it served more as my personal public notebook, it eventually became a full-fledged working tool for the entire team — from new hires to leadership.

To encourage employee participation, I launched several initiatives to boost engagement, including a [knowledge management meetup](https://youtu.be/sdgjbPIgvRQ), where I discussed approaches to structuring and transferring knowledge within teams.

## 🏗 Architecture and Development Process

We chose [Wiki.js](https://js.wiki/) as the platform — a convenient and modern system for maintaining wiki documentation. The first version was deployed via Docker Compose with PostgreSQL and Elasticsearch. However, Elasticsearch was later removed due to high resource consumption, and the search functionality was switched to the built-in engine, which proved sufficient.

The knowledge repository is synchronized with a git repository, which allows us to:

* maintain a reliable backup of the knowledge base
* track authorship and changes via commit history

Later, I implemented SSO authentication via our corporate Keycloak, enabling seamless access for all employees.

## ⚙️ Implementation Details, Features, and Challenges

* The system is configured to be as open and horizontal as possible — all employees can read and edit any content. This lowers the barrier to entry and encourages continuous updates to the knowledge base.
* For information requiring restricted access, we use other tools (e.g., Google Docs).
* The project originally started as a personal initiative but has since become an integral part of the company’s culture.
* Thanks to git synchronization and a simple CI/CD approach, the platform is easy to maintain and scale as requirements evolve.

## Links

* [The first video that inspired me to explore knowledge management](https://youtu.be/9hruCcHC4FY?feature=shared)
* [My knowledge management meetup](https://youtu.be/sdgjbPIgvRQ)
* [WikiJS](https://js.wiki/)
