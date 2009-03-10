;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-USER; Base: 10 -*-

(cl:defpackage #:chronicity-system
  (:use #:cl #:asdf))

(cl:in-package #:chronicity-system)

(defsystem #:chronicity
  :depends-on (:cl-ppcre :cl-interpol)
  :serial t
  :components ((:file "packages")
               (:file "utils")
               (:file "numerize")
               (:file "chronicity")
               (:file "repeater")
               (:file "grabber")
               (:file "pointer")
               (:file "scalar")
               (:file "ordinal")
               (:file "separator")))

(asdf:defsystem #:chronicity-test
  :depends-on (:chronicity :rt)
  :serial t
  :components ((:file "test")))

(defmethod perform ((o test-op) (c (eql (find-system :chronicity))))
  (operate 'load-op :chronicity-test)
  (funcall (intern (symbol-name :run-all-tests) :chronicity-test)))