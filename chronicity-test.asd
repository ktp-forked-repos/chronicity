(cl:defpackage #:chronicity-test-system
  (:use #:cl #:asdf))

(cl:in-package #:chronicity-test-system)

(defsystem #:chronicity-test
  :depends-on (:chronicity)
  :components
  ((:module test
            :serial t
            :components 
            ((:file "lisp-unit")
             (:file "packages")
             (:file "utils")
             (:file "numerize")
             (:file "repeater-day-name")
             (:file "repeater-month-name")
             (:file "repeater-month")
             (:file "repeater-time")
             (:file "repeater-week")
             (:file "repeater-weekend")
             (:file "repeater-year")))))
