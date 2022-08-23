;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetUVCMirror)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetUVCMirror (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETUVCMIRROR")
  (make-package "ASTRA_CAMERA::SETUVCMIRROR"))
(unless (find-package "ASTRA_CAMERA::SETUVCMIRRORREQUEST")
  (make-package "ASTRA_CAMERA::SETUVCMIRRORREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETUVCMIRRORRESPONSE")
  (make-package "ASTRA_CAMERA::SETUVCMIRRORRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetUVCMirrorRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetUVCMirrorRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astra_camera::SetUVCMirrorResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetUVCMirrorResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass astra_camera::SetUVCMirror
  :super ros::object
  :slots ())

(setf (get astra_camera::SetUVCMirror :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetUVCMirror :datatype-) "astra_camera/SetUVCMirror")
(setf (get astra_camera::SetUVCMirror :request) astra_camera::SetUVCMirrorRequest)
(setf (get astra_camera::SetUVCMirror :response) astra_camera::SetUVCMirrorResponse)

(defmethod astra_camera::SetUVCMirrorRequest
  (:response () (instance astra_camera::SetUVCMirrorResponse :init)))

(setf (get astra_camera::SetUVCMirrorRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetUVCMirrorRequest :datatype-) "astra_camera/SetUVCMirrorRequest")
(setf (get astra_camera::SetUVCMirrorRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetUVCMirrorResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetUVCMirrorResponse :datatype-) "astra_camera/SetUVCMirrorResponse")
(setf (get astra_camera::SetUVCMirrorResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetUVCMirror "8c1211af706069c994c06e00eb59ac9e")


