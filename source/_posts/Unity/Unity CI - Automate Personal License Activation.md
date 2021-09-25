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

追蹤了這篇 [My disappointing experience using Unity in a CI pipeline](https://forum.unity.com/threads/my-disappointing-experience-using-unity-in-a-ci-pipeline.737678/),
我也認為這是我目前遇到的最大問題. 個人版本(免費)的授權系統是部分衝突到CI/CD的概念的, 原因是,
我們還是得手動更新授權至 `UNITY_LICENSE` 這個 GitHub secret (環境變數)裡面. 也導致了
我們全部的CI/CD並不是全部自動化的流程, 非常麻煩! 至於Plus/Pro使用者則沒有影響, 因為他們分
別使用了不同的授權系統! 😖

<!-- more -->

Let's go straigt forward to the problem, what should we do about it? And what
can be improved by this situation? My approach is to automate the licesning
task, but how? Long story short, I came up with a node package [unity-license-activate](https://github.com/jcs090218/unity-license-activate)
that is originally created by [Mizo Take](https://github.com/MizoTake). The
package uses a package named [Puppeteer](https://github.com/puppeteer/puppeteer),
meaning we can control browser through normal JavaScript! That is awesome, the
biggest issue has been resolved! 😁

我們直接切至問題點, 我們應該要怎麼做? 要怎麼讓這流程更順暢? 我的方法就是自動化整個授權的驗證過程!
長話短說, 我開發了一個 node 包 [unity-license-activate](https://github.com/jcs090218/unity-license-activate),
原開發者是 [Mizo Take](https://github.com/MizoTake). 這個包使用了 [Puppeteer](https://github.com/puppeteer/puppeteer)
來完成整個驗證步驟, 讓我可以使用JavaScript操控瀏覽器, 非常方便且正是我們需要的解決方法! 😁

Next step, we just have to update our secret `UNITY_LICENSE` through GitHub's API!
The tasks are simple, we only need two following GitHub actions.

下一步, 我們只剩下要更新我們的 secret 至 `UNITY_LICENSE` 這個環境變數就好! 這些任務非常簡單, 我
們只需要下列的 GitHub actions 即可辦到.

- [read-file-action](https://github.com/juliangruber/read-file-action), by [Julian Gruber](https://github.com/juliangruber)
- [actions-set-secret](https://github.com/hmanzur/actions-set-secret), by [Habid Enrique Manzur Restrepo](https://github.com/hmanzur)

We can use `read-file-action` to read the downloaded `.ulf` file into memory, then we
can use that as a value for our `actions-set-secrets`. Make sure you have added a secret
`ACCESS_TOKEN` to your repository environment. It’s needed for creating/updating your
GitHub secret from the workflow!

我們可以使用 `read-file-action` 來讀取下載好的 `.ulf` 檔案, 然後使用這個檔案的值給 `actions-set-secrets`.
記得要設置 `ACCESS_TOKEN` 到你的GitHub secret裡面. 這是用來從你的 workflow 更新和製造 GitHub secret 的.

The full workflow file can be accessed through [here](https://github.com/jcs090218/JCSUnity/blob/master/.github/workflows/license.yml).

完整的 workflow 檔案請看[這裡](https://github.com/jcs090218/JCSUnity/blob/master/.github/workflows/license.yml).

## 🔐 Two Factor Authentication (TFA) - 多重要素驗證

[unity-license-activate](https://github.com/jcs090218/unity-license-activate)
may not work since Unity would require you to enter a 6 digit verification code
from your email. To get pass this, you would have to install [unity-verify-code](https://github.com/jcs090218/unity-verify-code)
in your workflow and follow the steps [here](https://github.com/jcs090218/unity-verify-code#-prerequisite).

[unity-license-activate](https://github.com/jcs090218/unity-license-activate)
有可能會無法使用, 原因在於Unity驗證系統可能會要求6位的驗證碼到你的信箱. 如果要越過此步驟, 你必須
安裝 [unity-verify-code](https://github.com/jcs090218/unity-verify-code) 到你的
workflow 之中. 並且遵循這些步驟, 請看[這裡](https://github.com/jcs090218/unity-verify-code#-prerequisite).

## 🔗 Links

* [unity-license-activate](https://github.com/jcs090218/unity-license-activate)
* [unity-verify-code](https://github.com/jcs090218/unity-verify-code)
