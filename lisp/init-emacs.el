;;; init-emacs.el --- Emacs configuration. -*- lexical-binding: t -*-

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
(use-package emacs
  :ensure nil
  :bind
  (("C-c p p" . project-switch-project)
   ("C-c p e" . project-eshell)
   ("C-c p f" . project-find-file)
   ("C-c f f" . find-file)
   ("C-c f F" . project-find-file)
   ("C-c f s" . save-buffer)
   ("C-c f S" . save-some-buffers)
   ("C-c b k" . kill-buffer)
   ("C-c b K" . kill-current-buffer))
  :custom
  (tab-always-indent 'complete)
  (text-mode-ispell-word-completion nil)
  (read-extended-command-predicate #'command-completion-default-include-p))

(provide 'init-emacs)
;;; init-emacs.el ends here
