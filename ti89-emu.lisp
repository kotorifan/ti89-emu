;;;; ti89-emu.lisp

(in-package #:ti89-emu)

(registers-collect) ; Define struct for registers
(defparameter ti89-memory (make-instance 'memory)) ; Creates memory array
(defparameter ti89-cpu (make-instance 'cpu)) ; Creates struct for memory
