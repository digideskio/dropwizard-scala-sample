;; -*-emacs-lisp-*-
;;
;; Emacs startup file, e.g.  /etc/emacs/site-start.d/50dropwizard-scala-sample.el
;; for the Debian dropwizard-scala-sample package
;;
;; Originally contributed by Nils Naumann <naumann@unileoben.ac.at>
;; Modified by Dirk Eddelbuettel <edd@debian.org>
;; Adapted for dh-make by Jim Van Zandt <jrv@debian.org>

;; The dropwizard-scala-sample package follows the Debian/GNU Linux 'emacsen' policy and
;; byte-compiles its elisp files for each 'emacs flavor' (emacs19,
;; xemacs19, emacs20, xemacs20...).  The compiled code is then
;; installed in a subdirectory of the respective site-lisp directory.
;; We have to add this to the load-path:
(let ((package-dir (concat "/usr/share/"
                           (symbol-name flavor)
                           "/site-lisp/dropwizard-scala-sample")))
;; If package-dir does not exist, the dropwizard-scala-sample package must have
;; removed but not purged, and we should skip the setup.
  (when (file-directory-p package-dir)
    (setq load-path (cons package-dir load-path))
    (autoload 'dropwizard-scala-sample-mode "dropwizard-scala-sample-mode"
      "Major mode for editing dropwizard-scala-sample files." t)
    (add-to-list 'auto-mode-alist '("\\.dropwizard-scala-sample$" . dropwizard-scala-sample-mode))))

