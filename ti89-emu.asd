;;;; ti89-emu.asd

(asdf:defsystem #:ti89-emu
  :description "TI89 emulator written in Common Lisp"
  :author "kotorifan"
  :license  "Creative Commons Zero 1.0 (Public Domain Waiver)"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "ti89-emu")))
