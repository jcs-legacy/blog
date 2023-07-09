---
weight: 4
title: "Long Journey with Emacs"
date: 2023-07-08T21:00:00+00:05
lastmod: 2023-07-08T21:00:00+00:05
draft: true
author: "Jen-Chieh Shen"
authorLink: "https://www.jcs-profile.com/"
description: ""
images: []
resources:
- name: "featured-image"
  src: "featured-image.png"

tags: ["Editor", "Emacs"]
categories: ["Editor"]

lightgallery: true
---

**⚠️ The intention of this post is to remind myself why Emacs isn't worth my time anymore.**

I've been using Emacs since 2015. I have developed more than 150 elisp packages,
and maintained over 200 packages (including my packages). It's been a long
journey staying in the Emacs community, I think it's a good for me to slow
myself down and step back a little and think what I've accomplished through
out these years.

<!-- more -->

## 💫 How I got into Emacs?

Many people asked me this question, so I decided to reply it here.

I first saw Emacs is at 2015, seeing Casey Muratori's [Handmade Hero][] series.
I was blown away by how fast he can code in Emacs. How he can jump to other
window and never leave the keyboard are all new to me.

But if I look at his configuration now, it's actually not so great.
He doesn't use any third-party packages, so he has every defined in his own configuration
file (`~/.emacs` file). The configuration can still be great without using
those third-party packages, but it will only limit you and remake the wheel
that maybe others have already done for you.

Besides all of that, Casey is still a top-tier programmer I have known in my whole life. ❤️

## 💫 How much I've put my time to Emacs?

Like I've mentioned above, trust me. I put in a lot of time to accomplish what
I've done for the Emacs community. If you search all my packages, I hold the most
packages in [MELPA][]. The time I have put kinda proof how much I love Emacs, but
also how much I get disappointed with Emacs. 😥

## 💫 Why Emacs isn't the worth my time anymore?

First of all, there is nothing wrong with the Emacs' devel. They did a great job
keeping Emacs alive and I like their mentality and most of their technical decesions.

For me, the problem is the Elisp dev ecosystem (not the Emacs comunity itself; consider
the Elisp dev ecosystem is the subset of the Emacs community). I appreciate people
willing to contribute to Emacs, but I hate when they don't consider their packages'
cross-platform capability. Yes, I'm a Windows user, actually, I use all the most used
systems (Linux, macOS, and Windows). I hate that when I tried a package then it only
works on a specific system (excluding packages that only rely on certain systems),
but it suppose to work on all systems. I feel terrible and frustrated because most of
the Elisp dev does not care or does not care enough about the minority users (Windows users).
Even about some famous packages don't work well on Windows, magit is slow, straight.el is slow,
helm is slow, ivy is slow, projectile is broken, eping is broken, EAF is constatly broken, etc.
I use over 500 packages in my configuration. I can list a ton of packages that have terrible
cross-platform capability.

But are they all bad? Of course not. Most of the authors show patience and are willing to
help you with the issue you had encountered. At least they have tried to solve these issues
and provide a workaround, etc.

## 💫 Will I leave Emacs community?

WIP

## ⚜️ Conclusion

WIP


[Handmade Hero]: https://handmadehero.org/
[MELPA]: https://melpa.org/#/
