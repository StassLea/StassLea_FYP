; Auto-generated. Do not edit!


(cl:in-package fremen-srv)


;//! \htmlinclude EstimateOctomap-request.msg.html

(cl:defclass <EstimateOctomap-request> (roslisp-msg-protocol:ros-message)
  ((mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:float
    :initform 0.0)
   (minProbability
    :reader minProbability
    :initarg :minProbability
    :type cl:float
    :initform 0.0)
   (maxProbability
    :reader maxProbability
    :initarg :maxProbability
    :type cl:float
    :initform 0.0)
   (morphology
    :reader morphology
    :initarg :morphology
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EstimateOctomap-request (<EstimateOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimateOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimateOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<EstimateOctomap-request> is deprecated: use fremen-srv:EstimateOctomap-request instead.")))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <EstimateOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:mapname-val is deprecated.  Use fremen-srv:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <EstimateOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:stamp-val is deprecated.  Use fremen-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'minProbability-val :lambda-list '(m))
(cl:defmethod minProbability-val ((m <EstimateOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:minProbability-val is deprecated.  Use fremen-srv:minProbability instead.")
  (minProbability m))

(cl:ensure-generic-function 'maxProbability-val :lambda-list '(m))
(cl:defmethod maxProbability-val ((m <EstimateOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:maxProbability-val is deprecated.  Use fremen-srv:maxProbability instead.")
  (maxProbability m))

(cl:ensure-generic-function 'morphology-val :lambda-list '(m))
(cl:defmethod morphology-val ((m <EstimateOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:morphology-val is deprecated.  Use fremen-srv:morphology instead.")
  (morphology m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimateOctomap-request>) ostream)
  "Serializes a message object of type '<EstimateOctomap-request>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minProbability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxProbability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'morphology)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimateOctomap-request>) istream)
  "Deserializes a message object of type '<EstimateOctomap-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minProbability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxProbability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'morphology) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimateOctomap-request>)))
  "Returns string type for a service object of type '<EstimateOctomap-request>"
  "fremen/EstimateOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateOctomap-request)))
  "Returns string type for a service object of type 'EstimateOctomap-request"
  "fremen/EstimateOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimateOctomap-request>)))
  "Returns md5sum for a message object of type '<EstimateOctomap-request>"
  "3c884c8dd8df759b653740cba1c215ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimateOctomap-request)))
  "Returns md5sum for a message object of type 'EstimateOctomap-request"
  "3c884c8dd8df759b653740cba1c215ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimateOctomap-request>)))
  "Returns full string definition for message of type '<EstimateOctomap-request>"
  (cl:format cl:nil "string mapname~%float64 stamp~%float64 minProbability~%float64 maxProbability~%int8 morphology~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimateOctomap-request)))
  "Returns full string definition for message of type 'EstimateOctomap-request"
  (cl:format cl:nil "string mapname~%float64 stamp~%float64 minProbability~%float64 maxProbability~%int8 morphology~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimateOctomap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mapname))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimateOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimateOctomap-request
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':minProbability (minProbability msg))
    (cl:cons ':maxProbability (maxProbability msg))
    (cl:cons ':morphology (morphology msg))
))
;//! \htmlinclude EstimateOctomap-response.msg.html

(cl:defclass <EstimateOctomap-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EstimateOctomap-response (<EstimateOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimateOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimateOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-srv:<EstimateOctomap-response> is deprecated: use fremen-srv:EstimateOctomap-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EstimateOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-srv:result-val is deprecated.  Use fremen-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimateOctomap-response>) ostream)
  "Serializes a message object of type '<EstimateOctomap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimateOctomap-response>) istream)
  "Deserializes a message object of type '<EstimateOctomap-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimateOctomap-response>)))
  "Returns string type for a service object of type '<EstimateOctomap-response>"
  "fremen/EstimateOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateOctomap-response)))
  "Returns string type for a service object of type 'EstimateOctomap-response"
  "fremen/EstimateOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimateOctomap-response>)))
  "Returns md5sum for a message object of type '<EstimateOctomap-response>"
  "3c884c8dd8df759b653740cba1c215ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimateOctomap-response)))
  "Returns md5sum for a message object of type 'EstimateOctomap-response"
  "3c884c8dd8df759b653740cba1c215ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimateOctomap-response>)))
  "Returns full string definition for message of type '<EstimateOctomap-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimateOctomap-response)))
  "Returns full string definition for message of type 'EstimateOctomap-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimateOctomap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimateOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimateOctomap-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EstimateOctomap)))
  'EstimateOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EstimateOctomap)))
  'EstimateOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateOctomap)))
  "Returns string type for a service object of type '<EstimateOctomap>"
  "fremen/EstimateOctomap")