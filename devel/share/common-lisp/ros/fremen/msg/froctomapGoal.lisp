; Auto-generated. Do not edit!


(cl:in-package fremen-msg)


;//! \htmlinclude froctomapGoal.msg.html

(cl:defclass <froctomapGoal> (roslisp-msg-protocol:ros-message)
  ((name_action
    :reader name_action
    :initarg :name_action
    :type cl:string
    :initform "")
   (mapname
    :reader mapname
    :initarg :mapname
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:float
    :initform 0.0)
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
    :initform cl:nil)
   (minprobability
    :reader minprobability
    :initarg :minprobability
    :type cl:float
    :initform 0.0)
   (maxprobability
    :reader maxprobability
    :initarg :maxprobability
    :type cl:float
    :initform 0.0)
   (morphology
    :reader morphology
    :initarg :morphology
    :type cl:fixnum
    :initform 0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass froctomapGoal (<froctomapGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <froctomapGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'froctomapGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-msg:<froctomapGoal> is deprecated: use fremen-msg:froctomapGoal instead.")))

(cl:ensure-generic-function 'name_action-val :lambda-list '(m))
(cl:defmethod name_action-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:name_action-val is deprecated.  Use fremen-msg:name_action instead.")
  (name_action m))

(cl:ensure-generic-function 'mapname-val :lambda-list '(m))
(cl:defmethod mapname-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:mapname-val is deprecated.  Use fremen-msg:mapname instead.")
  (mapname m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:stamp-val is deprecated.  Use fremen-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:order-val is deprecated.  Use fremen-msg:order instead.")
  (order m))

(cl:ensure-generic-function 'precision-val :lambda-list '(m))
(cl:defmethod precision-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:precision-val is deprecated.  Use fremen-msg:precision instead.")
  (precision m))

(cl:ensure-generic-function 'lossy-val :lambda-list '(m))
(cl:defmethod lossy-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:lossy-val is deprecated.  Use fremen-msg:lossy instead.")
  (lossy m))

(cl:ensure-generic-function 'minprobability-val :lambda-list '(m))
(cl:defmethod minprobability-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:minprobability-val is deprecated.  Use fremen-msg:minprobability instead.")
  (minprobability m))

(cl:ensure-generic-function 'maxprobability-val :lambda-list '(m))
(cl:defmethod maxprobability-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:maxprobability-val is deprecated.  Use fremen-msg:maxprobability instead.")
  (maxprobability m))

(cl:ensure-generic-function 'morphology-val :lambda-list '(m))
(cl:defmethod morphology-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:morphology-val is deprecated.  Use fremen-msg:morphology instead.")
  (morphology m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <froctomapGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:filename-val is deprecated.  Use fremen-msg:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <froctomapGoal>) ostream)
  "Serializes a message object of type '<froctomapGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_action))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'precision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lossy) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minprobability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxprobability))))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <froctomapGoal>) istream)
  "Deserializes a message object of type '<froctomapGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'precision) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'lossy) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minprobability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxprobability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'morphology) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<froctomapGoal>)))
  "Returns string type for a message object of type '<froctomapGoal>"
  "fremen/froctomapGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'froctomapGoal)))
  "Returns string type for a message object of type 'froctomapGoal"
  "fremen/froctomapGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<froctomapGoal>)))
  "Returns md5sum for a message object of type '<froctomapGoal>"
  "d57d9b96da01473a02e5fb72ec45c690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'froctomapGoal)))
  "Returns md5sum for a message object of type 'froctomapGoal"
  "d57d9b96da01473a02e5fb72ec45c690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<froctomapGoal>)))
  "Returns full string definition for message of type '<froctomapGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string name_action 	# update save predict recover_octomap estimate_octomap~%string mapname~%float64 stamp		# measurement time~%int64 order		# 0 - 100~%float64 precision	# 0.0 - 1.0~%bool lossy~%float64 minprobability  # 0.0 - 1.0~%float64 maxprobability	# 0.0 - 1.0~%int8 morphology ~%string filename	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'froctomapGoal)))
  "Returns full string definition for message of type 'froctomapGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string name_action 	# update save predict recover_octomap estimate_octomap~%string mapname~%float64 stamp		# measurement time~%int64 order		# 0 - 100~%float64 precision	# 0.0 - 1.0~%bool lossy~%float64 minprobability  # 0.0 - 1.0~%float64 maxprobability	# 0.0 - 1.0~%int8 morphology ~%string filename	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <froctomapGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name_action))
     4 (cl:length (cl:slot-value msg 'mapname))
     8
     8
     8
     1
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <froctomapGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'froctomapGoal
    (cl:cons ':name_action (name_action msg))
    (cl:cons ':mapname (mapname msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':order (order msg))
    (cl:cons ':precision (precision msg))
    (cl:cons ':lossy (lossy msg))
    (cl:cons ':minprobability (minprobability msg))
    (cl:cons ':maxprobability (maxprobability msg))
    (cl:cons ':morphology (morphology msg))
    (cl:cons ':filename (filename msg))
))
