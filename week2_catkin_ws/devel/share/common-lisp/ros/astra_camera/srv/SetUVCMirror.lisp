; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude SetUVCMirror-request.msg.html

(cl:defclass <SetUVCMirror-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetUVCMirror-request (<SetUVCMirror-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCMirror-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCMirror-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCMirror-request> is deprecated: use astra_camera-srv:SetUVCMirror-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetUVCMirror-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCMirror-request>) ostream)
  "Serializes a message object of type '<SetUVCMirror-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCMirror-request>) istream)
  "Deserializes a message object of type '<SetUVCMirror-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCMirror-request>)))
  "Returns string type for a service object of type '<SetUVCMirror-request>"
  "astra_camera/SetUVCMirrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCMirror-request)))
  "Returns string type for a service object of type 'SetUVCMirror-request"
  "astra_camera/SetUVCMirrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCMirror-request>)))
  "Returns md5sum for a message object of type '<SetUVCMirror-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCMirror-request)))
  "Returns md5sum for a message object of type 'SetUVCMirror-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCMirror-request>)))
  "Returns full string definition for message of type '<SetUVCMirror-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCMirror-request)))
  "Returns full string definition for message of type 'SetUVCMirror-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCMirror-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCMirror-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCMirror-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetUVCMirror-response.msg.html

(cl:defclass <SetUVCMirror-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetUVCMirror-response (<SetUVCMirror-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUVCMirror-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUVCMirror-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<SetUVCMirror-response> is deprecated: use astra_camera-srv:SetUVCMirror-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUVCMirror-response>) ostream)
  "Serializes a message object of type '<SetUVCMirror-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUVCMirror-response>) istream)
  "Deserializes a message object of type '<SetUVCMirror-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUVCMirror-response>)))
  "Returns string type for a service object of type '<SetUVCMirror-response>"
  "astra_camera/SetUVCMirrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCMirror-response)))
  "Returns string type for a service object of type 'SetUVCMirror-response"
  "astra_camera/SetUVCMirrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUVCMirror-response>)))
  "Returns md5sum for a message object of type '<SetUVCMirror-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUVCMirror-response)))
  "Returns md5sum for a message object of type 'SetUVCMirror-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUVCMirror-response>)))
  "Returns full string definition for message of type '<SetUVCMirror-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUVCMirror-response)))
  "Returns full string definition for message of type 'SetUVCMirror-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUVCMirror-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUVCMirror-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUVCMirror-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUVCMirror)))
  'SetUVCMirror-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUVCMirror)))
  'SetUVCMirror-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUVCMirror)))
  "Returns string type for a service object of type '<SetUVCMirror>"
  "astra_camera/SetUVCMirror")