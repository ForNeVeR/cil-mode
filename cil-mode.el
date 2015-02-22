(defvar cil-mode-hook nil)

(defvar cil-mode-map
  (make-keymap)
  "Keymap for CIL major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.il\\'" . cil-mode))

(defconst cil-font-lock-keywords-1
  (list
   '("\\<.assembly\\>" . font-lock-builtin-face)
   '("\\('\\w*'\\)" . font-lock-variable-name-face)))

(defvar cil-font-lock-keywords cil-font-lock-keywords-1
  "Default highlighing expressions for CIL mode")

(defun cil-indent-line ()
  "Indent current line as CIL code"
  (interactive)
  (beginning-of-line) ;; TODO: More indentation.
  (indent-line-to 0))

(defvar cil-mode-syntax-table
  (let ((st (make-syntax-table)))
    st)
  "Syntax table for cil-mode")

(defun cil-mode ()
  "Major mode for editing Common Intermediate Language files"
  (interactive)
  (kill-all-local-variables)
  (set-syntax-table cil-mode-syntax-table)
  (use-local-map cil-mode-map)

  (set (make-local-variable 'font-lock-defaults) '(cil-font-lock-keywords))
  (set (make-local-variable 'indent-line-function) 'cil-indent-line)

  (setq major-mode 'cil-mode)
  (setq mode-name "CIL")
  (run-hooks 'cil-mode-hook))

(provide 'cil-mode)
