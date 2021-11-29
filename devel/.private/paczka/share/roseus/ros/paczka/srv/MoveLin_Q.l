;; Auto-generated. Do not edit!


(when (boundp 'paczka::MoveLin_Q)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'MoveLin_Q (find-package "PACZKA")))
(unless (find-package "PACZKA::MOVELIN_Q")
  (make-package "PACZKA::MOVELIN_Q"))
(unless (find-package "PACZKA::MOVELIN_QREQUEST")
  (make-package "PACZKA::MOVELIN_QREQUEST"))
(unless (find-package "PACZKA::MOVELIN_QRESPONSE")
  (make-package "PACZKA::MOVELIN_QRESPONSE"))

(in-package "ROS")





(defclass paczka::MoveLin_QRequest
  :super ros::object
  :slots (_q ))

(defmethod paczka::MoveLin_QRequest
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

(defclass paczka::MoveLin_QResponse
  :super ros::object
  :slots ())

(defmethod paczka::MoveLin_QResponse
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

(defclass paczka::MoveLin_Q
  :super ros::object
  :slots ())

(setf (get paczka::MoveLin_Q :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_Q :datatype-) "paczka/MoveLin_Q")
(setf (get paczka::MoveLin_Q :request) paczka::MoveLin_QRequest)
(setf (get paczka::MoveLin_Q :response) paczka::MoveLin_QResponse)

(defmethod paczka::MoveLin_QRequest
  (:response () (instance paczka::MoveLin_QResponse :init)))

(setf (get paczka::MoveLin_QRequest :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_QRequest :datatype-) "paczka/MoveLin_QRequest")
(setf (get paczka::MoveLin_QRequest :definition-)
      "float32[] q
---
")

(setf (get paczka::MoveLin_QResponse :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_QResponse :datatype-) "paczka/MoveLin_QResponse")
(setf (get paczka::MoveLin_QResponse :definition-)
      "float32[] q
---
")



(provide :paczka/MoveLin_Q "2c86974d06038f368935285057a53691")


