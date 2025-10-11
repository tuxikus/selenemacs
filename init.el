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

(require 'init-custom)
(require 'init-dashboard)
(require 'init-files)
(require 'init-gcmh)
(require 'init-magit)
(require 'init-meow)
(require 'init-package)
(require 'init-theme)
(require 'init-ui)
(require 'init-vertico)

;;; init.el ends here
