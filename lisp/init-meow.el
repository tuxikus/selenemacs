;;; init-meow.el --- Meow modal editing configuration. -*- lexical-binding: t -*-

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
(defcustom se/use-meow nil
  "Option to use the meow package."
  :type 'boolean
  :group 'selenemacs)

(defcustom se/meow-qwerty t
  "Option to use meow qwerty bindings."
  :type 'boolean
  :group 'selenemacs)

(when se/use-meow
  (use-package meow
    :ensure t
    :init
    (defun se/setup-meow ()
      (meow-global-mode 1)
      
      (when se/meow-qwerty
	(meow-motion-define-key
	 '("j" . meow-next)
	 '("k" . meow-prev)
	 '("<escape>" . ignore))
	
	(meow-leader-define-key
	 '("1" . meow-digit-argument)
	 '("2" . meow-digit-argument)
	 '("3" . meow-digit-argument)
	 '("4" . meow-digit-argument)
	 '("5" . meow-digit-argument)
	 '("6" . meow-digit-argument)
	 '("7" . meow-digit-argument)
	 '("8" . meow-digit-argument)
	 '("9" . meow-digit-argument)
	 '("0" . meow-digit-argument)
	 '("/" . meow-keypad-describe-key)
	 '("?" . meow-cheatsheet))
	
	(meow-normal-define-key
	 '("0" . meow-expand-0)
	 '("9" . meow-expand-9)
	 '("8" . meow-expand-8)
	 '("7" . meow-expand-7)
	 '("6" . meow-expand-6)
	 '("5" . meow-expand-5)
	 '("4" . meow-expand-4)
	 '("3" . meow-expand-3)
	 '("2" . meow-expand-2)
	 '("1" . meow-expand-1)
	 '("-" . negative-argument)
	 '(";" . meow-reverse)
	 '("," . meow-inner-of-thing)
	 '("." . meow-bounds-of-thing)
	 '("[" . meow-beginning-of-thing)
	 '("]" . meow-end-of-thing)
	 '("a" . meow-append)
	 '("A" . meow-open-below)
	 '("b" . meow-back-word)
	 '("B" . meow-back-symbol)
	 '("c" . meow-change)
	 '("d" . meow-delete)
	 '("D" . meow-backward-delete)
	 '("e" . meow-next-word)
	 '("E" . meow-next-symbol)
	 '("f" . meow-find)
	 '("g" . meow-cancel-selection)
	 '("G" . meow-grab)
	 '("h" . meow-left)
	 '("H" . meow-left-expand)
	 '("i" . meow-insert)
	 '("I" . meow-open-above)
	 '("j" . meow-next)
	 '("J" . meow-next-expand)
	 '("k" . meow-prev)
	 '("K" . meow-prev-expand)
	 '("l" . meow-right)
	 '("L" . meow-right-expand)
	 '("m" . meow-join)
	 '("n" . meow-search)
	 '("o" . meow-block)
	 '("O" . meow-to-block)
	 '("p" . meow-yank)
	 '("q" . meow-quit)
	 '("Q" . meow-goto-line)
	 '("r" . meow-replace)
	 '("R" . meow-swap-grab)
	 '("s" . meow-kill)
	 '("t" . meow-till)
	 '("u" . meow-undo)
	 '("U" . meow-undo-in-selection)
	 '("v" . meow-visit)
	 '("w" . meow-mark-word)
	 '("W" . meow-mark-symbol)
	 '("x" . meow-line)
	 '("X" . meow-goto-line)
	 '("y" . meow-save)
	 '("Y" . meow-sync-grab)
	 '("z" . meow-pop-selection)
	 '("'" . repeat)
	 '("<escape>" . ignore))))
  :hook
  (emacs-startup . se/setup-meow)))


(provide 'init-meow)
;;; init-meow.el ends here

