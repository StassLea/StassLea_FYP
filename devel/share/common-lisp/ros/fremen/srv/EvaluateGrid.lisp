; Auto-generated. Do not edit!


(cl:in-package fremen-srv)


;//! \htmlinclude EvaluateGrid-request.msg.html

(cl:defclass <EvaluateGrid-request> (roslisp-msg-protocol:ros-message)
  ((mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (maxOrder
    :reader maxOrder
    :initarg :maxOrder
    :type cl:integer
    :initform 0))
)

(cl:defclass EvaluateGrid-request (<EvaluateGrid-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EvaluateGrid-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EvaluateGrid-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<EvaluateGrid-request> is deprecated: use fremen-srv:EvaluateGrid-request instead.")))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <EvaluateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:mapname-val is deprecated.  Use fremen-srv:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'maxOrder-val :lambda-list '(m))
(cl:defmethod maxOrder-val ((m <EvaluateGrid-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:maxOrder-val is deprecated.  Use fremen-srv:maxOrder instead.")
  (maxOrder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EvaluateGrid-request>) ostream)
  "Serializes a message object of type '<EvaluateGrid-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mapname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mapname))
  (cl:let* ((signed (cl:slot-value msg 'maxOrder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EvaluateGrid-request>) istream)
  "Deserializes a message object of type '<EvaluateGrid-request>"
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
      (cl:setf (cl:slot-value msg 'maxOrder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EvaluateGrid-request>)))
  "Returns string type for a service object of type '<EvaluateGrid-request>"
  "fremen/EvaluateGridRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvaluateGrid-request)))
  "Returns string type for a service object of type 'EvaluateGrid-request"
  "fremen/EvaluateGridRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EvaluateGrid-request>)))
  "Returns md5sum for a message object of type '<EvaluateGrid-request>"
  "cec85680426a669ab5e68b203fa0b830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EvaluateGrid-request)))
  "Returns md5sum for a message object of type 'EvaluateGrid-request"
  "cec85680426a669ab5e68b203fa0b830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EvaluateGrid-request>)))
  "Returns full string definition for message of type '<EvaluateGrid-request>"
  (cl:format cl:nil "string mapname~%int32 maxOrder~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EvaluateGrid-request)))
  "Returns full string definition for message of type 'EvaluateGrid-request"
  (cl:format cl:nil "string mapname~%int32 maxOrder~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EvaluateGrid-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapname))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EvaluateGrid-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EvaluateGrid-request
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':maxOrder (maxOrder msg))
))
;//! \htmlinclude EvaluateGrid-response.msg.html

(cl:defclass <EvaluateGrid-response> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (allErrors
    :reader allErrors
    :initarg :allErrors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (nonemptyErrors
    :reader nonemptyErrors
    :initarg :nonemptyErrors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (dynamicErrors
    :reader dynamicErrors
    :initarg :dynamicErrors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EvaluateGrid-response (<EvaluateGrid-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EvaluateGrid-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EvaluateGrid-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<EvaluateGrid-response> is deprecated: use fremen-srv:EvaluateGrid-response instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <EvaluateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:size-val is deprecated.  Use fremen-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'allErrors-val :lambda-list '(m))
(cl:defmethod allErrors-val ((m <EvaluateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:allErrors-val is deprecated.  Use fremen-srv:allErrors instead.")
  (allErrors m))

(cl:ensure-generic-function 'nonemptyErrors-val :lambda-list '(m))
(cl:defmethod nonemptyErrors-val ((m <EvaluateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:nonemptyErrors-val is deprecated.  Use fremen-srv:nonemptyErrors instead.")
  (nonemptyErrors m))

(cl:ensure-generic-function 'dynamicErrors-val :lambda-list '(m))
(cl:defmethod dynamicErrors-val ((m <EvaluateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:dynamicErrors-val is deprecated.  Use fremen-srv:dynamicErrors instead.")
  (dynamicErrors m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EvaluateGrid-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:result-val is deprecated.  Use fremen-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EvaluateGrid-response>) ostream)
  "Serializes a message object of type '<EvaluateGrid-response>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'allErrors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'allErrors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nonemptyErrors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'nonemptyErrors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dynamicErrors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dynamicErrors))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EvaluateGrid-response>) istream)
  "Deserializes a message object of type '<EvaluateGrid-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'allErrors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'allErrors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nonemptyErrors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nonemptyErrors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dynamicErrors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dynamicErrors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EvaluateGrid-response>)))
  "Returns string type for a service object of type '<EvaluateGrid-response>"
  "fremen/EvaluateGridResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvaluateGrid-response)))
  "Returns string type for a service object of type 'EvaluateGrid-response"
  "fremen/EvaluateGridResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EvaluateGrid-response>)))
  "Returns md5sum for a message object of type '<EvaluateGrid-response>"
  "cec85680426a669ab5e68b203fa0b830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EvaluateGrid-response)))
  "Returns md5sum for a message object of type 'EvaluateGrid-response"
  "cec85680426a669ab5e68b203fa0b830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EvaluateGrid-response>)))
  "Returns full string definition for message of type '<EvaluateGrid-response>"
  (cl:format cl:nil "int32 size~%float32[] allErrors~%float32[] nonemptyErrors~%float32[] dynamicErrors~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EvaluateGrid-response)))
  "Returns full string definition for message of type 'EvaluateGrid-response"
  (cl:format cl:nil "int32 size~%float32[] allErrors~%float32[] nonemptyErrors~%float32[] dynamicErrors~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EvaluateGrid-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'allErrors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nonemptyErrors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dynamicErrors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EvaluateGrid-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EvaluateGrid-response
    (cl:cons ':size (size msg))
    (cl:cons ':allErrors (allErrors msg))
    (cl:cons ':nonemptyErrors (nonemptyErrors msg))
    (cl:cons ':dynamicErrors (dynamicErrors msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EvaluateGrid)))
  'EvaluateGrid-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EvaluateGrid)))
  'EvaluateGrid-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EvaluateGrid)))
  "Returns string type for a service object of type '<EvaluateGrid>"
  "fremen/EvaluateGrid")