; Auto-generated. Do not edit!


(cl:in-package velocity_qp-srv)


;//! \htmlinclude UI-request.msg.html

(cl:defclass <UI-request> (roslisp-msg-protocol:ros-message)
  ((play_traj
    :reader play_traj
    :initarg :play_traj
    :type cl:boolean
    :initform cl:nil)
   (publish_traj
    :reader publish_traj
    :initarg :publish_traj
    :type cl:boolean
    :initform cl:nil)
   (build_traj
    :reader build_traj
    :initarg :build_traj
    :type cl:boolean
    :initform cl:nil)
   (exit_
    :reader exit_
    :initarg :exit_
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UI-request (<UI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name velocity_qp-srv:<UI-request> is deprecated: use velocity_qp-srv:UI-request instead.")))

(cl:ensure-generic-function 'play_traj-val :lambda-list '(m))
(cl:defmethod play_traj-val ((m <UI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_qp-srv:play_traj-val is deprecated.  Use velocity_qp-srv:play_traj instead.")
  (play_traj m))

(cl:ensure-generic-function 'publish_traj-val :lambda-list '(m))
(cl:defmethod publish_traj-val ((m <UI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_qp-srv:publish_traj-val is deprecated.  Use velocity_qp-srv:publish_traj instead.")
  (publish_traj m))

(cl:ensure-generic-function 'build_traj-val :lambda-list '(m))
(cl:defmethod build_traj-val ((m <UI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_qp-srv:build_traj-val is deprecated.  Use velocity_qp-srv:build_traj instead.")
  (build_traj m))

(cl:ensure-generic-function 'exit_-val :lambda-list '(m))
(cl:defmethod exit_-val ((m <UI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_qp-srv:exit_-val is deprecated.  Use velocity_qp-srv:exit_ instead.")
  (exit_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UI-request>) ostream)
  "Serializes a message object of type '<UI-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'play_traj) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_traj) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'build_traj) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exit_) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UI-request>) istream)
  "Deserializes a message object of type '<UI-request>"
    (cl:setf (cl:slot-value msg 'play_traj) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'publish_traj) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'build_traj) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'exit_) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UI-request>)))
  "Returns string type for a service object of type '<UI-request>"
  "velocity_qp/UIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UI-request)))
  "Returns string type for a service object of type 'UI-request"
  "velocity_qp/UIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UI-request>)))
  "Returns md5sum for a message object of type '<UI-request>"
  "816b01201e029471b4dd1aa5ddfe4270")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UI-request)))
  "Returns md5sum for a message object of type 'UI-request"
  "816b01201e029471b4dd1aa5ddfe4270")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UI-request>)))
  "Returns full string definition for message of type '<UI-request>"
  (cl:format cl:nil "bool play_traj~%bool publish_traj ~%bool build_traj~%bool exit_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UI-request)))
  "Returns full string definition for message of type 'UI-request"
  (cl:format cl:nil "bool play_traj~%bool publish_traj ~%bool build_traj~%bool exit_~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UI-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UI-request
    (cl:cons ':play_traj (play_traj msg))
    (cl:cons ':publish_traj (publish_traj msg))
    (cl:cons ':build_traj (build_traj msg))
    (cl:cons ':exit_ (exit_ msg))
))
;//! \htmlinclude UI-response.msg.html

(cl:defclass <UI-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UI-response (<UI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name velocity_qp-srv:<UI-response> is deprecated: use velocity_qp-srv:UI-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader velocity_qp-srv:result-val is deprecated.  Use velocity_qp-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UI-response>) ostream)
  "Serializes a message object of type '<UI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UI-response>) istream)
  "Deserializes a message object of type '<UI-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UI-response>)))
  "Returns string type for a service object of type '<UI-response>"
  "velocity_qp/UIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UI-response)))
  "Returns string type for a service object of type 'UI-response"
  "velocity_qp/UIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UI-response>)))
  "Returns md5sum for a message object of type '<UI-response>"
  "816b01201e029471b4dd1aa5ddfe4270")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UI-response)))
  "Returns md5sum for a message object of type 'UI-response"
  "816b01201e029471b4dd1aa5ddfe4270")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UI-response>)))
  "Returns full string definition for message of type '<UI-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UI-response)))
  "Returns full string definition for message of type 'UI-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UI-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UI-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UI)))
  'UI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UI)))
  'UI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UI)))
  "Returns string type for a service object of type '<UI>"
  "velocity_qp/UI")