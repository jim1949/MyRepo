;; Auto-generated. Do not edit!


(when (boundp 'notice::device_status)
  (if (not (find-package "NOTICE"))
    (make-package "NOTICE"))
  (shadow 'device_status (find-package "NOTICE")))
(unless (find-package "NOTICE::DEVICE_STATUS")
  (make-package "NOTICE::DEVICE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude device_status.msg.html


(defclass notice::device_status
  :super ros::object
  :slots (_speed _battery _millage _emergencyStop _charge ))

(defmethod notice::device_status
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:battery __battery) 0)
    ((:millage __millage) 0)
    ((:emergencyStop __emergencyStop) nil)
    ((:charge __charge) nil)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _battery (round __battery))
   (setq _millage (round __millage))
   (setq _emergencyStop __emergencyStop)
   (setq _charge __charge)
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:millage
   (&optional __millage)
   (if __millage (setq _millage __millage)) _millage)
  (:emergencyStop
   (&optional __emergencyStop)
   (if __emergencyStop (setq _emergencyStop __emergencyStop)) _emergencyStop)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; int8 _battery
    1
    ;; int64 _millage
    8
    ;; bool _emergencyStop
    1
    ;; bool _charge
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _battery
       (write-byte _battery s)
     ;; int64 _millage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _millage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _millage) (= (length (_millage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_millage . bv) 0) 0) s)
              (write-long (ash (elt (_millage . bv) 1) -1) s))
             ((and (class _millage) (= (length (_millage . bv)) 1)) ;; big1
              (write-long (elt (_millage . bv) 0) s)
              (write-long (if (>= _millage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _millage s)(write-long (if (>= _millage 0) 0 #xffffffff) s)))
     ;; bool _emergencyStop
       (if _emergencyStop (write-byte -1 s) (write-byte 0 s))
     ;; bool _charge
       (if _charge (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _battery
     (setq _battery (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _battery 127) (setq _battery (- _battery 256)))
   ;; int64 _millage
#+(or :alpha :irix6 :x86_64)
      (setf _millage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _millage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _emergencyStop
     (setq _emergencyStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charge
     (setq _charge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get notice::device_status :md5sum-) "1aeaee6c26e1c6beeee5f561cec487dc")
(setf (get notice::device_status :datatype-) "notice/device_status")
(setf (get notice::device_status :definition-)
      "float32 speed
int8 battery
int64 millage
bool emergencyStop
bool charge
")



(provide :notice/device_status "1aeaee6c26e1c6beeee5f561cec487dc")


