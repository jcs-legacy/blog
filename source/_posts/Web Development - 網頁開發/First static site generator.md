---
title: First static site generator - 第一個靜態網頁生產器
layout: post
date: 2021-09-26 11:07:20
comments: true
tags: [development]
categories: [Web Development - 網頁開發]
keywords: web development site generator static
description:
photos:
    - https://avatars.githubusercontent.com/u/89732124?s=200&v=4
---

I'm recently hooked by the static site generator, hence I have decided to create
one for myself. Why not? The huge reason is that I could host the site using
the GitHub's static site hosting services, but the one I have previously created
in 2018 [API-Reference-Template](https://jcs090218.github.io/blog/2018/11/12/Legacy%20-%20%E8%88%8A%E6%96%87/API-Reference-Template%20-%20API%E5%8F%83%E8%80%83%E6%A8%A1%E6%9D%BF/).
is server base, which is not generator base. 

最近迷上的網頁生產器, 所以我決定為我自己造一個網頁生產器, 何不? 其中較大的原因是因為我可以運行我的
網站到免費的 GitHub 網頁運行服務. 不過我上一個2018的專案 [API-Reference-Template](https://jcs090218.github.io/blog/2018/11/12/Legacy%20-%20%E8%88%8A%E6%96%87/API-Reference-Template%20-%20API%E5%8F%83%E8%80%83%E6%A8%A1%E6%9D%BF/).
的核心是`服務器`取向, 而不是`生產器`取向... 😨

<!-- more -->

The static site generator isn't hard to create, the most valuable technology
is the frontend and UI/UX. However, I have already created the frontend for
my own use. The main task for me would just have to extract the server base
to generator base. I have also renamed the tool to [SiraDoc](https://github.com/SiraDoc/SiraDoc),
so then I'm able to use it for other sites as well! Just like the previous
website, yet a lot easier and more suitable for the GitHub Actions' environment!
😉

製作一個靜態網頁生產器並不是很困難, 我認為一個靜態網頁的價值來自原前端和整體的使用體驗. 然而,
我已經有一個令我自己滿意的前端網頁. 所以我就沿用我之前寫的專案, 並直接提取其中的前端部分.
然後直接把`服務器`取向的核心改成`生產器`取向! 🎉🎉🎉 我直接把這個工具重新取名為 [SiraDoc](https://github.com/SiraDoc/SiraDoc),
這樣一來我也能夠給其他的網頁當作模板使用! 🥳

## 🔗 Link

* https://github.com/SiraDoc/SiraDoc
