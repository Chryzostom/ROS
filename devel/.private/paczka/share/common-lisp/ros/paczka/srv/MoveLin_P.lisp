; Auto-generated. Do not edit!


(cl:in-package paczka-srv)


;//! \htmlinclude MoveLin_P-request.msg.html

(cl:defclass <MoveLin_P-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MoveLin_P-request (<MoveLin_P-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveLin_P-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveLin_P-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<MoveLin_P-request> is deprecated: use paczka-srv:MoveLin_P-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <MoveLin_P-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paczka-srv:q-val is deprecated.  Use paczka-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveLin_P-request>) ostream)
  "Serializes a message object of type '<MoveLin_P-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveLin_P-request>) istream)
  "Deserializes a message object of type '<MoveLin_P-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveLin_P-request>)))
  "Returns string type for a service object of type '<MoveLin_P-request>"
  "paczka/MoveLin_PRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveLin_P-request)))
  "Returns string type for a service object of type 'MoveLin_P-request"
  "paczka/MoveLin_PRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveLin_P-request>)))
  "Returns md5sum for a message object of type '<MoveLin_P-request>"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveLin_P-request)))
  "Returns md5sum for a message object of type 'MoveLin_P-request"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveLin_P-request>)))
  "Returns full string definition for message of type '<MoveLin_P-request>"
  (cl:format cl:nil "float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveLin_P-request)))
  "Returns full string definition for message of type 'MoveLin_P-request"
  (cl:format cl:nil "float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveLin_P-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveLin_P-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveLin_P-request
    (cl:cons ':q (q msg))
))
;//! \htmlinclude MoveLin_P-response.msg.html

(cl:defclass <MoveLin_P-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveLin_P-response (<MoveLin_P-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveLin_P-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveLin_P-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<MoveLin_P-response> is deprecated: use paczka-srv:MoveLin_P-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveLin_P-response>) ostream)
  "Serializes a message object of type '<MoveLin_P-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveLin_P-response>) istream)
  "Deserializes a message object of type '<MoveLin_P-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveLin_P-response>)))
  "Returns string type for a service object of type '<MoveLin_P-response>"
  "paczka/MoveLin_PResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveLin_P-response)))
  "Returns string type for a service object of type 'MoveLin_P-response"
  "paczka/MoveLin_PResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveLin_P-response>)))
  "Returns md5sum for a message object of type '<MoveLin_P-response>"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveLin_P-response)))
  "Returns md5sum for a message object of type 'MoveLin_P-response"
  "2c86974d06038f368935285057a53691")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveLin_P-response>)))
  "Returns full string definition for message of type '<MoveLin_P-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveLin_P-response)))
  "Returns full string definition for message of type 'MoveLin_P-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveLin_P-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveLin_P-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveLin_P-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveLin_P)))
  'MoveLin_P-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveLin_P)))
  'MoveLin_P-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveLin_P)))
  "Returns string type for a service object of type '<MoveLin_P>"
  "paczka/MoveLin_P")