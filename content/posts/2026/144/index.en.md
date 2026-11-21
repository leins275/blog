---
date: '2026-03-28T21:46:27+00:00'
slug: '144'
authors: [leins275]
categories: [post]
title: "Password managers"
draft: false
---

Password managers

A password manager is a must-have for any user. I won't repeat what everyone has already said many times.

I started out with password managers using pass, the Unix password manager. GPG keys, a console interface, git sync — all the good stuff.

However, using it across different devices is not very convenient. You have to somehow transfer the encryption keys to each new device every time... The task is not for the average mind. I did set it up on my phone, but that was it.

Looking for something easier, I switched to Bitwarden, and a cloud one at that. It may be less secure, but life immediately gets more cheerful. You just enter the master password to log in on another device, and it works in the browser without any hassle.

So I lived with Bitwarden for some time. I didn't delete pass, though, and didn't fully move over — too much hassle. Over time I wrote a little script that imports passwords from a Bitwarden backup into pass. Just for reliability, so to speak.

And recently I realized that, generally speaking, two password managers isn't such a bad thing. Each one is convenient in its own way. If with Bitwarden I can conveniently use passwords in the browser, then pass, for example, shows an unexpected side in syncing environment variables. Voilà: pass insert -m /env/project-x/dev < .env && pass git push, and my environment variables from the file are encrypted and synced.

After all, specialization works wonders.
