;; Auto-generated. Do not edit!


(when (boundp 'notice::system_health_status)
  (if (not (find-package "NOTICE"))
    (make-package "NOTICE"))
  (shadow 'system_health_status (find-package "NOTICE")))
(unless (find-package "NOTICE::SYSTEM_HEALTH_STATUS")
  (make-package "NOTICE::SYSTEM_HEALTH_STATUS"))

(in-package "ROS")
;;//! \htmlinclude system_health_status.msg.html


(defclass notice::system_health_status
  :super ros::object
  :slots (_laserConnection _SonarConnection _MCUConnection ))

(defmethod notice::system_health_status
  (:init
   (&key
    ((:laserConnection __laserConnection) nil)
    ((:SonarConnection __SonarConnection) (make-array 8 :initial-element 0 :element-type :integer))
    ((:MCUConnection __MCUConnection) nil)
    )
   (send-super :init)
   (setq _laserConnection __laserConnection)
   (setq _SonarConnection __SonarConnection)
   (setq _MCUConnection __MCUConnection)
   self)
  (:laserConnection
   (&optional __laserConnection)
   (if __laserConnection (setq _laserConnection __laserConnection)) _laserConnection)
  (:SonarConnection
   (&optional __SonarConnection)
   (if __SonarConnection (setq _SonarConnection __SonarConnection)) _SonarConnection)
  (:MCUConnection
   (&optional __MCUConnection)
   (if __MCUConnection (setq _MCUConnection __MCUConnection)) _MCUConnection)
  (:serialization-length
   ()
   (+
    ;; bool _laserConnection
    1
    ;; int16[8] _SonarConnection
    (* 2    8)
    ;; bool _MCUConnection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _laserConnection
       (if _laserConnection (write-byte -1 s) (write-byte 0 s))
     ;; int16[8] _SonarConnection
     (dotimes (i 8)
       (write-word (elt _SonarConnection i) s)
       )
     ;; bool _MCUConnection
       (if _MCUConnection (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _laserConnection
     (setq _laserConnection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16[8] _SonarConnection
   (dotimes (i (length _SonarConnection))
     (setf (elt _SonarConnection i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; bool _MCUConnection
     (setq _MCUConnection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get notice::system_health_status :md5sum-) "597f5922ff244034653f9d597018a242")
(setf (get notice::system_health_status :datatype-) "notice/system_health_status")
(setf (get notice::system_health_status :definition-)
      "bool laserConnection
int16[8] SonarConnection
bool MCUConnection
")



(provide :notice/system_health_status "597f5922ff244034653f9d597018a242")


