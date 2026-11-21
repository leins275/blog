---
date: '2025-09-07T21:41:49.104999'
slug: pravilo-dvukh
authors: [leins275]
categories: [post]
title: "The Rule of Two"
tags: []
draft: false
description: "The author shares an approach to organizing storage of important files, proposing the 'rule of two': keeping data in two independent places without using synchronization."
---

I was thinking about backups yet again, and decided to formulate one general rule.

All files are divided into important and unimportant. Unimportant ones are those you wouldn't mind losing. For important files, the rule of two applies: every file must exist in two different locations.

Synchronization is not suitable for implementing the rule of two. The locations of the files must be independent.

As with the Sith, one copy is the master and the other is the apprentice. All changes are applied to the primary version, and the secondary one only gets backed up, that is, copied.
