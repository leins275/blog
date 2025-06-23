+++ 
priority    = 1
date        = 2023-11-08T08:34:09+03:00
draft       = false
title       = "Helpdesk bot"
description = "Helpdesk bot for automation flow"
client      = "ITS"
skills      = ["Python", "aiogram", "FastAPI", "Docker", "PostgreSQL", "sqladmin"]
roles       = ["Project manager", "Business analyst", "Team Lead", "DevOps"]
start       = "Nov 2023"
end         = "Feb 2025"
+++

During the development of our digital platform, our team provided technical support to event organizers. As the number of requests grew, it became clear that the process needed to be automated to reduce the load on the support team and simplify communication for users.

To address this, we developed a Telegram bot integrated with Todoist via API. It enabled centralized request handling, faster response times, and the ability to scale the support team.

## 📈 Key Results
The bot was actively used from November 2023 to February 2025. It supported 10 Digital Breakthrough hackathons, including one national and one international event.

![Number attendees on events](img/number-attendees.png)

Before the bot was introduced, all support was handled by a single experienced agent, who was the sole point of contact. With the bot, we scaled the support team to three agents, reducing the workload on the key specialist and improving service availability through better load distribution and mutual support among agents.

> Data confirmed by the bot's internal database and xthon platform statistics.

Potential for further development:

Unlike traditional email-based helpdesk systems, the Telegram bot provides a much more dynamic, interactive, and responsive real-time support experience. This makes it particularly effective for high-intensity events like hackathons, and we are considering expanding its functionality and possibly open-sourcing the solution.

## 🏗 Architecture and Development Process
I initiated and led the project: I developed the concept, designed the architecture, assembled the team, launched the solution into production, and integrated it into the support workflow. As the company’s principal DevOps engineer, I also set up the CI/CD pipeline. A backend engineer worked alongside me and implemented most of the functional logic.

Key architecture components:
- Organizers interact with the Telegram bot, receive notifications, and track their requests in one place.
- Support agents receive alerts for new requests and pick them up on a pull-based model.
- All tickets are created in Todoist, where agents manage them via a task board.

Two-way communication is supported: users comment in Telegram, agents reply via Todoist ticket comments.

![Architecture diagram](img/architecture.png)

Development process:
- We used an agile, iteration-based approach.
- Infrastructure and deployments were fully automated via CI/CD pipelines.
- All API and database interactions were implemented asynchronously.

![DB schema](img/schema_db.png)

## ⚙️ Implementation Details, Features, and Challenges
- The bot handles all external interactions asynchronously, including Telegram API, Todoist API, and database operations.
- Internal workflows and support team guidelines were developed and formalized during the rollout.
- A key feature was using Telegram as the primary interface, which allowed users and agents to stay in context without switching tools.