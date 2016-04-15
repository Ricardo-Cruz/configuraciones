(tool-bar-mode nil)
(global-font-lock-mode)
;; (defun subtitle()
;;   (interactive)
;;   (beginning-of-line)
;;   (insert "==")
;;   (end-of-line)
;;   (insert "==")
;;   (forward-line 1))
;; (global-set-key "\C-c\M-t" 'subtitle)

(defun minombre()
  (interactive)
  (insert "Ricardo Cruz Navarro")
(global-set-key "\C-c\M-n" 'minombre)

(defun mipaginaweb()
  (interactive)
  (insert "Ricardo Cruz Navarro")
(global-set-key "\C-c\M-p" 'mipaginaweb)

;; (add-hook 'Latex-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (add-hook 'text-mode-hook 'turn-on-auto-fill)
;; (setq TeX-parse-self t)
;; (setq TeX-auto-save t)

;; (set-specifier default-toolbar-visible-p nil)
;; (set-specifier bottom-toolbar-visible-p nil)
;; (set-specifier left-toolbar-visible-p nil)
;; (set-specifier right-toolbar-visible-p nil)
;; (set-specifier top-toolbar-visible-p nil)

;; (setq user-full-name "Ricardo Cruz Navarro")

;; Realzado de la línea donde se encuentra al cursor
;; (global-hl-line-mode 1)

;; ;; Realzado de sintaxis
;; (global-font-lock-mode t)

;; ;; Realzado de la región marcada
;; (transient-mark-mode t)

;; ;; Emparejar paréntesis
;; (show-paren-mode t)

;; ;; Descomprimir archvos
;; (auto-compression-mode t)

;; ;; Presentar número de columna
;; (column-number-mode t)

;; ;; Salvar posición en los archivos entre sesiones
;; (setq-default save-place t)

;; ;; Mostrar debug en errores
;; (setq debug-on-error t)

;; ;; Modos inicial y por defecto
;; (setq default-major-mode 'text-mode)         ;; El modo por defecto es texto
;; (setq initial-major-mode 'emacs-lisp-mode)   ;; Buffer inicial en modo lisp

;; ;; Scroll contínuo
;; (setq scroll-step 1)

;; Inhibir mensajes y pantalla de inicio
;; (setq inhibit-startup-buffer-menu t)
;; (setq inhibit-startup-screen t)
;; (setq inhibit-startup-message t)
;; (setq inhibit-startup-echo-area-message "usuario")

;; Formato del reloj
;; (setq display-time-24hr-format t     ;; 24 horas
;;       display-time-load-average nil) ;; No mostrar load-average
;; 					; Reemplazar "yes" por "y" en el prompt
;; (fset 'yes-or-no-p 'y-or-n-p)


;; (setq-default fill-column 100)
;; ;; Ajustar tabulador a 4
;; (setq default-tab-width 4)

;; ;; Requiere instalar 'slime' y 'clisp'
;; ;; Orden: M-x slime
;; ;;(setq inferior-lisp-program "/usr/bin/clisp")  ; el ejecutable
;; ;;(add-to-list 'load-path "~/.slime/")           ; directorio SLIME
;; ;; Habilitar sólo* una de las dos siguientes:
;; ;;(require 'slime)                             ; carga siempre
;; ;;(require 'slime-autoloads)                     ; carga bajo demanda
;; ;;(slime-setup)

;; ;; CONTROL DE VERSIONES - BACKUPS =================================
;; ;; Sin copias de seguridad (torvalds-mode)
;; ;;(setq make-backup-files nil)
;; ;; Si prefieres copias de segurdad, comenta la línea anterior y
;; ;; descomenta las siguientes:
;;  (setq version-control t      ;; activarlo
;;        delete-old-versions t  ;; Borrar versiones viejas
;;        ;; Directorio de backups:
;;        backup-directory-alist (quote ((".*" . "~/.emacs_backups/")))
;;        semanticdb-default-save-directory "~/.emacs_semantic/"
;;        kept-new-versions 3    ;; Número de versiones nuevas a guardar
;;        kept-old-versions 5)   ;; Número de versiones viejas a guardar

;; ;; CORRECTOR ORTOGRAFICO ==========================================
;; ;;; Corrección ortográfica (requiere ispell o aspell)
;; ;; (setq-default ispell-program-name "ispell")
;; ;; (setq-default ispell-check-comments nil)
;; ;; (setq ispell-enable-tex-parser t)
;; ;; (setq-default ispell-skip-html t)
;; ;; (setq ispell-extra-args '("-T" "latin1"))
;; ;; (setq ispell-dictionary "castellano8")
;; ;; Usar modo flyspell (corrección automática) en archivos de texto
;; ;; y latex
;; ;; (¡Cuidado con archivos grandes!)
;; ;; (add-hook 'latex-mode-hook 'flyspell-mode)
;; ;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; ;; (setq ispell-parser 'tex)

;; ;; EXTRAS VARIOS ==================================================
;; ;; Speedbar
;; (setq speedbar-show-unknown-files t)
;; (global-set-key [(f12)] 'speedbar-get-focus) ;; F12 para mostrar/ocultar

;; ;; Autoañadir paréntesis o llaves de cierre
;; (setq skeleton-pair t)
;; (global-set-key "[" 'skeleton-pair-insert-maybe)
;; (global-set-key "(" 'skeleton-pair-insert-maybe)
;; (global-set-key "{" 'skeleton-pair-insert-maybe)
;; (global-set-key "'" 'skeleton-pair-insert-maybe)
;; (global-set-key "\"" 'skeleton-pair-insert-maybe)
;; ;;(global-set-key "<" 'skeleton-pair-insert-maybe) ;

;; ;; Dar permisos de ejecución al fichero si es un script
;; (setq after-save-hook
;;       (quote (executable-make-buffer-file-executable-if-script-p)))

;; ;; Activar interactively-do-things:
;; ;;  minibufer interactivo para archivos, bufers
;; (ido-mode t)

;; ;; Activar icomplete mode:
;; ;;  minibufer interactivo para variables, funciones
;; (icomplete-mode t)


;; (defun duplicate-line (arg)
;;   "Duplicate current line, leaving point in lower line."
;;   (interactive "*p")

;;   ;; save the point for undo
;;   (setq buffer-undo-list (cons (point) buffer-undo-list))

;;   ;; local variables for start and end of line
;;   (let ((bol (save-excursion (beginning-of-line) (point)))
;; 		eol)
;; 	(save-excursion

;; 	  ;; don't use forward-line for this, because you would have
;; 	  ;; to check whether you are at the end of the buffer
;; 	  (end-of-line)
;; 	  (setq eol (point))

;; 	  ;; store the line and disable the recording of undo information
;; 	  (let ((line (buffer-substring bol eol))
;; 			(buffer-undo-list t)
;; 			(count arg))
;; 		;; insert the line arg times
;; 		(while (> count 0)
;; 		  (newline)         ;; because there is no newline in 'line'
;; 		  (insert line)
;; 		  (setq count (1- count)))
;; 		)

;; 	  ;; create the undo information
;; 	  (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list)))
;; 	) ; end-of-let

;;   ;; put the point in the lowest line and return
;;   (next-line arg))

;; (global-set-key "\C-c\C-d" 'duplicate-line)

;; (display-time)

;; (add-to-list 'load-path "~/.emacs.d/")
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;; (ac-config-default)

;; (setq visible-bell t)

;; (tool-bar-mode nil)

;; (setq browse-url-browser-function 'w3m-browse-url)
;; (autoload 'w3m-browse-url "w3m" "ask" t)
;; (global-set-key "\C-xm" 'browse-url-at-point)
