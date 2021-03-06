; Auto-generated. Do not edit!


(cl:in-package fremen-msg)


;//! \htmlinclude froctomapActionGoal.msg.html

(cl:defclass <froctomapActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type fremen-msg:froctomapGoal
    :initform (cl:make-instance 'fremen-msg:froctomapGoal)))
)

(cl:defclass froctomapActionGoal (<froctomapActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <froctomapActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'froctomapActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremen-msg:<froctomapActionGoal> is deprecated: use fremen-msg:froctomapActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <froctomapActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:header-val is deprecated.  Use fremen-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <froctomapActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:goal_id-val is deprecated.  Use fremen-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <froctomapActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremen-msg:goal-val is deprecated.  Use fremen-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <froctomapActionGoal>) ostream)
  "Serializes a message object of type '<froctomapActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <froctomapActionGoal>) istream)
  "Deserializes a message object of type '<froctomapActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<froctomapActionGoal>)))
  "Returns string type for a message object of type '<froctomapActionGoal>"
  "fremen/froctomapActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'froctomapActionGoal)))
  "Returns string type for a message object of type 'froctomapActionGoal"
  "fremen/froctomapActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<froctomapActionGoal>)))
  "Returns md5sum for a message object of type '<froctomapActionGoal>"
  "7618d2299158ce98a5b28155a3ac9e45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'froctomapActionGoal)))
  "Returns md5sum for a message object of type 'froctomapActionGoal"
  "7618d2299158ce98a5b28155a3ac9e45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<froctomapActionGoal>)))
  "Returns full string definition for message of type '<froctomapActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%froctomapGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: fremen/froctomapGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string name_action 	# update save predict recover_octomap estimate_octomap~%string mapname~%float64 stamp		# measurement time~%int64 order		# 0 - 100~%float64 precision	# 0.0 - 1.0~%bool lossy~%float64 minprobability  # 0.0 - 1.0~%float64 maxprobability	# 0.0 - 1.0~%int8 morphology ~%string filename	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'froctomapActionGoal)))
  "Returns full string definition for message of type 'froctomapActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%froctomapGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: fremen/froctomapGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string name_action 	# update save predict recover_octomap estimate_octomap~%string mapname~%float64 stamp		# measurement time~%int64 order		# 0 - 100~%float64 precision	# 0.0 - 1.0~%bool lossy~%float64 minprobability  # 0.0 - 1.0~%float64 maxprobability	# 0.0 - 1.0~%int8 morphology ~%string filename	~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <froctomapActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <froctomapActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'froctomapActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
