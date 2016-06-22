cil-mode [![Status Ventis][status-ventis]][andivionian-status-classifier]
========
[![MELPA][melpa-badge]][melpa-unstable] [![MELPA Stable][melpa-badge-stable]][melpa-stable]

cil-mode is a major [emacs][] mode for editing of [Common Intermediate
Language][cil-wiki]. It helps emacs to highlight CIL keywords and sets up the
proper indentation for such files.

Common Intermediate Language is also known as ILAsm, MSIL or simply IL. It is a
low-level assembly-like programming language targeting CLI environment (most
successful implementations of that specification are [.NET][dot-net] and
[Mono][mono]).

Screenshot
----------
Here's a screenshot of cil-mode with [gruber-darker-theme][]:

![Screenshot][screenshot]

Installation
------------
You can install the package through [melpa][melpa-stable] (you may also
use [unstable package][melpa-unstable] if feeling lucky). `cil-mode` will be
automatically loaded when `*.il` file is opened.

[andivionian-status-classifier]: https://github.com/ForNeVeR/andivionian-status-classifier#status-ventis-
[cil-wiki]: http://en.wikipedia.org/wiki/Common_Intermediate_Language
[dot-net]: http://www.microsoft.com/net
[emacs]: http://www.gnu.org/software/emacs/
[gruber-darker-theme]: https://github.com/rexim/gruber-darker-theme
[melpa-unstable]: http://melpa.org/#/cil-mode
[melpa-stable]: http://stable.melpa.org/#/cil-mode
[mono]: http://www.mono-project.com/

[melpa-badge]: http://melpa.org/packages/cil-mode-badge.svg
[melpa-badge-stable]: http://stable.melpa.org/packages/cil-mode-badge.svg
[screenshot]: Docs/screenshot.png
[status-ventis]: https://img.shields.io/badge/status-ventis-yellow.svg
