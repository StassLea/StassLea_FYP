;; Auto-generated. Do not edit!


(when (boundp 'fremen::UpdateGrid)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'UpdateGrid (find-package "FREMEN")))
(unless (find-package "FREMEN::UPDATEGRID")
  (make-package "FREMEN::UPDATEGRID"))
(unless (find-package "FREMEN::UPDATEGRIDREQUEST")
  (make-package "FREMEN::UPDATEGRIDREQUEST"))
(unless (find-package "FREMEN::UPDATEGRIDRESPONSE")
  (make-package "FREMEN::UPDATEGRIDRESPONSE"))

(in-package "ROS")





(defclass fremen::UpdateGridRequest
  :super ros::object
  :slots (_mapname _order _precision _lossy ))

(defmethod fremen::UpdateGridRequest
  (:init
   (&key
    ((:mapname __mapname) "")
    ((:order __order) 0)
    ((:precision __precision) 0.0)
    ((:lossy __lossy) nil)
    )
   (send-super :init)
   (setq _mapname (string __mapname))
   (setq _order (round __order))
   (setq _precision (float __precision))
   (setq _lossy __lossy)
   self)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:precision
   (&optional __precision)
   (if __precision (setq _precision __precision)) _precision)
  (:lossy
   (&optional __lossy)
   (if __lossy (setq _lossy __lossy)) _lossy)
  (:serialization-length
   ()
   (+
    ;; string _mapname
    4 (length _mapname)
    ;; int32 _order
    4
    ;; float32 _precision
    4
    ;; bool _lossy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; int32 _order
       (write-long _order s)
     ;; float32 _precision
       (sys::poke _precision (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _lossy
       (if _lossy (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _order
     (setq _order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _precision
     (setq _precision (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _lossy
     (setq _lossy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fremen::UpdateGridResponse
  :super ros::object
  :slots (_allError _nonemptyError _dynamicError _size _result ))

(defmethod fremen::UpdateGridResponse
  (:init
   (&key
    ((:allError __allError) 0.0)
    ((:nonemptyError __nonemptyError) 0.0)
    ((:dynamicError __dynamicError) 0.0)
    ((:size __size) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _allError (float __allError))
   (setq _nonemptyError (float __nonemptyError))
   (setq _dynamicError (float __dynamicError))
   (setq _size (round __size))
   (setq _result __result)
   self)
  (:allError
   (&optional __allError)
   (if __allError (setq _allError __allError)) _allError)
  (:nonemptyError
   (&optional __nonemptyError)
   (if __nonemptyError (setq _nonemptyError __nonemptyError)) _nonemptyError)
  (:dynamicError
   (&optional __dynamicError)
   (if __dynamicError (setq _dynamicError __dynamicError)) _dynamicError)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _allError
    4
    ;; float32 _nonemptyError
    4
    ;; float32 _dynamicError
    4
    ;; int64 _size
    8
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _allError
       (sys::poke _allError (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _nonemptyError
       (sys::poke _nonemptyError (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dynamicError
       (sys::poke _dynamicError (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _size
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size) (= (length (_size . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size . bv) 0) 0) s)
              (write-long (ash (elt (_size . bv) 1) -1) s))
             ((and (class _size) (= (length (_size . bv)) 1)) ;; big1
              (write-long (elt (_size . bv) 0) s)
              (write-long (if (>= _size 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size s)(write-long (if (>= _size 0) 0 #xffffffff) s)))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _allError
     (setq _allError (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _nonemptyError
     (setq _nonemptyError (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dynamicError
     (setq _dynamicError (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _size
#+(or :alpha :irix6 :x86_64)
      (setf _size (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fremen::UpdateGrid
  :super ros::object
  :slots ())

(setf (get fremen::UpdateGrid :md5sum-) "ec761d237f96cedb8fde2a090de101cc")
(setf (get fremen::UpdateGrid :datatype-) "fremen/UpdateGrid")
(setf (get fremen::UpdateGrid :request) fremen::UpdateGridRequest)
(setf (get fremen::UpdateGrid :response) fremen::UpdateGridResponse)

(defmethod fremen::UpdateGridRequest
  (:response () (instance fremen::UpdateGridResponse :init)))

(setf (get fremen::UpdateGridRequest :md5sum-) "ec761d237f96cedb8fde2a090de101cc")
(setf (get fremen::UpdateGridRequest :datatype-) "fremen/UpdateGridRequest")
(setf (get fremen::UpdateGridRequest :definition-)
      "string mapname
int32 order
float32 precision
bool lossy
---
float32 allError
float32 nonemptyError
float32 dynamicError
int64 size
bool result

")

(setf (get fremen::UpdateGridResponse :md5sum-) "ec761d237f96cedb8fde2a090de101cc")
(setf (get fremen::UpdateGridResponse :datatype-) "fremen/UpdateGridResponse")
(setf (get fremen::UpdateGridResponse :definition-)
      "string mapname
int32 order
float32 precision
bool lossy
---
float32 allError
float32 nonemptyError
float32 dynamicError
int64 size
bool result

")



(provide :fremen/UpdateGrid "ec761d237f96cedb8fde2a090de101cc")


