;--------------------------------------
;; My personal .emacs file
;;--------------------------------------


;; ---------------------------------
;; For packages not included in ELPA
;;
(setq load-path (cons "~/.emacs.d/emacs-config/init.d/" load-path))
(setq load-path (cons "~/.emacs.d/emacs-config/site-lisp/" load-path))
(setq load-path (cons "~/.emacs.d/auto-install/" load-path))

;; Assuming emacs 24
(require 'package)
(add-to-list 'package-archives
	     '("marmalde" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("elpa" . "http://elpa.gnu.org/packages/"))

(package-initialize)

(require 'auto-install)
(require 'init-packages)
(require 'init-var)
(require 'init-depend)
(require 'init-display)
(require 'init-emodes)
