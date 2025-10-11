;;; se-config.el --- User config file of SelenEmacs. -*- lexical-binding: t no-byte-compile: t -*-

;; Main configuration file for SelenEmacs.

;;; Font
(setq se/font "IosevkaTerm-20")

;;; Theme
(setq se/theme 'modus-vivendi)
;;(setq se/theme 'modus-operandi)

;;; Packages
;;
;; Magit
;;
(setq se/use-magit t)

;;
;; Vertico
;;
(setq se/use-vertico t)

;;
;; Orderless
;;
(setq se/use-orderless t)

;;
;; Dashboard
;;
(setq se/use-dashboard t)

;;
;; Doom Modeline
;;
(setq se/use-doom-modeline t)

;;
;; Meow
;;
;;(setq se/use-meow t)
