
(cl:in-package :asdf)

(defsystem "velocity_qp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PandaRunMsg" :depends-on ("_package_PandaRunMsg"))
    (:file "_package_PandaRunMsg" :depends-on ("_package"))
  ))