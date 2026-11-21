---
date: '2026-02-22T14:58:47+00:00'
slug: '72'
authors: [leins275]
categories: [post]
title: "Speech to text"
draft: false
---

Speech to text

Recently I had a task: convert quite a lot of audio messages into text. To my surprise, ChatGPT, which had been handling my tasks quite cheerfully until then, fell short. It failed not only at converting the voice to text, but also at properly processing the results once I had already transcribed them without it! In short, it smelled of weakness at OpenAI.

Gemini performed much better, successfully recognizing a couple of audio files. However, the UI doesn't let you upload more than 10 audio files at once, and I had 121 files. So I had to dust off Python and write a small script. I used whisper, and a fairly large model actually fit into the 12 GB of my RTX 4070, which is nice. Good thing I assembled that rig!

As for the results, I can say this whole thing worked wonderfully. I exported the audio files from my private Telegram channel, which I created specifically for this purpose. At first I planned to use the speech-to-text feature of Telegram Premium, but it turned out it can't handle long audio. This is an implicit limitation of Telegram: if a message is longer than 5 minutes, the chances of transcribing it drop sharply.

In short, if you want to do a lot of work efficiently, you still can't get by without scripts. If you ever want to turn mumbling into text on an industrial scale, the working scheme is this:

1. Export from the Telegram channel
2. Script for the transcript
3. LLM for final polishing and assembly.

P.S. A GPU for transcription is not required, it just makes things faster.
