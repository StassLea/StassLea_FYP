; Auto-generated. Do not edit!


(cl:in-package fremen-srv)


;//! \htmlinclude RetrieveOctomap-request.msg.html

(cl:defclass <RetrieveOctomap-request> (roslisp-msg-protocol:ros-message)
  ((mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass RetrieveOctomap-request (<RetrieveOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RetrieveOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RetrieveOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<RetrieveOctomap-request> is deprecated: use fremen-srv:RetrieveOctomap-request instead.")))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <RetrieveOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:mapname-val is deprecated.  Use fremen-srv:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RetrieveOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:stamp-val is deprecated.  Use fremen-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RetrieveOctomap-request>) ostream)
  "Serializes a message object of type '<RetrieveOctomap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapname))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RetrieveOctomap-request>) istream)
  "Deserializes a message object of type '<RetrieveOctomap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RetrieveOctomap-request>)))
  "Returns string type for a service object of type '<RetrieveOctomap-request>"
  "fremen/RetrieveOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RetrieveOctomap-request)))
  "Returns string type for a service object of type 'RetrieveOctomap-request"
  "fremen/RetrieveOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RetrieveOctomap-request>)))
  "Returns md5sum for a message object of type '<RetrieveOctomap-request>"
  "c6c457df6363bb6c3daef5518f11f06a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RetrieveOctomap-request)))
  "Returns md5sum for a message object of type 'RetrieveOctomap-request"
  "c6c457df6363bb6c3daef5518f11f06a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RetrieveOctomap-request>)))
  "Returns full string definition for message of type '<RetrieveOctomap-request>"
  (cl:format cl:nil "string mapname~%float64 stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RetrieveOctomap-request)))
  "Returns full string definition for message of type 'RetrieveOctomap-request"
  (cl:format cl:nil "string mapname~%float64 stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RetrieveOctomap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapname))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RetrieveOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RetrieveOctomap-request
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':stamp (stamp msg))
))
;//! \htmlinclude RetrieveOctomap-response.msg.html

(cl:defclass <RetrieveOctomap-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RetrieveOctomap-response (<RetrieveOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RetrieveOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RetrieveOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<RetrieveOctomap-response> is deprecated: use fremen-srv:RetrieveOctomap-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RetrieveOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:result-val is deprecated.  Use fremen-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RetrieveOctomap-response>) ostream)
  "Serializes a message object of type '<RetrieveOctomap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RetrieveOctomap-response>) istream)
  "Deserializes a message object of type '<RetrieveOctomap-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RetrieveOctomap-response>)))
  "Returns string type for a service object of type '<RetrieveOctomap-response>"
  "fremen/RetrieveOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RetrieveOctomap-response)))
  "Returns string type for a service object of type 'RetrieveOctomap-response"
  "fremen/RetrieveOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RetrieveOctomap-response>)))
  "Returns md5sum for a message object of type '<RetrieveOctomap-response>"
  "c6c457df6363bb6c3daef5518f11f06a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RetrieveOctomap-response)))
  "Returns md5sum for a message object of type 'RetrieveOctomap-response"
  "c6c457df6363bb6c3daef5518f11f06a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RetrieveOctomap-response>)))
  "Returns full string definition for message of type '<RetrieveOctomap-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RetrieveOctomap-response)))
  "Returns full string definition for message of type 'RetrieveOctomap-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RetrieveOctomap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RetrieveOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RetrieveOctomap-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RetrieveOctomap)))
  'RetrieveOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RetrieveOctomap)))
  'RetrieveOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RetrieveOctomap)))
  "Returns string type for a service object of type '<RetrieveOctomap>"
  "fremen/RetrieveOctomap")