; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetUVCMirror-request.msg.html

(cl:defclass <GetUVCMirror-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUVCMirror-request (<GetUVCMirror-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCMirror-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCMirror-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCMirror-request> is deprecated: use astra_camera-srv:GetUVCMirror-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCMirror-request>) ostream)
  "Serializes a message object of type '<GetUVCMirror-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCMirror-request>) istream)
  "Deserializes a message object of type '<GetUVCMirror-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCMirror-request>)))
  "Returns string type for a service object of type '<GetUVCMirror-request>"
  "astra_camera/GetUVCMirrorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCMirror-request)))
  "Returns string type for a service object of type 'GetUVCMirror-request"
  "astra_camera/GetUVCMirrorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCMirror-request>)))
  "Returns md5sum for a message object of type '<GetUVCMirror-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCMirror-request)))
  "Returns md5sum for a message object of type 'GetUVCMirror-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCMirror-request>)))
  "Returns full string definition for message of type '<GetUVCMirror-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCMirror-request)))
  "Returns full string definition for message of type 'GetUVCMirror-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCMirror-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCMirror-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCMirror-request
))
;//! \htmlinclude GetUVCMirror-response.msg.html

(cl:defclass <GetUVCMirror-response> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetUVCMirror-response (<GetUVCMirror-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUVCMirror-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUVCMirror-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetUVCMirror-response> is deprecated: use astra_camera-srv:GetUVCMirror-response instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <GetUVCMirror-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:enable-val is deprecated.  Use astra_camera-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUVCMirror-response>) ostream)
  "Serializes a message object of type '<GetUVCMirror-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUVCMirror-response>) istream)
  "Deserializes a message object of type '<GetUVCMirror-response>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUVCMirror-response>)))
  "Returns string type for a service object of type '<GetUVCMirror-response>"
  "astra_camera/GetUVCMirrorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCMirror-response)))
  "Returns string type for a service object of type 'GetUVCMirror-response"
  "astra_camera/GetUVCMirrorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUVCMirror-response>)))
  "Returns md5sum for a message object of type '<GetUVCMirror-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUVCMirror-response)))
  "Returns md5sum for a message object of type 'GetUVCMirror-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUVCMirror-response>)))
  "Returns full string definition for message of type '<GetUVCMirror-response>"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUVCMirror-response)))
  "Returns full string definition for message of type 'GetUVCMirror-response"
  (cl:format cl:nil "bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUVCMirror-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUVCMirror-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUVCMirror-response
    (cl:cons ':enable (enable msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUVCMirror)))
  'GetUVCMirror-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUVCMirror)))
  'GetUVCMirror-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUVCMirror)))
  "Returns string type for a service object of type '<GetUVCMirror>"
  "astra_camera/GetUVCMirror")