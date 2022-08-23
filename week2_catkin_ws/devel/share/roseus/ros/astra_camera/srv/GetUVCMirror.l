;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetUVCMirror)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetUVCMirror (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETUVCMIRROR")
  (make-package "ASTRA_CAMERA::GETUVCMIRROR"))
(unless (find-package "ASTRA_CAMERA::GETUVCMIRRORREQUEST")
  (make-package "ASTRA_CAMERA::GETUVCMIRRORREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETUVCMIRRORRESPONSE")
  (make-package "ASTRA_CAMERA::GETUVCMIRRORRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetUVCMirrorRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetUVCMirrorRequest
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

(defclass astra_camera::GetUVCMirrorResponse
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::GetUVCMirrorResponse
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

(defclass astra_camera::GetUVCMirror
  :super ros::object
  :slots ())

(setf (get astra_camera::GetUVCMirror :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::GetUVCMirror :datatype-) "astra_camera/GetUVCMirror")
(setf (get astra_camera::GetUVCMirror :request) astra_camera::GetUVCMirrorRequest)
(setf (get astra_camera::GetUVCMirror :response) astra_camera::GetUVCMirrorResponse)

(defmethod astra_camera::GetUVCMirrorRequest
  (:response () (instance astra_camera::GetUVCMirrorResponse :init)))

(setf (get astra_camera::GetUVCMirrorRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::GetUVCMirrorRequest :datatype-) "astra_camera/GetUVCMirrorRequest")
(setf (get astra_camera::GetUVCMirrorRequest :definition-)
      "---
bool enable

")

(setf (get astra_camera::GetUVCMirrorResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::GetUVCMirrorResponse :datatype-) "astra_camera/GetUVCMirrorResponse")
(setf (get astra_camera::GetUVCMirrorResponse :definition-)
      "---
bool enable

")



(provide :astra_camera/GetUVCMirror "8c1211af706069c994c06e00eb59ac9e")


