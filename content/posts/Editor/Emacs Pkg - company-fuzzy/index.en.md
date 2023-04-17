---
weight: 4
title: "Emacs Pkg - company-fuzzy"
date: 2023-04-16T21:00:00+00:00
lastmod: 2023-04-16T21:00:00+00:00
draft: false
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

> Repository: https://github.com/jcs-elpa/company-fuzzy

So why [company-fuzzy][] is made? Isn't the [company-mode][] sufficient?
company-mode is indeed one of the best packages in the Emacs world, and
I use it every day of my life. But there is something missing and feels a bit
incomplete to me. Here are the reasons:

1. company's tries completion with one backend at a time
2. You need to configure `company-backends` every time when a new backend is added

These reasons do make sense since that's all a completion framework does. But
what I really missed was the IDE-like auto-completion experience. A completion
framework allows typos, does fuzzy matching, and shows all possible candidates
in one completion window. Unfortunately, company-mode doesn't do this out of the
box.

<!-- more -->

This is why I've created the package [company-fuzzy][], the name of the package
may be a bit confusing since this package doesn't just fuzzy match your
completion data. Once you have enabled this package `M-x company-fuzzy-mode` it
will immediately give you the IDE-like auto-completion experience. So what does
this package do behind the scene?

1. It swaps out all your backends into one backend `company-fuzzy-all-other-backends`
and manages by the package's core.
2. Once we have all the completion backends, we can dump all the possible
completion data into one giant list.
3. Before presenting to the user, it filters out with the fuzzy matching engine
of your choice.

[company-fuzzy]: https://github.com/jcs-elpa/company-fuzzy
[company-mode]: https://github.com/company-mode/company-mode
