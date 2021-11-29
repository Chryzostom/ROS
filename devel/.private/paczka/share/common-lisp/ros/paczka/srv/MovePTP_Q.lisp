; Auto-generated. Do not edit!


(cl:in-package paczka-srv)


;//! \htmlinclude MovePTP_Q-request.msg.html

(cl:defclass <MovePTP_Q-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MovePTP_Q-request (<MovePTP_Q-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePTP_Q-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePTP_Q-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<MovePTP_Q-request> is deprecated: use paczka-srv:MovePTP_Q-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <MovePTP_Q-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paczka-srv:q-val is deprecated.  Use paczka-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePTP_Q-request>) ostream)
  "Serializes a message object of type '<MovePTP_Q-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'q))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'q))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePTP_Q-request>) istream)
  "Deserializes a message object of type '<MovePTP_Q-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'q) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'q)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePTP_Q-request>)))
  "Returns string type for a service object of type '<MovePTP_Q-request>"
  "paczka/MovePTP_QRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePTP_Q-request)))
  "Returns string type for a service object of type 'MovePTP_Q-request"
  "paczka/MovePTP_QRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePTP_Q-request>)))
  "Returns md5sum for a message object of type '<MovePTP_Q-request>"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePTP_Q-request)))
  "Returns md5sum for a message object of type 'MovePTP_Q-request"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePTP_Q-request>)))
  "Returns full string definition for message of type '<MovePTP_Q-request>"
  (cl:format cl:nil "float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePTP_Q-request)))
  "Returns full string definition for message of type 'MovePTP_Q-request"
  (cl:format cl:nil "float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePTP_Q-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePTP_Q-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePTP_Q-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude MovePTP_Q-response.msg.html

(cl:defclass <MovePTP_Q-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MovePTP_Q-response (<MovePTP_Q-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePTP_Q-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePTP_Q-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<MovePTP_Q-response> is deprecated: use paczka-srv:MovePTP_Q-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePTP_Q-response>) ostream)
  "Serializes a message object of type '<MovePTP_Q-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePTP_Q-response>) istream)
  "Deserializes a message object of type '<MovePTP_Q-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePTP_Q-response>)))
  "Returns string type for a service object of type '<MovePTP_Q-response>"
  "paczka/MovePTP_QResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePTP_Q-response)))
  "Returns string type for a service object of type 'MovePTP_Q-response"
  "paczka/MovePTP_QResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePTP_Q-response>)))
  "Returns md5sum for a message object of type '<MovePTP_Q-response>"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePTP_Q-response)))
  "Returns md5sum for a message object of type 'MovePTP_Q-response"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePTP_Q-response>)))
  "Returns full string definition for message of type '<MovePTP_Q-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePTP_Q-response)))
  "Returns full string definition for message of type 'MovePTP_Q-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePTP_Q-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePTP_Q-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePTP_Q-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MovePTP_Q)))
  'MovePTP_Q-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MovePTP_Q)))
  'MovePTP_Q-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePTP_Q)))
  "Returns string type for a service object of type '<MovePTP_Q>"
  "paczka/MovePTP_Q")