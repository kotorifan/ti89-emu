;;;; ti89-emu.asd

(asdf:defsystem #:ti89-emu
  :description "TI89 emulator written in Common Lisp"
  :author "kotorifan"
  :license  "Creative Commons Zero 1.0 (Public Domain Waiver)"
  :version "0.0.1"
  :depends-on ("sdl2" "alexandria")
  :serial t
  :components ((:file "config")
               (:file "package")
               (:file "memory")
               (:file "processor")
               (:file "ti89-emu")))
