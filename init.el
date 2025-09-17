;;; init.el --- Initialization file of SelenEmacs. -*- lexical-binding: t no-byte-compile: t -*-

;; Copyright (C) 2025 tuxikus

;; Author: tuxikus <contact@tuxikus.de>
;; Maintainer: tuxikus <contact@tuxikus.de>
;; URL: https://github.com/tuxikus/selenemacs
;; Created: 15.09.2025
;; Version: 0.0.4
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

;;----------
;; load path
(if (getenv "SELENEMACS_RUN_LOCAL")
    (setq user-emacs-directory "."))

(add-to-list 'load-path (concat user-emacs-directory "/lisp"))
;;----------

;;-------------------
;; user configuration
(require 'init-user-config)
(let ((se-config (expand-file-name "se-config.el" user-emacs-directory)))
  (when (file-exists-p se-config)
    (load se-config)))
;;-------------------

;;-----------
;; init files
(require 'init-package)
(require 'init-theme)
(require 'init-ui)
;;-----------

;;---------------------
;; benchmark after init
(if (getenv "SELENEMACS_BENCHMARK")
    (kill-emacs))
;;---------------------

;;; init.el ends here
