;; Auto-generated. Do not edit!


(when (boundp 'paczka::MovePTP_P)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'MovePTP_P (find-package "PACZKA")))
(unless (find-package "PACZKA::MOVEPTP_P")
  (make-package "PACZKA::MOVEPTP_P"))
(unless (find-package "PACZKA::MOVEPTP_PREQUEST")
  (make-package "PACZKA::MOVEPTP_PREQUEST"))
(unless (find-package "PACZKA::MOVEPTP_PRESPONSE")
  (make-package "PACZKA::MOVEPTP_PRESPONSE"))

(in-package "ROS")





(defclass paczka::MovePTP_PRequest
  :super ros::object
  :slots (_q ))

(defmethod paczka::MovePTP_PRequest
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

(defclass paczka::MovePTP_PResponse
  :super ros::object
  :slots ())

(defmethod paczka::MovePTP_PResponse
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

(defclass paczka::MovePTP_P
  :super ros::object
  :slots ())

(setf (get paczka::MovePTP_P :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_P :datatype-) "paczka/MovePTP_P")
(setf (get paczka::MovePTP_P :request) paczka::MovePTP_PRequest)
(setf (get paczka::MovePTP_P :response) paczka::MovePTP_PResponse)

(defmethod paczka::MovePTP_PRequest
  (:response () (instance paczka::MovePTP_PResponse :init)))

(setf (get paczka::MovePTP_PRequest :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_PRequest :datatype-) "paczka/MovePTP_PRequest")
(setf (get paczka::MovePTP_PRequest :definition-)
      "float32[] q
---
")

(setf (get paczka::MovePTP_PResponse :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MovePTP_PResponse :datatype-) "paczka/MovePTP_PResponse")
(setf (get paczka::MovePTP_PResponse :definition-)
      "float32[] q
---
")



(provide :paczka/MovePTP_P "2c86974d06038f368935285057a53691")


