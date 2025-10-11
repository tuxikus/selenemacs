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
;;(setq se/use-magit nil)

;;
;; Vertico
;;
(setq se/use-vertico t)
;;(setq se/use-vertico nil)

;;
;; Dashboard
;;
(setq se/use-dashboard t)
;;(setq se/use-dashboard nil)

;;
;; Doom Modeline
;;
(setq se/use-doom-modeline t)
;;(setq se/use-doom-modeline nil)

;;
;; Meow
;;
;;(setq se/use-meow t)
(setq se/use-meow nil)
