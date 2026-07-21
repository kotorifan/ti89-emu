;; processor.lisp

(in-package #:ti89-emu)



(defclass processor()
  ((registers :accessor processor-registers
              :initform (union
                         ))))

(defmethod process-opcodes (opcode)
  "Assigns each opcode a function"
  (cond 
    (= opcode 0x00)(exec-opcode-)
