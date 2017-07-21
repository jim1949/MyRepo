; Auto-generated. Do not edit!


(cl:in-package notice-msg)


;//! \htmlinclude nav_status.msg.html

(cl:defclass <nav_status> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (noticeTypeLevel
    :reader noticeTypeLevel
    :initarg :noticeTypeLevel
    :type cl:string
    :initform "")
   (noticeType
    :reader noticeType
    :initarg :noticeType
    :type cl:string
    :initform "")
   (noticeDataFields
    :reader noticeDataFields
    :initarg :noticeDataFields
    :type cl:string
    :initform "")
   (ExpectedPosition
    :reader ExpectedPosition
    :initarg :ExpectedPosition
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (worldPosition
    :reader worldPosition
    :initarg :worldPosition
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass nav_status (<nav_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name notice-msg:<nav_status> is deprecated: use notice-msg:nav_status instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:head-val is deprecated.  Use notice-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'noticeTypeLevel-val :lambda-list '(m))
(cl:defmethod noticeTypeLevel-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:noticeTypeLevel-val is deprecated.  Use notice-msg:noticeTypeLevel instead.")
  (noticeTypeLevel m))

(cl:ensure-generic-function 'noticeType-val :lambda-list '(m))
(cl:defmethod noticeType-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:noticeType-val is deprecated.  Use notice-msg:noticeType instead.")
  (noticeType m))

(cl:ensure-generic-function 'noticeDataFields-val :lambda-list '(m))
(cl:defmethod noticeDataFields-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:noticeDataFields-val is deprecated.  Use notice-msg:noticeDataFields instead.")
  (noticeDataFields m))

(cl:ensure-generic-function 'ExpectedPosition-val :lambda-list '(m))
(cl:defmethod ExpectedPosition-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:ExpectedPosition-val is deprecated.  Use notice-msg:ExpectedPosition instead.")
  (ExpectedPosition m))

(cl:ensure-generic-function 'worldPosition-val :lambda-list '(m))
(cl:defmethod worldPosition-val ((m <nav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:worldPosition-val is deprecated.  Use notice-msg:worldPosition instead.")
  (worldPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_status>) ostream)
  "Serializes a message object of type '<nav_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'noticeTypeLevel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'noticeTypeLevel))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'noticeType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'noticeType))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'noticeDataFields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'noticeDataFields))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ExpectedPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'worldPosition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_status>) istream)
  "Deserializes a message object of type '<nav_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noticeTypeLevel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'noticeTypeLevel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noticeType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'noticeType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noticeDataFields) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'noticeDataFields) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ExpectedPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'worldPosition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_status>)))
  "Returns string type for a message object of type '<nav_status>"
  "notice/nav_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_status)))
  "Returns string type for a message object of type 'nav_status"
  "notice/nav_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_status>)))
  "Returns md5sum for a message object of type '<nav_status>"
  "13261ca54d3655f9b32e5b0b779d7089")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_status)))
  "Returns md5sum for a message object of type 'nav_status"
  "13261ca54d3655f9b32e5b0b779d7089")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_status>)))
  "Returns full string definition for message of type '<nav_status>"
  (cl:format cl:nil "Header head~%string noticeTypeLevel~%string noticeType~%string noticeDataFields~%geometry_msgs/Pose2D ExpectedPosition~%geometry_msgs/Pose worldPosition~%~%~%  ~%  ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_status)))
  "Returns full string definition for message of type 'nav_status"
  (cl:format cl:nil "Header head~%string noticeTypeLevel~%string noticeType~%string noticeDataFields~%geometry_msgs/Pose2D ExpectedPosition~%geometry_msgs/Pose worldPosition~%~%~%  ~%  ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head))
     4 (cl:length (cl:slot-value msg 'noticeTypeLevel))
     4 (cl:length (cl:slot-value msg 'noticeType))
     4 (cl:length (cl:slot-value msg 'noticeDataFields))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ExpectedPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'worldPosition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_status>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_status
    (cl:cons ':head (head msg))
    (cl:cons ':noticeTypeLevel (noticeTypeLevel msg))
    (cl:cons ':noticeType (noticeType msg))
    (cl:cons ':noticeDataFields (noticeDataFields msg))
    (cl:cons ':ExpectedPosition (ExpectedPosition msg))
    (cl:cons ':worldPosition (worldPosition msg))
))
