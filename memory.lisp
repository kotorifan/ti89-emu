;; memory.lisp
;; Stuff to deal with memory

(in-package #:ti89-emu)

(defclass memory ()
  ((space :accessor memory-space
          :initform (make-array *memory-space-num* ; available in config.lisp
                                :element-type 'unsigned-byte
                                :initial-element 0)))
  (:documentation "Allocates the amount of memory wanted."))

