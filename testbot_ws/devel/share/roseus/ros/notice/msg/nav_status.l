;; Auto-generated. Do not edit!


(when (boundp 'notice::nav_status)
  (if (not (find-package "NOTICE"))
    (make-package "NOTICE"))
  (shadow 'nav_status (find-package "NOTICE")))
(unless (find-package "NOTICE::NAV_STATUS")
  (make-package "NOTICE::NAV_STATUS"))

(in-package "ROS")
;;//! \htmlinclude nav_status.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass notice::nav_status
  :super ros::object
  :slots (_head _noticeTypeLevel _noticeType _noticeDataFields _ExpectedPosition _worldPosition ))

(defmethod notice::nav_status
  (:init
   (&key
    ((:head __head) (instance std_msgs::Header :init))
    ((:noticeTypeLevel __noticeTypeLevel) "")
    ((:noticeType __noticeType) "")
    ((:noticeDataFields __noticeDataFields) "")
    ((:ExpectedPosition __ExpectedPosition) (instance geometry_msgs::Pose2D :init))
    ((:worldPosition __worldPosition) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _head __head)
   (setq _noticeTypeLevel (string __noticeTypeLevel))
   (setq _noticeType (string __noticeType))
   (setq _noticeDataFields (string __noticeDataFields))
   (setq _ExpectedPosition __ExpectedPosition)
   (setq _worldPosition __worldPosition)
   self)
  (:head
   (&rest __head)
   (if (keywordp (car __head))
       (send* _head __head)
     (progn
       (if __head (setq _head (car __head)))
       _head)))
  (:noticeTypeLevel
   (&optional __noticeTypeLevel)
   (if __noticeTypeLevel (setq _noticeTypeLevel __noticeTypeLevel)) _noticeTypeLevel)
  (:noticeType
   (&optional __noticeType)
   (if __noticeType (setq _noticeType __noticeType)) _noticeType)
  (:noticeDataFields
   (&optional __noticeDataFields)
   (if __noticeDataFields (setq _noticeDataFields __noticeDataFields)) _noticeDataFields)
  (:ExpectedPosition
   (&rest __ExpectedPosition)
   (if (keywordp (car __ExpectedPosition))
       (send* _ExpectedPosition __ExpectedPosition)
     (progn
       (if __ExpectedPosition (setq _ExpectedPosition (car __ExpectedPosition)))
       _ExpectedPosition)))
  (:worldPosition
   (&rest __worldPosition)
   (if (keywordp (car __worldPosition))
       (send* _worldPosition __worldPosition)
     (progn
       (if __worldPosition (setq _worldPosition (car __worldPosition)))
       _worldPosition)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _head
    (send _head :serialization-length)
    ;; string _noticeTypeLevel
    4 (length _noticeTypeLevel)
    ;; string _noticeType
    4 (length _noticeType)
    ;; string _noticeDataFields
    4 (length _noticeDataFields)
    ;; geometry_msgs/Pose2D _ExpectedPosition
    (send _ExpectedPosition :serialization-length)
    ;; geometry_msgs/Pose _worldPosition
    (send _worldPosition :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _head
       (send _head :serialize s)
     ;; string _noticeTypeLevel
       (write-long (length _noticeTypeLevel) s) (princ _noticeTypeLevel s)
     ;; string _noticeType
       (write-long (length _noticeType) s) (princ _noticeType s)
     ;; string _noticeDataFields
       (write-long (length _noticeDataFields) s) (princ _noticeDataFields s)
     ;; geometry_msgs/Pose2D _ExpectedPosition
       (send _ExpectedPosition :serialize s)
     ;; geometry_msgs/Pose _worldPosition
       (send _worldPosition :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _head
     (send _head :deserialize buf ptr-) (incf ptr- (send _head :serialization-length))
   ;; string _noticeTypeLevel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _noticeTypeLevel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _noticeType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _noticeType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _noticeDataFields
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _noticeDataFields (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _ExpectedPosition
     (send _ExpectedPosition :deserialize buf ptr-) (incf ptr- (send _ExpectedPosition :serialization-length))
   ;; geometry_msgs/Pose _worldPosition
     (send _worldPosition :deserialize buf ptr-) (incf ptr- (send _worldPosition :serialization-length))
   ;;
   self)
  )

(setf (get notice::nav_status :md5sum-) "13261ca54d3655f9b32e5b0b779d7089")
(setf (get notice::nav_status :datatype-) "notice/nav_status")
(setf (get notice::nav_status :definition-)
      "Header head
string noticeTypeLevel
string noticeType
string noticeDataFields
geometry_msgs/Pose2D ExpectedPosition
geometry_msgs/Pose worldPosition


  
  



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :notice/nav_status "13261ca54d3655f9b32e5b0b779d7089")


