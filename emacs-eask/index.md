# Emacs Eask - Alternative to Emacs Cask


## 🔰 Introduction

The name `Eask` is obviousely came from [Emacs Cask](https://github.com/cask/cask)
; if you already know what is `Cask` and what it does, please skip this and
forward to the next section.

(**NOTE:** `Cask` and `Eask` are interchangeable in this section)

`Eask` is the dependency management tool for Emacs Lisp. It's like `npm` to
`Node.js`; but it isn't exactly the same since `Eask`'s has less tool than `npm`,
plus their ecosystems are slightly different. Below link **Why Cask?** has better
explanation.

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

`Eask`'s advantages came from the behind technology choice; it uses `Node.js` and
not `Shellscript`, `Bash`, `Batch`, etc. It would require us to use `Node runtime`,
but we can use [pkg](https://www.npmjs.com/package/pkg) (big thanks to `vercel`) for
packaging into native executable to avoid such a hassle.

I hope the needs to install `Node.js` and the extra step to call `npm install`
are the only defect from `Eask`. So what are the **GOOD** stuffs?

1. `Eask` can be packaged into native executables; it should give you a better speed!
2. It uses `Cask`'s DSL; it became very easy to adapt from Cask to Eask
3. **Eask**-file is unlike **Cask**-file; it's an Elisp file and functions similar to
`init.el` (combined from `Cask` + `Eldev`)
4. Use high-level programming language `JavaScript`; `npm` has a huge ecosystem. We
can always fall back to the node layer if something doesn't work inside Emacs (e.g.
`exec`, `init`)
5. `Eask` doesn't require to call `Emacs` all the time; this is particularly good
in Windows due to the `fork` operation is quite slow in the system (this is why
I don't recommend `Eldev` under Windows)
6. Cross-platform and consistency; other alternatives don't support Windows by
default except for `Eldev`
7. It's easy to expand, and clearer project architecture; `Cask`, `Eldev`, and
`makem.sh` have their files very huge, so it would be harder to maintain or add new
features
8. Global flag `-g` allows you to manage your Emacs configuration

Eask sounds good, but it isn't perfect. Here are the bads:

1. Harder to get into the development; you will need to know `JavaScript` and `npm`
2. `Eask` project structure follows 1 command to 1 file; people hate having multiple
files everywhere
3. The project is much more complicated (same as no. 2)

## 🧙‍♂️ Conclusion

WIP

---

> I've also learned 了[Hugo](https://gohugo.io/); would love to share
it one day!

---

## 🔗 Links

* https://github.com/emacs-eask/eask

