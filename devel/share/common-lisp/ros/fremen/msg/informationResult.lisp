; Auto-generated. Do not edit!


(cl:in-package fremen-msg)


;//! \htmlinclude informationResult.msg.html

(cl:defclass <informationResult> (roslisp-msg-protocol:ros-message)
  ((sucessfull
    :reader sucessfull
    :initarg :sucessfull
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass informationResult (<informationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <informationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'informationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-msg:<informationResult> is deprecated: use fremen-msg:informationResult instead.")))

(cl:ensure-generic-function 'sucessfull-val :lambda-list '(m))
(cl:defmethod sucessfull-val ((m <informationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:sucessfull-val is deprecated.  Use fremen-msg:sucessfull instead.")
  (sucessfull m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <informationResult>) ostream)
  "Serializes a message object of type '<informationResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sucessfull) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <informationResult>) istream)
  "Deserializes a message object of type '<informationResult>"
    (cl:setf (cl:slot-value msg 'sucessfull) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<informationResult>)))
  "Returns string type for a message object of type '<informationResult>"
  "fremen/informationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'informationResult)))
  "Returns string type for a message object of type 'informationResult"
  "fremen/informationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<informationResult>)))
  "Returns md5sum for a message object of type '<informationResult>"
  "50a3c4d0f2f65351e7b4575a2e529624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'informationResult)))
  "Returns md5sum for a message object of type 'informationResult"
  "50a3c4d0f2f65351e7b4575a2e529624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<informationResult>)))
  "Returns full string definition for message of type '<informationResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool sucessfull~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'informationResult)))
  "Returns full string definition for message of type 'informationResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool sucessfull~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <informationResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <informationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'informationResult
    (cl:cons ':sucessfull (sucessfull msg))
))