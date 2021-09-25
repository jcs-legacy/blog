---
title: Automate Personal License Activation in Unity CI - Unity CI自動化個人版授權
layout: post
date: 2021-09-25 11:07:20
comments: true
tags: [development]
categories: [Unity]
keywords: unity CI CD license
description: 
photos:
	- https://avatars.githubusercontent.com/u/66185740?s=200&v=4
---

Following up the thread, [My disappointing experience using Unity in a CI pipeline](https://forum.unity.com/threads/my-disappointing-experience-using-unity-in-a-ci-pipeline.737678/)
is also the biggest obstacle for me as well. Personal license (free version) of
Unity will expire in a period of time depends on your region. The licensing system
from Unity is partially contradict to the CI/CD concept since it will force
the user to update their secret `UNITY_LICENSE` on their GitHub Actions. (Notice
this does not apply to Plus/Pro users because they use a different licensing system!)
😖

<!-- more -->

Let's go straigt forward to the problem, what should we do about it? And what
can be improved by this situation? My approach is to automate the licesning
task, but how? Long story short, I came up with a node package [unity-license-activate](https://github.com/jcs090218/unity-license-activate)
that is originally created by [Mizo Take](https://github.com/MizoTake). The
package uses a package named [Puppeteer](https://github.com/puppeteer/puppeteer),
meaning we can control browser through normal JavaScript! That is awesome, the
biggest issue has been resolved!😁
