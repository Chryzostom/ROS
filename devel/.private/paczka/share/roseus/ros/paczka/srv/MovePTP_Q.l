;; Auto-generated. Do not edit!


(when (boundp 'paczka::MovePTP_Q)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'MovePTP_Q (find-package "PACZKA")))
(unless (find-package "PACZKA::MOVEPTP_Q")
  (make-package "PACZKA::MOVEPTP_Q"))
(unless (find-package "PACZKA::MOVEPTP_QREQUEST")
  (make-package "PACZKA::MOVEPTP_QREQUEST"))
(unless (find-package "PACZKA::MOVEPTP_QRESPONSE")
  (make-package "PACZKA::MOVEPTP_QRESPONSE"))

(in-package "ROS")





(defclass paczka::MovePTP_QRequest
  :super ros::object
  :slots (_q ))

(defmethod paczka::MovePTP_QRequest
  (:init
   (&key
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _q __q)
   self)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:serialization-length
   ()
   (+
    ;; float32[] _q
    (* 4    (length _q)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _q
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass paczka::MovePTP_QResponse
  :super ros::object
  :slots ())

(defmethod paczka::MovePTP_QResponse
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

(defclass paczka::MovePTP_Q
  :super ros::object
  :slots ())

(setf (get paczka::MovePTP_Q :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_Q :datatype-) "paczka/MovePTP_Q")
(setf (get paczka::MovePTP_Q :request) paczka::MovePTP_QRequest)
(setf (get paczka::MovePTP_Q :response) paczka::MovePTP_QResponse)

(defmethod paczka::MovePTP_QRequest
  (:response () (instance paczka::MovePTP_QResponse :init)))

(setf (get paczka::MovePTP_QRequest :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_QRequest :datatype-) "paczka/MovePTP_QRequest")
(setf (get paczka::MovePTP_QRequest :definition-)
      "float32[] q
---
")

(setf (get paczka::MovePTP_QResponse :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_QResponse :datatype-) "paczka/MovePTP_QResponse")
(setf (get paczka::MovePTP_QResponse :definition-)
      "float32[] q
---
")



(provide :paczka/MovePTP_Q "2c86974d06038f368935285057a53691")


