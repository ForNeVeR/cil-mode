(defvar cil-mode-hook nil)

(defvar cil-mode-map
  (make-keymap)
  "Keymap for CIL major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.il\\'" . cil-mode))

(defconst cil-keywords (list
                    "abstract"
                    "ansi"
                    "as"
                    "assembly"
                    "at"
                    "auto"
                    "autochar"
                    "beforefieldinit"
                    "bool"
                    "bytearray"
                    "catch"
                    "cdecl"
                    "char"
                    "cil"
                    "class"
                    "const"
                    "default"
                    "enum"
                    "explicit"
                    "extends"
                    "false"
                    "famandassem"
                    "family"
                    "famorassem"
                    "fastcall"
                    "fastcall"
                    "fault"
                    "field"
                    "filter"
                    "final"
                    "finally"
                    "float"
                    "float32"
                    "float64"
                    "forwardref"
                    "handler"
                    "hidebysig"
                    "il"
                    "implements"
                    "import"
                    "initonly"
                    "instance"
                    "int"
                    "int16"
                    "int32"
                    "int64"
                    "int8"
                    "interface"
                    "internalcall"
                    "lasterr"
                    "literal"
                    "managed"
                    "method"
                    "modopt"
                    "modreq"
                    "native"
                    "nested"
                    "newslot"
                    "noinlining"
                    "nomangle"
                    "not_in_gc_heap"
                    "notremotable"
                    "notserialized"
                    "object"
                    "optil"
                    "pinned"
                    "pinvokeimpl"
                    "preservesig"
                    "private"
                    "privatescope"
                    "public"
                    "refany"
                    "reqsecobj"
                    "rtspecialname"
                    "runtime"
                    "sealed"
                    "sequential"
                    "serializable"
                    "special"
                    "specialname"
                    "static"
                    "stdcall"
                    "stdcall"
                    "strict"
                    "string"
                    "synchronized"
                    "thiscall"
                    "thiscall"
                    "tls"
                    "to"
                    "true"
                    "typedref"
                    "unicode"
                    "unmanaged"
                    "unmanagedexp"
                    "unsigned"
                    "value"
                    "valuetype"
                    "vararg"
                    "virtual"
                    "void"
                    "wchar"
                    "winapi"
                    "wrapper"))


(defconst cil-font-lock-keywords-1
  (let ((metadata-face font-lock-builtin-face)
        (keyword-face font-lock-keyword-face)

        (keyword-regex (concat "\\<" (regexp-opt cil-keywords) "\\>")))
    (list
     (cons "\\.\\w+\\>" metadata-face)
     (cons keyword-regex keyword-face))))

(defvar cil-font-lock-keywords cil-font-lock-keywords-1
  "Default highlighing expressions for CIL mode")

(defun cil-indent-line ()
  "Indent current line as CIL code"
  (interactive)
  (beginning-of-line) ;; TODO: More indentation.
  (if (bobp)
      (indent-line-to 0)
    (indent-line-to (* 4 (car (syntax-ppss))))))

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
