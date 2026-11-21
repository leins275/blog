---
date: '2025-08-30T20:15:24+03:00'
slug: armiya-ai-agentov-na-podkhode
authors: [leins275]
categories: [post]
title: "The Army of AI Agents Is Coming"
tags: [AI, automation, n8n, GitHub API, content generation, smm]
draft: false
description: "The author shares their experience setting up AI agents via the N8N platform to automate content publishing, including post generation and sending them to a blog through the GitHub API."
---

Hooray, it works! I decided to play around with N8N. This thing is for building various pipelines, using AI agents in particular.

Since playing around in the cloud version is not serious, of course everything is set up on my own server. (If anyone's interested, you can check out my repository - https://github.com/leins275/n8n-smm)

So for a test, I built this kind of pipeline. I've long been thinking about how to post to one place and have some slaves make posts to all the other interesting places... So, AI agents are great at handling SMM activities like these.

Right now my pipeline can grab a post from Telegram after it's published, extract the title, content and tags from that text, generate today's date, stuff all of this into a Hugo template, and create a new post via the API in my GitHub repository with the blog. A thing like this can be put together from scratch in about 6 hours and a couple of weekends, and it works just wonderfully.
