---
date: '2025-09-11T18:13:49.825999'
slug: linux-fokusy-dlya-vinduzyatnikov
authors: [leins275]
categories: [post]
title: "Linux tricks for Windows folks"
tags: []
draft: false
description: "Experience using Linux tools for file management and backups in a Windows environment with WSL. The author shares useful utilities rdfind and robocopy."
---

On Windows you can only run .exe files, and for everything else this platform is poorly suited. Fortunately, even Microsoft understands this and added a proper operating system to its creation. Since WSL appeared, Windows has become a viable choice for me again, and for the last couple of years I've been using it on a permanent basis.

What I'm getting at: on Linux, driver support and specialized software are often weak. But basic software for typical tasks has been working like clockwork since the 70s of the last century. I want to tell you about two console tools I used for organizing backups.

1. rdfind. A Linux program that efficiently finds duplicate files. I ran it from WSL to clean up my 15-year-old archives. Out of ~100k files it found and deleted duplicates totaling 60 gigabytes. Awesome! Try doing that by hand...
2. robocopy. I felt a bit strange writing a PowerShell script, but FileHistory is said to be deprecated in Win11, so I decided to go with scripts. With robocopy you can achieve mirroring of two folders, and that's exactly what I wanted for backups.
