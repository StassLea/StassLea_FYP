; Auto-generated. Do not edit!


(cl:in-package fremen-srv)


;//! \htmlinclude UpdateGrid-request.msg.html

(cl:defclass <UpdateGrid-request> (roslisp-msg-protocol:ros-message)
  ((mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (order
    :reader order
    :initarg :order
    :type cl:integer
    :initform 0)
   (precision
    :reader precision
    :initarg :precision
    :type cl:float
    :initform 0.0)
   (lossy
    :reader lossy
    :initarg :lossy
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateGrid-request (<UpdateGrid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGrid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGrid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<UpdateGrid-request> is deprecated: use fremen-srv:UpdateGrid-request instead.")))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <UpdateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:mapname-val is deprecated.  Use fremen-srv:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <UpdateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:order-val is deprecated.  Use fremen-srv:order instead.")
  (order m))

(cl:ensure-generic-function 'precision-val :lambda-list '(m))
(cl:defmethod precision-val ((m <UpdateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:precision-val is deprecated.  Use fremen-srv:precision instead.")
  (precision m))

(cl:ensure-generic-function 'lossy-val :lambda-list '(m))
(cl:defmethod lossy-val ((m <UpdateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:lossy-val is deprecated.  Use fremen-srv:lossy instead.")
  (lossy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGrid-request>) ostream)
  "Serializes a message object of type '<UpdateGrid-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapname))
  (cl:let* ((signed (cl:slot-value msg 'order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'precision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lossy) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGrid-request>) istream)
  "Deserializes a message object of type '<UpdateGrid-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mapname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mapname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'precision) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'lossy) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGrid-request>)))
  "Returns string type for a service object of type '<UpdateGrid-request>"
  "fremen/UpdateGridRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGrid-request)))
  "Returns string type for a service object of type 'UpdateGrid-request"
  "fremen/UpdateGridRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGrid-request>)))
  "Returns md5sum for a message object of type '<UpdateGrid-request>"
  "ec761d237f96cedb8fde2a090de101cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGrid-request)))
  "Returns md5sum for a message object of type 'UpdateGrid-request"
  "ec761d237f96cedb8fde2a090de101cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGrid-request>)))
  "Returns full string definition for message of type '<UpdateGrid-request>"
  (cl:format cl:nil "string mapname~%int32 order~%float32 precision~%bool lossy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGrid-request)))
  "Returns full string definition for message of type 'UpdateGrid-request"
  (cl:format cl:nil "string mapname~%int32 order~%float32 precision~%bool lossy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGrid-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapname))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGrid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGrid-request
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':order (order msg))
    (cl:cons ':precision (precision msg))
    (cl:cons ':lossy (lossy msg))
))
;//! \htmlinclude UpdateGrid-response.msg.html

(cl:defclass <UpdateGrid-response> (roslisp-msg-protocol:ros-message)
  ((allError
    :reader allError
    :initarg :allError
    :type cl:float
    :initform 0.0)
   (nonemptyError
    :reader nonemptyError
    :initarg :nonemptyError
    :type cl:float
    :initform 0.0)
   (dynamicError
    :reader dynamicError
    :initarg :dynamicError
    :type cl:float
    :initform 0.0)
   (size
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

(cl:defclass UpdateGrid-response (<UpdateGrid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGrid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGrid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<UpdateGrid-response> is deprecated: use fremen-srv:UpdateGrid-response instead.")))

(cl:ensure-generic-function 'allError-val :lambda-list '(m))
(cl:defmethod allError-val ((m <UpdateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:allError-val is deprecated.  Use fremen-srv:allError instead.")
  (allError m))

(cl:ensure-generic-function 'nonemptyError-val :lambda-list '(m))
(cl:defmethod nonemptyError-val ((m <UpdateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:nonemptyError-val is deprecated.  Use fremen-srv:nonemptyError instead.")
  (nonemptyError m))

(cl:ensure-generic-function 'dynamicError-val :lambda-list '(m))
(cl:defmethod dynamicError-val ((m <UpdateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:dynamicError-val is deprecated.  Use fremen-srv:dynamicError instead.")
  (dynamicError m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <UpdateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:size-val is deprecated.  Use fremen-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UpdateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:result-val is deprecated.  Use fremen-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGrid-response>) ostream)
  "Serializes a message object of type '<UpdateGrid-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'allError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nonemptyError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dynamicError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGrid-response>) istream)
  "Deserializes a message object of type '<UpdateGrid-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allError) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nonemptyError) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dynamicError) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGrid-response>)))
  "Returns string type for a service object of type '<UpdateGrid-response>"
  "fremen/UpdateGridResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGrid-response)))
  "Returns string type for a service object of type 'UpdateGrid-response"
  "fremen/UpdateGridResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGrid-response>)))
  "Returns md5sum for a message object of type '<UpdateGrid-response>"
  "ec761d237f96cedb8fde2a090de101cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGrid-response)))
  "Returns md5sum for a message object of type 'UpdateGrid-response"
  "ec761d237f96cedb8fde2a090de101cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGrid-response>)))
  "Returns full string definition for message of type '<UpdateGrid-response>"
  (cl:format cl:nil "float32 allError~%float32 nonemptyError~%float32 dynamicError~%int64 size~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGrid-response)))
  "Returns full string definition for message of type 'UpdateGrid-response"
  (cl:format cl:nil "float32 allError~%float32 nonemptyError~%float32 dynamicError~%int64 size~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGrid-response>))
  (cl:+ 0
     4
     4
     4
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGrid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGrid-response
    (cl:cons ':allError (allError msg))
    (cl:cons ':nonemptyError (nonemptyError msg))
    (cl:cons ':dynamicError (dynamicError msg))
    (cl:cons ':size (size msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateGrid)))
  'UpdateGrid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateGrid)))
  'UpdateGrid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGrid)))
  "Returns string type for a service object of type '<UpdateGrid>"
  "fremen/UpdateGrid")