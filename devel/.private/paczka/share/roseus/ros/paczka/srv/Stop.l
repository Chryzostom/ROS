;; Auto-generated. Do not edit!


(when (boundp 'paczka::Stop)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'Stop (find-package "PACZKA")))
(unless (find-package "PACZKA::STOP")
  (make-package "PACZKA::STOP"))
(unless (find-package "PACZKA::STOPREQUEST")
  (make-package "PACZKA::STOPREQUEST"))
(unless (find-package "PACZKA::STOPRESPONSE")
  (make-package "PACZKA::STOPRESPONSE"))

(in-package "ROS")





(defclass paczka::StopRequest
  :super ros::object
  :slots (_a ))

(defmethod paczka::StopRequest
  (:init
   (&key
    ((:a __a) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass paczka::StopResponse
  :super ros::object
  :slots ())

(defmethod paczka::StopResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass paczka::Stop
  :super ros::object
  :slots ())

(setf (get paczka::Stop :md5sum-) "3a9a8ccf1ae2be3477477819c0d93b4e")
(setf (get paczka::Stop :datatype-) "paczka/Stop")
(setf (get paczka::Stop :request) paczka::StopRequest)
(setf (get paczka::Stop :response) paczka::StopResponse)

(defmethod paczka::StopRequest
  (:response () (instance paczka::StopResponse :init)))

(setf (get paczka::StopRequest :md5sum-) "3a9a8ccf1ae2be3477477819c0d93b4e")
(setf (get paczka::StopRequest :datatype-) "paczka/StopRequest")
(setf (get paczka::StopRequest :definition-)
      "float32 a
---
")

(setf (get paczka::StopResponse :md5sum-) "3a9a8ccf1ae2be3477477819c0d93b4e")
(setf (get paczka::StopResponse :datatype-) "paczka/StopResponse")
(setf (get paczka::StopResponse :definition-)
      "float32 a
---
")



(provide :paczka/Stop "3a9a8ccf1ae2be3477477819c0d93b4e")


