; Auto-generated. Do not edit!


(cl:in-package fremen-srv)


;//! \htmlinclude SaveGrid-request.msg.html

(cl:defclass <SaveGrid-request> (roslisp-msg-protocol:ros-message)
  ((mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform "")
   (order
    :reader order
    :initarg :order
    :type cl:integer
    :initform 0)
   (lossy
    :reader lossy
    :initarg :lossy
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveGrid-request (<SaveGrid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveGrid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveGrid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<SaveGrid-request> is deprecated: use fremen-srv:SaveGrid-request instead.")))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <SaveGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:mapname-val is deprecated.  Use fremen-srv:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:filename-val is deprecated.  Use fremen-srv:filename instead.")
  (filename m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <SaveGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:order-val is deprecated.  Use fremen-srv:order instead.")
  (order m))

(cl:ensure-generic-function 'lossy-val :lambda-list '(m))
(cl:defmethod lossy-val ((m <SaveGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:lossy-val is deprecated.  Use fremen-srv:lossy instead.")
  (lossy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveGrid-request>) ostream)
  "Serializes a message object of type '<SaveGrid-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapname))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
  (cl:let* ((signed (cl:slot-value msg 'order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lossy) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveGrid-request>) istream)
  "Deserializes a message object of type '<SaveGrid-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'lossy) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveGrid-request>)))
  "Returns string type for a service object of type '<SaveGrid-request>"
  "fremen/SaveGridRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveGrid-request)))
  "Returns string type for a service object of type 'SaveGrid-request"
  "fremen/SaveGridRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveGrid-request>)))
  "Returns md5sum for a message object of type '<SaveGrid-request>"
  "485ca739c23c103eb4a0dc9cfd558e95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveGrid-request)))
  "Returns md5sum for a message object of type 'SaveGrid-request"
  "485ca739c23c103eb4a0dc9cfd558e95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveGrid-request>)))
  "Returns full string definition for message of type '<SaveGrid-request>"
  (cl:format cl:nil "string mapname~%string filename~%int64 order~%bool lossy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveGrid-request)))
  "Returns full string definition for message of type 'SaveGrid-request"
  (cl:format cl:nil "string mapname~%string filename~%int64 order~%bool lossy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveGrid-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapname))
     4 (cl:length (cl:slot-value msg 'filename))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveGrid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveGrid-request
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':filename (filename msg))
    (cl:cons ':order (order msg))
    (cl:cons ':lossy (lossy msg))
))
;//! \htmlinclude SaveGrid-response.msg.html

(cl:defclass <SaveGrid-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveGrid-response (<SaveGrid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveGrid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveGrid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<SaveGrid-response> is deprecated: use fremen-srv:SaveGrid-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <SaveGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:size-val is deprecated.  Use fremen-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SaveGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:result-val is deprecated.  Use fremen-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveGrid-response>) ostream)
  "Serializes a message object of type '<SaveGrid-response>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveGrid-response>) istream)
  "Deserializes a message object of type '<SaveGrid-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveGrid-response>)))
  "Returns string type for a service object of type '<SaveGrid-response>"
  "fremen/SaveGridResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveGrid-response)))
  "Returns string type for a service object of type 'SaveGrid-response"
  "fremen/SaveGridResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveGrid-response>)))
  "Returns md5sum for a message object of type '<SaveGrid-response>"
  "485ca739c23c103eb4a0dc9cfd558e95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveGrid-response)))
  "Returns md5sum for a message object of type 'SaveGrid-response"
  "485ca739c23c103eb4a0dc9cfd558e95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveGrid-response>)))
  "Returns full string definition for message of type '<SaveGrid-response>"
  (cl:format cl:nil "int64 size~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveGrid-response)))
  "Returns full string definition for message of type 'SaveGrid-response"
  (cl:format cl:nil "int64 size~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveGrid-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveGrid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveGrid-response
    (cl:cons ':size (size msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveGrid)))
  'SaveGrid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveGrid)))
  'SaveGrid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveGrid)))
  "Returns string type for a service object of type '<SaveGrid>"
  "fremen/SaveGrid")