;; Auto-generated. Do not edit!


(when (boundp 'velocity_qp::UI)
  (if (not (find-package "VELOCITY_QP"))
    (make-package "VELOCITY_QP"))
  (shadow 'UI (find-package "VELOCITY_QP")))
(unless (find-package "VELOCITY_QP::UI")
  (make-package "VELOCITY_QP::UI"))
(unless (find-package "VELOCITY_QP::UIREQUEST")
  (make-package "VELOCITY_QP::UIREQUEST"))
(unless (find-package "VELOCITY_QP::UIRESPONSE")
  (make-package "VELOCITY_QP::UIRESPONSE"))

(in-package "ROS")





(defclass velocity_qp::UIRequest
  :super ros::object
  :slots (_play_traj _publish_traj _build_traj _exit_ ))

(defmethod velocity_qp::UIRequest
  (:init
   (&key
    ((:play_traj __play_traj) nil)
    ((:publish_traj __publish_traj) nil)
    ((:build_traj __build_traj) nil)
    ((:exit_ __exit_) nil)
    )
   (send-super :init)
   (setq _play_traj __play_traj)
   (setq _publish_traj __publish_traj)
   (setq _build_traj __build_traj)
   (setq _exit_ __exit_)
   self)
  (:play_traj
   (&optional __play_traj)
   (if __play_traj (setq _play_traj __play_traj)) _play_traj)
  (:publish_traj
   (&optional __publish_traj)
   (if __publish_traj (setq _publish_traj __publish_traj)) _publish_traj)
  (:build_traj
   (&optional __build_traj)
   (if __build_traj (setq _build_traj __build_traj)) _build_traj)
  (:exit_
   (&optional __exit_)
   (if __exit_ (setq _exit_ __exit_)) _exit_)
  (:serialization-length
   ()
   (+
    ;; bool _play_traj
    1
    ;; bool _publish_traj
    1
    ;; bool _build_traj
    1
    ;; bool _exit_
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _play_traj
       (if _play_traj (write-byte -1 s) (write-byte 0 s))
     ;; bool _publish_traj
       (if _publish_traj (write-byte -1 s) (write-byte 0 s))
     ;; bool _build_traj
       (if _build_traj (write-byte -1 s) (write-byte 0 s))
     ;; bool _exit_
       (if _exit_ (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _play_traj
     (setq _play_traj (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _publish_traj
     (setq _publish_traj (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _build_traj
     (setq _build_traj (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _exit_
     (setq _exit_ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass velocity_qp::UIResponse
  :super ros::object
  :slots (_result ))

(defmethod velocity_qp::UIResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass velocity_qp::UI
  :super ros::object
  :slots ())

(setf (get velocity_qp::UI :md5sum-) "816b01201e029471b4dd1aa5ddfe4270")
(setf (get velocity_qp::UI :datatype-) "velocity_qp/UI")
(setf (get velocity_qp::UI :request) velocity_qp::UIRequest)
(setf (get velocity_qp::UI :response) velocity_qp::UIResponse)

(defmethod velocity_qp::UIRequest
  (:response () (instance velocity_qp::UIResponse :init)))

(setf (get velocity_qp::UIRequest :md5sum-) "816b01201e029471b4dd1aa5ddfe4270")
(setf (get velocity_qp::UIRequest :datatype-) "velocity_qp/UIRequest")
(setf (get velocity_qp::UIRequest :definition-)
      "bool play_traj
bool publish_traj 
bool build_traj
bool exit_
---
bool result

")

(setf (get velocity_qp::UIResponse :md5sum-) "816b01201e029471b4dd1aa5ddfe4270")
(setf (get velocity_qp::UIResponse :datatype-) "velocity_qp/UIResponse")
(setf (get velocity_qp::UIResponse :definition-)
      "bool play_traj
bool publish_traj 
bool build_traj
bool exit_
---
bool result

")



(provide :velocity_qp/UI "816b01201e029471b4dd1aa5ddfe4270")


