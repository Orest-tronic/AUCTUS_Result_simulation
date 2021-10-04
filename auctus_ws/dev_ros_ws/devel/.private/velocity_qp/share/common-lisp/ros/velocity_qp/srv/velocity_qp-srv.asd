
(cl:in-package :asdf)

(defsystem "velocity_qp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UI" :depends-on ("_package_UI"))
    (:file "_package_UI" :depends-on ("_package"))
  ))