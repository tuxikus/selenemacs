;;; init-user-config.el --- User configuration setup. -*- lexical-binding: t -*-

;; Copyright (C) 2025 tuxikus

;; Author: tuxikus <contact@tuxikus.de>
;; Maintainer: tuxikus <contact@tuxikus.de>
;; URL: https://github.com/tuxikus/selenemacs

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
;; Things the user can configure.

;;; Code:

;; Custom group for SelenEmacs
(defgroup selenemacs nil
  "Group of the SelenEmacs distribution."
  :group 'convenience)

(defcustom se/theme 'modus-vivendi
  "Theme of SeleneEmacs"
  :type '(choice
	  (const modus-operandi)
	  (const modus-vivendi))
  :group 'selenemacs)

(provide 'init-user-config)
;;; init-user-config.el ends here

