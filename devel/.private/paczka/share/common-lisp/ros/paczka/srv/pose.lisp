; Auto-generated. Do not edit!


(cl:in-package paczka-srv)


;//! \htmlinclude pose-request.msg.html

(cl:defclass <pose-request> (roslisp-msg-protocol:ros-message)
  ((tryb
    :reader tryb
    :initarg :tryb
    :type cl:string
    :initform "")
   (q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass pose-request (<pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<pose-request> is deprecated: use paczka-srv:pose-request instead.")))

(cl:ensure-generic-function 'tryb-val :lambda-list '(m))
(cl:defmethod tryb-val ((m <pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paczka-srv:tryb-val is deprecated.  Use paczka-srv:tryb instead.")
  (tryb m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader paczka-srv:q-val is deprecated.  Use paczka-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose-request>) ostream)
  "Serializes a message object of type '<pose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tryb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tryb))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose-request>) istream)
  "Deserializes a message object of type '<pose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tryb) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tryb) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose-request>)))
  "Returns string type for a service object of type '<pose-request>"
  "paczka/poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose-request)))
  "Returns string type for a service object of type 'pose-request"
  "paczka/poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose-request>)))
  "Returns md5sum for a message object of type '<pose-request>"
  "df30f7cddaf0839095c2022c165dd409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose-request)))
  "Returns md5sum for a message object of type 'pose-request"
  "df30f7cddaf0839095c2022c165dd409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose-request>)))
  "Returns full string definition for message of type '<pose-request>"
  (cl:format cl:nil "string tryb~%float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose-request)))
  "Returns full string definition for message of type 'pose-request"
  (cl:format cl:nil "string tryb~%float32[] q~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tryb))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose-request
    (cl:cons ':tryb (tryb msg))
    (cl:cons ':q (q msg))
))
;//! \htmlinclude pose-response.msg.html

(cl:defclass <pose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pose-response (<pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name paczka-srv:<pose-response> is deprecated: use paczka-srv:pose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose-response>) ostream)
  "Serializes a message object of type '<pose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose-response>) istream)
  "Deserializes a message object of type '<pose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose-response>)))
  "Returns string type for a service object of type '<pose-response>"
  "paczka/poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose-response)))
  "Returns string type for a service object of type 'pose-response"
  "paczka/poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose-response>)))
  "Returns md5sum for a message object of type '<pose-response>"
  "df30f7cddaf0839095c2022c165dd409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose-response)))
  "Returns md5sum for a message object of type 'pose-response"
  "df30f7cddaf0839095c2022c165dd409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose-response>)))
  "Returns full string definition for message of type '<pose-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose-response)))
  "Returns full string definition for message of type 'pose-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose)))
  'pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose)))
  'pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose)))
  "Returns string type for a service object of type '<pose>"
  "paczka/pose")