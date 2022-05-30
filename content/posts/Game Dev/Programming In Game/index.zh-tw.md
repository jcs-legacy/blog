---
weight: 4
title: "遊戲裡的編程"
date: 2019-11-12T21:00:00+00:00
lastmod: 2019-11-12T21:00:00+00:00
draft: false
author: "Jen-Chieh Shen"
authorLink: "https://www.jcs-profile.com/"
description: ""
images: []
resources:
- name: "featured-image"
  src: "featured-image.png"

tags: ["Game Dev"]
categories: ["Game Dev"]

lightgallery: true
---

遊戲裡的編程可能是因為我就讀藝術學校, 很多人覺得我計算機領域很厲害. 
我很幸運在大學裡認識了各行各界的人, 有的是大公司來進修的，有的是從
別的領域過來的. 其中做遊戲的科系很特別，因為遊戲需要的人太雜, 主要
分成三類, 美術, 設計, 程式. 關於遊戲領域我會在特別寫一篇, 在此篇先不討論.

<!-- more -->

程式一直都是我們學校的弱點, 我們學校美術總是多於程式, 因此我在程式
方面多下了很多功夫, 也因此愛上了計算機的領域.

因為我非本科生, 所以我並不知道我的見解是否完全正確. 我只知道我的一些
計算機領域的朋友以及老師都十分贊同我的想法. 首先, 計算機是很複雜的東西, 
所以就算自己有什麼不懂的地方, 那很正常. 計算機是我認為其中一個最難的科
學之一, 因為其精密程度之高. 更重要的是, 人類學習機器的語言本來就比人類
學習人類的語言要難. 這也是為什麼我時常不在我非本科的朋友面前很少提工作
的事情, 因為通常的反應就是沒反應. 時常剛解釋完一個名詞就是接著解釋另一
個名詞. 畢竟是機器的東西, 所以我也不在提了.

由於我是從遊戲領域那邊起家的, 對於一般的程序員來說, 本質上是有很大的不同的. 
我只能說我很幸運能夠從遊戲起家, 光是一個單機遊戲就要學我認為最難的程式
語言C++. 接著學遊戲引擎，引擎又分「作業系統層」,「平台層」,「腳本層」,
「資源管理」,「渲染層」,等等.這些層級就算一天寫8小時代碼一個層級的精通
並實現代碼平均也要幾個月的時間. 這也是為什麼遊戲引擎開發時間總是大概落在最
少3年到4年之間, 而且通常可能還很簡陋. 拿個舉例, 資源管理就需要學編碼/密碼學. 
然後再齊集封包, 還不提效能, 安全性, 等等.

接著是線上遊戲, 就需要學Socket. 一般是不會用HTTP的, 因為那太慢. 抱歉了
寫web的大大們, 遊戲基本一定從TCP/UDP開始. 從TCP/UDP開始就會碰到基礎的
blocking IO、non-blocking IO、synchronous IO、asynchronous IO. 接著封包處理, 
資料序列化, 安全性, 等等. 學完之後就是資料庫, SQL, MySQL, mongoDB, 等等. 
資料庫算是整體較為簡單的, 依照遊戲可能還需要學HTML/CSS/PHP來建立官網辦
帳號, 查資料, 等等.

光是遊戲開發就必須跨三個領域, 遊戲編程, 網路編程, Web開發. 而且這還只是
程式部分, 有經驗的程式開發人員還強調與美術配合, 與設計人員做協調. 
因為根據遊戲引擎的不同, 美術的設計方式也會不同, 也會影響效能，
也可能不易維護. 音效跟美術大同小異, 在此不提. 設計跟遊戲有關, 也不提.

這裡我只說了個大概, 畢竟真的有太多東西, 而且要講細節的話, 沒有特別研究
的人可能會聽不懂.