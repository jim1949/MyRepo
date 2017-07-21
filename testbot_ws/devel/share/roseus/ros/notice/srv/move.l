;; Auto-generated. Do not edit!


(when (boundp 'notice::move)
  (if (not (find-package "NOTICE"))
    (make-package "NOTICE"))
  (shadow 'move (find-package "NOTICE")))
(unless (find-package "NOTICE::MOVE")
  (make-package "NOTICE::MOVE"))
(unless (find-package "NOTICE::MOVEREQUEST")
  (make-package "NOTICE::MOVEREQUEST"))
(unless (find-package "NOTICE::MOVERESPONSE")
  (make-package "NOTICE::MOVERESPONSE"))

(in-package "ROS")





(defclass notice::moveRequest
  :super ros::object
  :slots (_words ))

(defmethod notice::moveRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass notice::moveResponse
  :super ros::object
  :slots (_count ))

(defmethod notice::moveResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass notice::move
  :super ros::object
  :slots ())

(setf (get notice::move :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get notice::move :datatype-) "notice/move")
(setf (get notice::move :request) notice::moveRequest)
(setf (get notice::move :response) notice::moveResponse)

(defmethod notice::moveRequest
  (:response () (instance notice::moveResponse :init)))

(setf (get notice::moveRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get notice::moveRequest :datatype-) "notice/moveRequest")
(setf (get notice::moveRequest :definition-)
      "








string words

---

uint32 count
")

(setf (get notice::moveResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get notice::moveResponse :datatype-) "notice/moveResponse")
(setf (get notice::moveResponse :definition-)
      "








string words

---

uint32 count
")



(provide :notice/move "58903d21a3264f3408d79ba79e9f7c7e")


