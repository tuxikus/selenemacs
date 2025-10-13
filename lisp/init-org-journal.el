;;; init-org-journal.el --- org journal configuration. -*- lexical-binding: t -*-

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
;;

;;; Code:
(defcustom se/use-org-journal nil
  "Option to use the org journal package."
  :type 'boolean
  :group 'selenemacs)

(when se/use-org-journal
  (use-package org-journal
    :ensure t
    :custom
    (org-journal-dir (concat org-directory "/journal/"))
    (org-journal-file-type 'daily)
    (org-journal-file-format "%Y/%m/%F.org")
    (org-journal-date-format "%A, %d %B %Y")
    (org-journal-corryover-items "TODO=\"TODO\"|TODO=\"NEXT\"")))
		     
(provide 'init-org-journal)
;;; init-org-journal.el ends here
