;;; init-tempel.el --- tempel configuration. -*- lexical-binding: t -*-

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
(defcustom se/use-tempel nil
  "Option to use the tempel package."
  :type 'boolean
  :group 'selenemacs)

(when se/use-tempel
  (use-package tempel
    :ensure t
    :bind (("C-c s c" . tempel-complete)
           ("C-c s i" . tempel-insert))
    :custom
    (tempel-trigger-prefix "<")
    :init
    (defun tempel-setup-capf ()
      (setq-local completion-at-point-functions
                  (cons #'tempel-expand
			completion-at-point-functions)))
    
    (add-hook 'conf-mode-hook 'tempel-setup-capf)
    (add-hook 'prog-mode-hook 'tempel-setup-capf)
    (add-hook 'text-mode-hook 'tempel-setup-capf))

  (use-package tempel-collection
    :ensure t))

(provide 'init-tempel)
;;; init-tempel.el ends here
