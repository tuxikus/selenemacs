;;; init.el --- Initialization file of SelenEmacs. -*- lexical-binding: t no-byte-compile: t -*-

;; Copyright (C) 2025 tuxikus

;; Author: tuxikus <contact@tuxikus.de>
;; Maintainer: tuxikus <contact@tuxikus.de>
;; URL: https://github.com/tuxikus/selenemacs
;; Created: 15.09.2025
;; Version: 0.0.5
;; Keywords: -

;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see https://www.gnu.org/licenses/.

;;; Commentary:
;; SelenEmacs initialization file

;;; Code:

;; load path
(if (getenv "SELENEMACS_RUN_LOCAL")
    (setq user-emacs-directory "."))

(add-to-list 'load-path (concat user-emacs-directory "/lisp"))

;; https://github.com/jwiegley/use-package/issues/768#issuecomment-1229781184
(if init-file-debug
    (setq use-package-verbose t
          use-package-expand-minimally nil
          use-package-compute-statistics t
          debug-on-error t)
  (setq use-package-verbose nil
        use-package-expand-minimally t))

;; init files
(require 'init-elpaca)
(require 'init-se-config)

(require 'init-ace-window)
(require 'init-avy)
(require 'init-bookmark)
(require 'init-cape)
(require 'init-consult)
(require 'init-corfu)
(require 'init-custom)
(require 'init-dape)
(require 'init-dashboard)
(require 'init-doom-modeline)
(require 'init-ediff)
(require 'init-eglot)
(require 'init-electric)
(require 'init-emacs)
(require 'init-embark)
(require 'init-eshell)
(require 'init-files)
(require 'init-flycheck)
(require 'init-gcmh)
(require 'init-git-gutter)
(require 'init-go-mode)
(require 'init-ibuffer)
(require 'init-kdl-mode)
(require 'init-magit)
(require 'init-marginalia)
(require 'init-meow)
(require 'init-orderless)
(require 'init-org-journal)
(require 'init-org-mode)
(require 'init-package)
(require 'init-project)
(require 'init-protobuf-mode)
(require 'init-rg)
(require 'init-rust-mode)
(require 'init-savehist)
(require 'init-surround)
(require 'init-theme)
(require 'init-treemacs)
(require 'init-ui)
(require 'init-vertico)
(require 'init-wgrep)
(require 'init-which-key)
(require 'init-yasnippet)
;;(require 'init-tempel)

(server-start)
;;; init.el ends here
