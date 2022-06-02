---
weight: 4
title: "Emacs Eask - Alternative to Emacs Cask"
date: 2022-05-29T21:00:00+00:00
lastmod: 2022-05-29T21:00:00+00:00
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

## 🔰 Introduction

The name `Eask` came from [Emacs Cask](https://github.com/cask/cask)
; if you already know what `Cask` is and what it does, please skip this and
forward to the next section.

(**NOTE:** `Cask` and `Eask` are interchangeable in this section)

`Eask` is the dependency management tool for Emacs Lisp. It's like `npm` to
`Node.js`; but it isn't exactly the same since `Eask` has fewer tools than `npm`,
plus their ecosystems are slightly different. Below is the link **Why Cask?** has
a better explanation.

* [Why Cask?](https://cask.readthedocs.io/en/latest/guide/introduction.html#introduction-why-cask)

## ❓ Then why Eask, and not Cask?

A simple comparison table below:

|          | Behind technology                 | Cross-Platform                                                   | Emacs Version | Size                |
|----------|-----------------------------------|------------------------------------------------------------------|---------------|---------------------|
| Cask     | Bash, Batch, and Python (Windows) | ❌ Good on Linux and macOS, but it's particularly bad on Windows | 24.5+         | 3,000+ lines        |
| makem.sh | Shellscript                       | ❌ Doesn't work on Windows by default                            | 26.1+         | 1 file, 1200+ lines |
| Eldev    | Bash, Batch, and Powershel, etc   | ✔ Good, but qutie slow on Windows                                | 24.4+         | 4,000+ lines        |
| Eask     | Node or Native Executables        | ✔ Good, and it can be compiled to native executables             | 26.1+         | 3,000+ lines        |

(Table is copy and paste, please visit the site [here](https://emacs-eask.github.io/#-comparisons))

`Eask` advantages came from the behind technology choice, it uses `Node.js` and
not `Shellscript`, `Bash`, or `Batch`, etc. It would require us to use `Node runtime`,
but we can use [pkg](https://www.npmjs.com/package/pkg) (big thanks to `vercel`) to
package into native executable to avoid such a hassle.

It's much more hassle while working with `Eask`, because we will first need to install
`Node.js` and then call `npm install`. So besides this, what are the **GOOD** stuffs?

1. `Eask` can be package into native executable; it should give you a better speed!
2. It uses `Cask`'s DSL, it became very easy to adapt from Cask to Eask
3. **Eask**-file is unlike **Cask**-file; it's an Elisp file and function similar to
`init.el` (combined from `Cask` + `Eldev`)
4. Use high programming language `JavaScript`; `npm` has a huge ecosystem. We can
always fallback to node layer if something doesn't work inside Emacs (e.g. `exec`,
`init`)
5. `Eask` doesn't require to call `Emacs` all the time; this is particularly good
in Windows due to the `fork` operation is quite slow in the system (this is why
I don't recommend `Eldev` under Windows)
6. Cross-platform and consistency; other alternatives don't support Windows by
default except `Eldev`
7. It's easy to expand, clearer project architecture; `Cask` , `Eldev`, and
`makem.sh` have their files very huge, it would be harder to maintain or adding new
features
8. Global flag `-g` allow you to manage you Emacs configuration

Eask sounds good, but it isn't perfect. Here are the bads:

1. Harder to get into the development, you will need to know `JavaScript` and `npm`
2. `Eask` project structure follows 1 command to 1 file; people hate having multiple
files everywehre
3. Project is much more complicated (same as no. 2)

## 🧙‍♂️ Conclusion

WIP

---

> I've also learned 了[Hugo](https://gohugo.io/); would love to share
it one day!

---

## 🔗 Links

* https://github.com/emacs-eask/eask
