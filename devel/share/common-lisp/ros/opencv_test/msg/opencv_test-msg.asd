
(cl:in-package :asdf)

(defsystem "opencv_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
  ))