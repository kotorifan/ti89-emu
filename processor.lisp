;; processor.lisp

(in-package #:ti89-emu)

(defparameter *processor-registers* nil)

(defmacro registers-collect ()
  `(defstruct registers
     ,@(loop for reg in '(D0 D1 D2 D3 D4 D5 D6 D7) ; Data registers
             collect `(,reg 0 :type (unsigned-byte 32)))
     ,@(loop for reg in '(A0 A1 A2 A3 A4 A5 A6) ; Address registers
             collect `(,reg 0 :type (unsigned-byte 32)))
     ,@(loop for reg in '(USP SSP) ; Stack pointers
             collect `(,reg 0 :type (unsigned-byte 32)))
     (PC 0 :type (unsigned-byte 32)) ; Program Counter
     (STATUS 0 :type (unsigned-byte 32)))) ; Status register

(defclass cpu ()
  ((registers :accessor cpu-registers
              :initform (make-registers)
              :documentation "Struct with all the m68k CPU registers")
  (cycles :accessor cpu-cycles
           :initform  '0 :type unsigned-long-long
           :documentation "Total number of cycles")))
