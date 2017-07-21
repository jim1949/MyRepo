; Auto-generated. Do not edit!


(cl:in-package notice-msg)


;//! \htmlinclude device_status.msg.html

(cl:defclass <device_status> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (battery
    :reader battery
    :initarg :battery
    :type cl:fixnum
    :initform 0)
   (millage
    :reader millage
    :initarg :millage
    :type cl:integer
    :initform 0)
   (emergencyStop
    :reader emergencyStop
    :initarg :emergencyStop
    :type cl:boolean
    :initform cl:nil)
   (charge
    :reader charge
    :initarg :charge
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass device_status (<device_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <device_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'device_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name notice-msg:<device_status> is deprecated: use notice-msg:device_status instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <device_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:speed-val is deprecated.  Use notice-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <device_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:battery-val is deprecated.  Use notice-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'millage-val :lambda-list '(m))
(cl:defmethod millage-val ((m <device_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:millage-val is deprecated.  Use notice-msg:millage instead.")
  (millage m))

(cl:ensure-generic-function 'emergencyStop-val :lambda-list '(m))
(cl:defmethod emergencyStop-val ((m <device_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:emergencyStop-val is deprecated.  Use notice-msg:emergencyStop instead.")
  (emergencyStop m))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <device_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:charge-val is deprecated.  Use notice-msg:charge instead.")
  (charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <device_status>) ostream)
  "Serializes a message object of type '<device_status>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'battery)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'millage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergencyStop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charge) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <device_status>) istream)
  "Deserializes a message object of type '<device_status>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'millage) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'emergencyStop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charge) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<device_status>)))
  "Returns string type for a message object of type '<device_status>"
  "notice/device_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'device_status)))
  "Returns string type for a message object of type 'device_status"
  "notice/device_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<device_status>)))
  "Returns md5sum for a message object of type '<device_status>"
  "1aeaee6c26e1c6beeee5f561cec487dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'device_status)))
  "Returns md5sum for a message object of type 'device_status"
  "1aeaee6c26e1c6beeee5f561cec487dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<device_status>)))
  "Returns full string definition for message of type '<device_status>"
  (cl:format cl:nil "float32 speed~%int8 battery~%int64 millage~%bool emergencyStop~%bool charge~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'device_status)))
  "Returns full string definition for message of type 'device_status"
  (cl:format cl:nil "float32 speed~%int8 battery~%int64 millage~%bool emergencyStop~%bool charge~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <device_status>))
  (cl:+ 0
     4
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <device_status>))
  "Converts a ROS message object to a list"
  (cl:list 'device_status
    (cl:cons ':speed (speed msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':millage (millage msg))
    (cl:cons ':emergencyStop (emergencyStop msg))
    (cl:cons ':charge (charge msg))
))
