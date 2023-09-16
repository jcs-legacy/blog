# 如何使用 Eask 構建自己的 ELPA？



[ELPA][] 是 Emacs Lisp Package Archive 的縮寫。它供 Emacs 用戶下載軟件包，
也是 Emacs Lisp 開發人員託管軟件包的地方。以下是著名 [ELPA][] 的列表，請訪問他們的網站了解更多信息！

- [GNU Elpa][] (official)
- [NonGNU Elpa][] (official)
- [MELPA][]

## ❓ 為什麼?

那麼我們為什麼要舉辦自己的 ELPA？這些 ELPA 還不夠嗎？

是的，一般來說，您不需要自己託管 ELPA，因為您需要的大多數軟件包都可以在這些 ELPA 之一中獲得（軟件包可以在 ELPA 之間共存）。
以下是您可能想要構建自己的 ELPA 的幾個原因：

1. 您喜歡的包(尚未)出現在任何 ELPA 上
2. ELPA 的包裹審核需要幾天或幾個月的時間來審核（[MELPA][] 可能是最快的）
3. 不再維護的軟件包，您可以鏈接到新維護的分支
4. 類似於第 3 點、你喜歡的包有bug，你可以創建一個新的fork來替換它！
5. 用於 elisp 包開發目的。有時構建工具就是不夠用。

<!-- more -->

## 📝 事前準備

- 關於 Emacs Lisp 的一些知識
- 安裝 [Eask][] CLI

## 🔍 步驟1.創建 ELPA 項目

使用 [Eask][] 輕鬆構建您自己的 [ELPA][]。您只需要幾個命令，它就會運行。

首先，我們需要創建 ELPA 項目：

```sh
$ eask create elpa <project_name>
```

在示例中，我將使用 “my-elpa” 作為我的項目名稱：

```sh
$ eask create elpa my-elpa
```

然後會提示創建 Eask 文件；輸入所需信息，如下所示：

```sh
✓ Done cloning the ELPA template

Initialize the Eask-file for your project...
package name: (my-elpa)
version: (1.0.0)
description: Test ELPA
entry point: (my-elpa.el)
emacs version: (26.1)
website:
keywords: elpa
About to write to /home/jenchieh/my-elpa/Eask:

(package "my-elpa"
         "1.0.0"
         "Test ELPA")

(website-url "")
(keywords "elpa")

(package-file "my-elpa.el")

(script "test" "echo \"Error: no test specified\" && exit 1")

(source "gnu")

(depends-on "emacs" "26.1")


Is this OK? (yes) yes
```

這是輸出：

```sh
Package-file seems to be missing `my-elpa.el'
Preparing your new ELPA project... done v

Congratulations! Your new ELPA project is created in /home/jenchieh/my-elpa/

  [1] Navigate to /home/jenchieh/my-elpa/
  [2] Try out the command `eask info`
  [3] See the README.md file to learn to use this project

Visit https://emacs-eask.github.io/ for quickstart guide and full documentation.
```

現在，您將看到項目 `my-elpa` 已創建！使用 `ls` 命令查看項目文件夾中的內容：

```
root@6a52f76aff2d:/home/jenchieh/my-elpa# ls
Eask  README.md  docs  recipes
```

## 🔍 步驟2.添加 recipes！


現在您可以將 recipe 添加到 `recipes` 文件夾中。

如果您不知道食譜是什麼，請參閱 [melpa#recipe-format](https://github.com/melpa/melpa#recipe-format)
了解更多信息！

在此示例中，我將向此 ELPA 添加 [jcs-modeline][]。但您可以添加任何您喜歡的包！

這是 recipe 文件，並將其放置為 `my-elpa/recipes/jcs-modeline` （無文件擴展名）。

```elisp
(jcs-modeline :repo "jcs-emacs/jcs-modeline" :fetcher github)
```

## 🔍 步驟3：構建它！

好的！現在我們的 ELPA 中有一個包裹。

接下來是構建我們的 ELPA，以便我們可以使用 GitHub 頁面（或您自己的服務器）託管它。

首先，我們需要為我們的項目安裝依賴項。

```sh
$ eask install-deps
```

輸出：

```sh
root@6a52f76aff2d:/home/jenchieh/my-elpa# eask install-deps
Package-file seems to be missing `my-elpa.el'
Loading package information... done v
Installing 1 package dependency...

  - [1/1] Installing github-elpa (20200129.417)... done v

(Total of 1 dependency installed, 0 skipped)
```

安裝所有依賴項後，我們可以使用以下命令構建 ELPA：

```sh
$ eask run build
```

輸出：

```sh
:: github-elpa: packaging recipe jcs-modeline
Package: jcs-modeline
Fetcher: github
Source:  https://github.com/jcs-emacs/jcs-modeline.git

Cloning https://github.com/jcs-emacs/jcs-modeline.git to /home/jenchieh/my-elpa/.github-elpa-working/jcs-modeline/
Checking out afff69f4ef4a126902abe271f1e3fd22b9f91021
Copying files (->) and directories (=>)
  from /home/jenchieh/my-elpa/.github-elpa-working/jcs-modeline/
  to /tmp/jcs-modelinengILfd/jcs-modeline-20230901.330
    jcs-modeline.el -> jcs-modeline.el
Created jcs-modeline-20230901.330.tar containing:
  jcs-modeline-20230901.330/
  jcs-modeline-20230901.330/jcs-modeline-pkg.el
  jcs-modeline-20230901.330/jcs-modeline.el
 ✓ Success:
  2023-09-16T03:29:36+0000  jcs-modeline-20230901.330.entry
  2023-09-16T03:29:36+0000  jcs-modeline-20230901.330.tar
Built jcs-modeline in 0.655s, finished at 2023-09-16T03:29:36+0000
```

恭喜！ 🎉 現在您擁有了自己的 ELPA！

接下來，您只需推送到 GitHub 存儲庫並為該存儲庫啟用 GitHub Pages。請參閱
[github-elpa#3-change-repository-setting](https://github.com/10sr/github-elpa#3-change-repository-setting)
了解更多信息！


[ELPA]: https://www.emacswiki.org/emacs/ELPA

[GNU Elpa]: https://elpa.gnu.org/
[NonGNU Elpa]: https://elpa.nongnu.org/
[MELPA]: https://melpa.org/#/

[Eask]: https://emacs-eask.github.io/

[jcs-modeline]: https://github.com/jcs-emacs/jcs-modeline

