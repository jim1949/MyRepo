
(cl:in-package :asdf)

(defsystem "notice-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "system_health_status" :depends-on ("_package_system_health_status"))
    (:file "_package_system_health_status" :depends-on ("_package"))
    (:file "device_status" :depends-on ("_package_device_status"))
    (:file "_package_device_status" :depends-on ("_package"))
    (:file "nav_status" :depends-on ("_package_nav_status"))
    (:file "_package_nav_status" :depends-on ("_package"))
  ))