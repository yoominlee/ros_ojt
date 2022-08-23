; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetCameraParams-request.msg.html

(cl:defclass <GetCameraParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCameraParams-request (<GetCameraParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetCameraParams-request> is deprecated: use astra_camera-srv:GetCameraParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraParams-request>) ostream)
  "Serializes a message object of type '<GetCameraParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraParams-request>) istream)
  "Deserializes a message object of type '<GetCameraParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraParams-request>)))
  "Returns string type for a service object of type '<GetCameraParams-request>"
  "astra_camera/GetCameraParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraParams-request)))
  "Returns string type for a service object of type 'GetCameraParams-request"
  "astra_camera/GetCameraParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraParams-request>)))
  "Returns md5sum for a message object of type '<GetCameraParams-request>"
  "ad6c16093abed8d06d93880396c17791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraParams-request)))
  "Returns md5sum for a message object of type 'GetCameraParams-request"
  "ad6c16093abed8d06d93880396c17791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraParams-request>)))
  "Returns full string definition for message of type '<GetCameraParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraParams-request)))
  "Returns full string definition for message of type 'GetCameraParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraParams-request
))
;//! \htmlinclude GetCameraParams-response.msg.html

(cl:defclass <GetCameraParams-response> (roslisp-msg-protocol:ros-message)
  ((l_intr_p
    :reader l_intr_p
    :initarg :l_intr_p
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (r_intr_p
    :reader r_intr_p
    :initarg :r_intr_p
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (r2l_r
    :reader r2l_r
    :initarg :r2l_r
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (r2l_t
    :reader r2l_t
    :initarg :r2l_t
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (l_k
    :reader l_k
    :initarg :l_k
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (r_k
    :reader r_k
    :initarg :r_k
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetCameraParams-response (<GetCameraParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCameraParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCameraParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetCameraParams-response> is deprecated: use astra_camera-srv:GetCameraParams-response instead.")))

(cl:ensure-generic-function 'l_intr_p-val :lambda-list '(m))
(cl:defmethod l_intr_p-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:l_intr_p-val is deprecated.  Use astra_camera-srv:l_intr_p instead.")
  (l_intr_p m))

(cl:ensure-generic-function 'r_intr_p-val :lambda-list '(m))
(cl:defmethod r_intr_p-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:r_intr_p-val is deprecated.  Use astra_camera-srv:r_intr_p instead.")
  (r_intr_p m))

(cl:ensure-generic-function 'r2l_r-val :lambda-list '(m))
(cl:defmethod r2l_r-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:r2l_r-val is deprecated.  Use astra_camera-srv:r2l_r instead.")
  (r2l_r m))

(cl:ensure-generic-function 'r2l_t-val :lambda-list '(m))
(cl:defmethod r2l_t-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:r2l_t-val is deprecated.  Use astra_camera-srv:r2l_t instead.")
  (r2l_t m))

(cl:ensure-generic-function 'l_k-val :lambda-list '(m))
(cl:defmethod l_k-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:l_k-val is deprecated.  Use astra_camera-srv:l_k instead.")
  (l_k m))

(cl:ensure-generic-function 'r_k-val :lambda-list '(m))
(cl:defmethod r_k-val ((m <GetCameraParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:r_k-val is deprecated.  Use astra_camera-srv:r_k instead.")
  (r_k m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCameraParams-response>) ostream)
  "Serializes a message object of type '<GetCameraParams-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'l_intr_p))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r_intr_p))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r2l_r))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r2l_t))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'l_k))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r_k))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCameraParams-response>) istream)
  "Deserializes a message object of type '<GetCameraParams-response>"
  (cl:setf (cl:slot-value msg 'l_intr_p) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'l_intr_p)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r_intr_p) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'r_intr_p)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r2l_r) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'r2l_r)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r2l_t) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'r2l_t)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'l_k) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'l_k)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r_k) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'r_k)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCameraParams-response>)))
  "Returns string type for a service object of type '<GetCameraParams-response>"
  "astra_camera/GetCameraParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraParams-response)))
  "Returns string type for a service object of type 'GetCameraParams-response"
  "astra_camera/GetCameraParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCameraParams-response>)))
  "Returns md5sum for a message object of type '<GetCameraParams-response>"
  "ad6c16093abed8d06d93880396c17791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCameraParams-response)))
  "Returns md5sum for a message object of type 'GetCameraParams-response"
  "ad6c16093abed8d06d93880396c17791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCameraParams-response>)))
  "Returns full string definition for message of type '<GetCameraParams-response>"
  (cl:format cl:nil "float32[4] l_intr_p~%float32[4] r_intr_p~%float32[9] r2l_r~%float32[3] r2l_t~%float32[5] l_k~%float32[5] r_k~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCameraParams-response)))
  "Returns full string definition for message of type 'GetCameraParams-response"
  (cl:format cl:nil "float32[4] l_intr_p~%float32[4] r_intr_p~%float32[9] r2l_r~%float32[3] r2l_t~%float32[5] l_k~%float32[5] r_k~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCameraParams-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'l_intr_p) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r_intr_p) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r2l_r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r2l_t) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'l_k) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r_k) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCameraParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCameraParams-response
    (cl:cons ':l_intr_p (l_intr_p msg))
    (cl:cons ':r_intr_p (r_intr_p msg))
    (cl:cons ':r2l_r (r2l_r msg))
    (cl:cons ':r2l_t (r2l_t msg))
    (cl:cons ':l_k (l_k msg))
    (cl:cons ':r_k (r_k msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCameraParams)))
  'GetCameraParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCameraParams)))
  'GetCameraParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCameraParams)))
  "Returns string type for a service object of type '<GetCameraParams>"
  "astra_camera/GetCameraParams")