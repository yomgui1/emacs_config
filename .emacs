;;; .emacs --- custom
;;;
;;; Commentary:

;;; Code:

(add-to-list 'load-path "~/.emacs.d/lisp/")
;;(add-to-list 'load-path "~/.emacs.d/lisp/cc-mode")

;; MEPLA - EMACS Packages Repository
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Continue with a Org configuration files
(org-babel-load-file (expand-file-name "~/.emacs.d/init.org"))



;; .emacs

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(c-default-style
   (quote
	((c-mode . "stroustrup")
	 (c++-mode . "stroustrup")
	 (awk-mode . "awk")
	 (other . "gnu"))))
 '(c-tab-always-indent t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(diff-switches "-u")
 '(display-battery-mode t)
 '(fci-rule-column 100)
 '(flycheck-c/c++-clang-executable "/usr/bin/clang++")
 '(flycheck-c/c++-gcc-executable "/usr/bin/g++")
 '(flycheck-clang-args (quote ("-c")))
 '(flycheck-clang-include-path nil)
 '(flycheck-clang-includes (quote ("/usr/include")))
 '(flycheck-clang-language-standard "c++11")
 '(flycheck-clang-warnings (quote ("all" "extra" "no-pragma-once-outside-header")))
 '(flycheck-error-list-minimum-level nil)
 '(flycheck-navigation-minimum-level nil)
 '(global-auto-complete-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-hungry-delete-mode t)
 '(global-linum-mode t)
 '(hl-line-sticky-flag nil)
 '(inhibit-startup-screen t)
 '(linum-delay t)
 '(linum-mode t t)
 '(max-lisp-eval-depth 1200)
 '(nxml-child-indent 4)
 '(package-selected-packages
   (quote
	(ox-qmd htmlize ox-reveal org-bullets smart-mode-line-powerline-theme powerline ggtags flycheck org-edna use-package)))
 '(python-indent-guess-indent-offset nil)
 '(python-indent-offset 4)
 '(sh-indent-after-case (quote +))
 '(sh-indent-for-case-alt (quote +))
 '(sh-indent-for-case-label 0)
 '(size-indication-mode t)
 '(tab-width 4)
 '(which-function-mode t))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 90 :width normal))))
 '(hl-line ((t (:inherit lazy-highlight))))
 '(powerline-active1 ((t (:inherit mode-line :background "firebrick")))))

;;; .emacs ends here
