;; Auto-generated. Do not edit!


(when (boundp 'fremen::froctomapGoal)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'froctomapGoal (find-package "FREMEN")))
(unless (find-package "FREMEN::FROCTOMAPGOAL")
  (make-package "FREMEN::FROCTOMAPGOAL"))

(in-package "ROS")
;;//! \htmlinclude froctomapGoal.msg.html


(defclass fremen::froctomapGoal
  :super ros::object
  :slots (_name_action _mapname _stamp _order _precision _lossy _minprobability _maxprobability _morphology _filename ))

(defmethod fremen::froctomapGoal
  (:init
   (&key
    ((:name_action __name_action) "")
    ((:mapname __mapname) "")
    ((:stamp __stamp) 0.0)
    ((:order __order) 0)
    ((:precision __precision) 0.0)
    ((:lossy __lossy) nil)
    ((:minprobability __minprobability) 0.0)
    ((:maxprobability __maxprobability) 0.0)
    ((:morphology __morphology) 0)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _name_action (string __name_action))
   (setq _mapname (string __mapname))
   (setq _stamp (float __stamp))
   (setq _order (round __order))
   (setq _precision (float __precision))
   (setq _lossy __lossy)
   (setq _minprobability (float __minprobability))
   (setq _maxprobability (float __maxprobability))
   (setq _morphology (round __morphology))
   (setq _filename (string __filename))
   self)
  (:name_action
   (&optional __name_action)
   (if __name_action (setq _name_action __name_action)) _name_action)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:precision
   (&optional __precision)
   (if __precision (setq _precision __precision)) _precision)
  (:lossy
   (&optional __lossy)
   (if __lossy (setq _lossy __lossy)) _lossy)
  (:minprobability
   (&optional __minprobability)
   (if __minprobability (setq _minprobability __minprobability)) _minprobability)
  (:maxprobability
   (&optional __maxprobability)
   (if __maxprobability (setq _maxprobability __maxprobability)) _maxprobability)
  (:morphology
   (&optional __morphology)
   (if __morphology (setq _morphology __morphology)) _morphology)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _name_action
    4 (length _name_action)
    ;; string _mapname
    4 (length _mapname)
    ;; float64 _stamp
    8
    ;; int64 _order
    8
    ;; float64 _precision
    8
    ;; bool _lossy
    1
    ;; float64 _minprobability
    8
    ;; float64 _maxprobability
    8
    ;; int8 _morphology
    1
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name_action
       (write-long (length _name_action) s) (princ _name_action s)
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _order
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _order (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _order) (= (length (_order . bv)) 2)) ;; bignum
              (write-long (ash (elt (_order . bv) 0) 0) s)
              (write-long (ash (elt (_order . bv) 1) -1) s))
             ((and (class _order) (= (length (_order . bv)) 1)) ;; big1
              (write-long (elt (_order . bv) 0) s)
              (write-long (if (>= _order 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _order s)(write-long (if (>= _order 0) 0 #xffffffff) s)))
     ;; float64 _precision
       (sys::poke _precision (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _lossy
       (if _lossy (write-byte -1 s) (write-byte 0 s))
     ;; float64 _minprobability
       (sys::poke _minprobability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxprobability
       (sys::poke _maxprobability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _morphology
       (write-byte _morphology s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name_action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _order
#+(or :alpha :irix6 :x86_64)
      (setf _order (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _order (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _precision
     (setq _precision (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _lossy
     (setq _lossy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _minprobability
     (setq _minprobability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxprobability
     (setq _maxprobability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _morphology
     (setq _morphology (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _morphology 127) (setq _morphology (- _morphology 256)))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fremen::froctomapGoal :md5sum-) "d57d9b96da01473a02e5fb72ec45c690")
(setf (get fremen::froctomapGoal :datatype-) "fremen/froctomapGoal")
(setf (get fremen::froctomapGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
string name_action 	# update save predict recover_octomap estimate_octomap
string mapname
float64 stamp		# measurement time
int64 order		# 0 - 100
float64 precision	# 0.0 - 1.0
bool lossy
float64 minprobability  # 0.0 - 1.0
float64 maxprobability	# 0.0 - 1.0
int8 morphology 
string filename	

")



(provide :fremen/froctomapGoal "d57d9b96da01473a02e5fb72ec45c690")


