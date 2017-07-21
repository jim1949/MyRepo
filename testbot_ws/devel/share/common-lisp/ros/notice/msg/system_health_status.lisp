; Auto-generated. Do not edit!


(cl:in-package notice-msg)


;//! \htmlinclude system_health_status.msg.html

(cl:defclass <system_health_status> (roslisp-msg-protocol:ros-message)
  ((laserConnection
    :reader laserConnection
    :initarg :laserConnection
    :type cl:boolean
    :initform cl:nil)
   (SonarConnection
    :reader SonarConnection
    :initarg :SonarConnection
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (MCUConnection
    :reader MCUConnection
    :initarg :MCUConnection
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass system_health_status (<system_health_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <system_health_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'system_health_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name notice-msg:<system_health_status> is deprecated: use notice-msg:system_health_status instead.")))

(cl:ensure-generic-function 'laserConnection-val :lambda-list '(m))
(cl:defmethod laserConnection-val ((m <system_health_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:laserConnection-val is deprecated.  Use notice-msg:laserConnection instead.")
  (laserConnection m))

(cl:ensure-generic-function 'SonarConnection-val :lambda-list '(m))
(cl:defmethod SonarConnection-val ((m <system_health_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:SonarConnection-val is deprecated.  Use notice-msg:SonarConnection instead.")
  (SonarConnection m))

(cl:ensure-generic-function 'MCUConnection-val :lambda-list '(m))
(cl:defmethod MCUConnection-val ((m <system_health_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader notice-msg:MCUConnection-val is deprecated.  Use notice-msg:MCUConnection instead.")
  (MCUConnection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <system_health_status>) ostream)
  "Serializes a message object of type '<system_health_status>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'laserConnection) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'SonarConnection))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'MCUConnection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <system_health_status>) istream)
  "Deserializes a message object of type '<system_health_status>"
    (cl:setf (cl:slot-value msg 'laserConnection) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'SonarConnection) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'SonarConnection)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
    (cl:setf (cl:slot-value msg 'MCUConnection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<system_health_status>)))
  "Returns string type for a message object of type '<system_health_status>"
  "notice/system_health_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'system_health_status)))
  "Returns string type for a message object of type 'system_health_status"
  "notice/system_health_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<system_health_status>)))
  "Returns md5sum for a message object of type '<system_health_status>"
  "597f5922ff244034653f9d597018a242")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'system_health_status)))
  "Returns md5sum for a message object of type 'system_health_status"
  "597f5922ff244034653f9d597018a242")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<system_health_status>)))
  "Returns full string definition for message of type '<system_health_status>"
  (cl:format cl:nil "bool laserConnection~%int16[8] SonarConnection~%bool MCUConnection~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'system_health_status)))
  "Returns full string definition for message of type 'system_health_status"
  (cl:format cl:nil "bool laserConnection~%int16[8] SonarConnection~%bool MCUConnection~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <system_health_status>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'SonarConnection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <system_health_status>))
  "Converts a ROS message object to a list"
  (cl:list 'system_health_status
    (cl:cons ':laserConnection (laserConnection msg))
    (cl:cons ':SonarConnection (SonarConnection msg))
    (cl:cons ':MCUConnection (MCUConnection msg))
))
