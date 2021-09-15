---
title: Parallax Website - 視差網站
layout: post
date: 2019-11-12 11:07:20
comments: true
tags: [development]
categories: [Web Development - 網頁開發]
keywords: web development
description: 
photos:
	- https://itimetraveler.github.io/hexo-theme-hiker/2016/10/24/Hiker%E4%B8%BB%E9%A2%98%E9%A2%84%E8%A7%88/homepage-index.png
---

**Link:** [MapleStory Survival Kit](http://www.jcs-profile.com/public/AAU/wnm249/m15/wnm249_final/)

這是我學校第一堂網頁設計課所做的網頁. 因為之前是做遊戲的, 所以想挑戰看看
網頁設計能夠做到什麼地步來做到近乎渲染遊戲的方式. 這個網站有以下幾個亮點,

This is the final project from the first class of web development from our 
school. I joined this class as a elective class so I could have a peek of how 
web development works. List below are few highlight I would like to show from 
this project.

<table>
  <tr>
    <td>1.</td>
    <td>視差 Parallax Effect</td>
  </tr>
  <tr>
    <td>2.</td>
    <td>聲音 Use of Sound</td>
  </tr>
  <tr>
    <td>3.</td>
    <td>轉蛋機 Gashapon</td>
  </tr>
</table>


## 視差 Parallax Effect

我看大多範例的視差效果都是一張圖在後面, 身為一個遊戲工程師不經覺得這
樣的設計有些粗糙. 也想要設計看看CSS能夠做到什麼地步. 很幸運地在自己多
方琢磨之後,了解到CSS的動畫機制. 可以有機會的展示CSS的強大動畫效果. 視
差的動畫效果可以由左上方小小的控制板來操作.

Most parallax effect I have seen aren't quite satisfied to me. Generally they 
will have a image at the back of other components then have it semi-stationary 
to sit still at the place. In this project I would like to have a peek of how 
CSS can do on 2016. Fortunately, after being learning animation system from 
CSS I am for sure that the parallax effect I was to imagine are possible to 
accomplish by just the CSS without using JavaScript. You can use the small 
panel on the top left corner to navigate through the four pages from this website.

## 聲音 Use of Sound

這是我第一次使用JavaScript裡面的聲效引擎. 在完全不了解的情況下,我選擇
使用第一個出現在我面前的一個函式庫
[ion.sound](https://github.com/IonDen/ion.sound).
這個函式庫非常簡單且強大, 看一下範例就可以清楚知道要怎麼使用.

I did not have any experiences with using JavaScript to play sound in the 
web browser. I simply searched on google and see if there is a method to 
play sound using JavaScript. Luckly, I found a JavaScript library, 
[ion.sound](https://github.com/IonDen/ion.sound) 
which is very simple to use and they have great demo and great examples on 
their website.


## 轉蛋機 Gashapon

如果你有拜訪我的這個作品網站,你會在最左邊的網站看到三台轉蛋機. 
當你用鼠標指著他的時候, 他就會開始掉落物品! 這是一個簡單的展示
使用JavaScript, 以每秒30偵的速度去渲染掉落動畫.
  
If you had visited this website, then you will know there are three 
gashapons on the mostleft page. Once you hover either of these gashapons, 
gashapon will start dropping items. This is a simple animation using pure 
JavaScript renders in 30 FPS.
