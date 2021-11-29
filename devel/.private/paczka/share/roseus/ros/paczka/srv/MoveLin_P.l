;; Auto-generated. Do not edit!


(when (boundp 'paczka::MoveLin_P)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'MoveLin_P (find-package "PACZKA")))
(unless (find-package "PACZKA::MOVELIN_P")
  (make-package "PACZKA::MOVELIN_P"))
(unless (find-package "PACZKA::MOVELIN_PREQUEST")
  (make-package "PACZKA::MOVELIN_PREQUEST"))
(unless (find-package "PACZKA::MOVELIN_PRESPONSE")
  (make-package "PACZKA::MOVELIN_PRESPONSE"))

(in-package "ROS")





(defclass paczka::MoveLin_PRequest
  :super ros::object
  :slots (_q ))

(defmethod paczka::MoveLin_PRequest
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

(defclass paczka::MoveLin_PResponse
  :super ros::object
  :slots ())

(defmethod paczka::MoveLin_PResponse
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

(defclass paczka::MoveLin_P
  :super ros::object
  :slots ())

(setf (get paczka::MoveLin_P :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_P :datatype-) "paczka/MoveLin_P")
(setf (get paczka::MoveLin_P :request) paczka::MoveLin_PRequest)
(setf (get paczka::MoveLin_P :response) paczka::MoveLin_PResponse)

(defmethod paczka::MoveLin_PRequest
  (:response () (instance paczka::MoveLin_PResponse :init)))

(setf (get paczka::MoveLin_PRequest :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_PRequest :datatype-) "paczka/MoveLin_PRequest")
(setf (get paczka::MoveLin_PRequest :definition-)
      "float32[] q
---
")

(setf (get paczka::MoveLin_PResponse :md5sum-) "2c86974d06038f368935285057a53691")
(setf (get paczka::MoveLin_PResponse :datatype-) "paczka/MoveLin_PResponse")
(setf (get paczka::MoveLin_PResponse :definition-)
      "float32[] q
---
")



(provide :paczka/MoveLin_P "2c86974d06038f368935285057a53691")


