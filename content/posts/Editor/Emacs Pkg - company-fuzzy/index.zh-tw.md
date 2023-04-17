---
weight: 4
title: "Emacs 插件 - company-fuzzy"
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

每當我使用 [company-mode][] 的時候, 總覺得用的不是很舒服. 有時候一個 backend
會斷斷續續做補全, 而且也不允許你補全圖中有任何錯字. 所以補全時常不是會看
到我的 company 畫面一直中斷又重啟 (閃爍). 這個問題可以透過更好的配置
`company-backends` 這個變數來得以來解決, 例如:

```elisp
(setq company-backends '(company-capf :with company-dabbrev))
```

但這又會衍生另一個問題, 那就是同樣的配置會一直出現.

<!-- more -->

[company-fuzzy]: https://github.com/jcs-elpa/company-fuzzy
[company-mode]: https://github.com/company-mode/company-mode
