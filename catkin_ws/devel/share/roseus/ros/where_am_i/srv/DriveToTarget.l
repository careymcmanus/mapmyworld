;; Auto-generated. Do not edit!


(when (boundp 'where_am_i::DriveToTarget)
  (if (not (find-package "WHERE_AM_I"))
    (make-package "WHERE_AM_I"))
  (shadow 'DriveToTarget (find-package "WHERE_AM_I")))
(unless (find-package "WHERE_AM_I::DRIVETOTARGET")
  (make-package "WHERE_AM_I::DRIVETOTARGET"))
(unless (find-package "WHERE_AM_I::DRIVETOTARGETREQUEST")
  (make-package "WHERE_AM_I::DRIVETOTARGETREQUEST"))
(unless (find-package "WHERE_AM_I::DRIVETOTARGETRESPONSE")
  (make-package "WHERE_AM_I::DRIVETOTARGETRESPONSE"))

(in-package "ROS")





(defclass where_am_i::DriveToTargetRequest
  :super ros::object
  :slots (_linear_x _angular_z ))

(defmethod where_am_i::DriveToTargetRequest
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _angular_z (float __angular_z))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_x
    8
    ;; float64 _angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass where_am_i::DriveToTargetResponse
  :super ros::object
  :slots (_msg_feedback ))

(defmethod where_am_i::DriveToTargetResponse
  (:init
   (&key
    ((:msg_feedback __msg_feedback) "")
    )
   (send-super :init)
   (setq _msg_feedback (string __msg_feedback))
   self)
  (:msg_feedback
   (&optional __msg_feedback)
   (if __msg_feedback (setq _msg_feedback __msg_feedback)) _msg_feedback)
  (:serialization-length
   ()
   (+
    ;; string _msg_feedback
    4 (length _msg_feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg_feedback
       (write-long (length _msg_feedback) s) (princ _msg_feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg_feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass where_am_i::DriveToTarget
  :super ros::object
  :slots ())

(setf (get where_am_i::DriveToTarget :md5sum-) "c8652349d2a34a90a09475339e2a93d9")
(setf (get where_am_i::DriveToTarget :datatype-) "where_am_i/DriveToTarget")
(setf (get where_am_i::DriveToTarget :request) where_am_i::DriveToTargetRequest)
(setf (get where_am_i::DriveToTarget :response) where_am_i::DriveToTargetResponse)

(defmethod where_am_i::DriveToTargetRequest
  (:response () (instance where_am_i::DriveToTargetResponse :init)))

(setf (get where_am_i::DriveToTargetRequest :md5sum-) "c8652349d2a34a90a09475339e2a93d9")
(setf (get where_am_i::DriveToTargetRequest :datatype-) "where_am_i/DriveToTargetRequest")
(setf (get where_am_i::DriveToTargetRequest :definition-)
      "float64 linear_x
float64 angular_z
---
string msg_feedback
")

(setf (get where_am_i::DriveToTargetResponse :md5sum-) "c8652349d2a34a90a09475339e2a93d9")
(setf (get where_am_i::DriveToTargetResponse :datatype-) "where_am_i/DriveToTargetResponse")
(setf (get where_am_i::DriveToTargetResponse :definition-)
      "float64 linear_x
float64 angular_z
---
string msg_feedback
")



(provide :where_am_i/DriveToTarget "c8652349d2a34a90a09475339e2a93d9")


