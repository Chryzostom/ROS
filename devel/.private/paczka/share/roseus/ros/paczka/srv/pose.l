;; Auto-generated. Do not edit!


(when (boundp 'paczka::pose)
  (if (not (find-package "PACZKA"))
    (make-package "PACZKA"))
  (shadow 'pose (find-package "PACZKA")))
(unless (find-package "PACZKA::POSE")
  (make-package "PACZKA::POSE"))
(unless (find-package "PACZKA::POSEREQUEST")
  (make-package "PACZKA::POSEREQUEST"))
(unless (find-package "PACZKA::POSERESPONSE")
  (make-package "PACZKA::POSERESPONSE"))

(in-package "ROS")





(defclass paczka::poseRequest
  :super ros::object
  :slots (_tryb _q ))

(defmethod paczka::poseRequest
  (:init
   (&key
    ((:tryb __tryb) "")
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tryb (string __tryb))
   (setq _q __q)
   self)
  (:tryb
   (&optional __tryb)
   (if __tryb (setq _tryb __tryb)) _tryb)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:serialization-length
   ()
   (+
    ;; string _tryb
    4 (length _tryb)
    ;; float32[] _q
    (* 4    (length _q)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tryb
       (write-long (length _tryb) s) (princ _tryb s)
     ;; float32[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tryb
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tryb (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass paczka::poseResponse
  :super ros::object
  :slots ())

(defmethod paczka::poseResponse
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

(defclass paczka::pose
  :super ros::object
  :slots ())

(setf (get paczka::pose :md5sum-) "df30f7cddaf0839095c2022c165dd409")
(setf (get paczka::pose :datatype-) "paczka/pose")
(setf (get paczka::pose :request) paczka::poseRequest)
(setf (get paczka::pose :response) paczka::poseResponse)

(defmethod paczka::poseRequest
  (:response () (instance paczka::poseResponse :init)))

(setf (get paczka::poseRequest :md5sum-) "df30f7cddaf0839095c2022c165dd409")
(setf (get paczka::poseRequest :datatype-) "paczka/poseRequest")
(setf (get paczka::poseRequest :definition-)
      "string tryb
float32[] q
---
")

(setf (get paczka::poseResponse :md5sum-) "df30f7cddaf0839095c2022c165dd409")
(setf (get paczka::poseResponse :datatype-) "paczka/poseResponse")
(setf (get paczka::poseResponse :definition-)
      "string tryb
float32[] q
---
")



(provide :paczka/pose "df30f7cddaf0839095c2022c165dd409")


