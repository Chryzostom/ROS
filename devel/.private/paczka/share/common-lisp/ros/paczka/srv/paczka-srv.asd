
(cl:in-package :asdf)

(defsystem "paczka-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveLin_P" :depends-on ("_package_MoveLin_P"))
    (:file "_package_MoveLin_P" :depends-on ("_package"))
    (:file "MoveLin_Q" :depends-on ("_package_MoveLin_Q"))
    (:file "_package_MoveLin_Q" :depends-on ("_package"))
    (:file "MovePTP_P" :depends-on ("_package_MovePTP_P"))
    (:file "_package_MovePTP_P" :depends-on ("_package"))
    (:file "MovePTP_Q" :depends-on ("_package_MovePTP_Q"))
    (:file "_package_MovePTP_Q" :depends-on ("_package"))
    (:file "Stop" :depends-on ("_package_Stop"))
    (:file "_package_Stop" :depends-on ("_package"))
  ))