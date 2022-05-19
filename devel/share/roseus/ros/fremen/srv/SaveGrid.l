;; Auto-generated. Do not edit!


(when (boundp 'fremen::SaveGrid)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'SaveGrid (find-package "FREMEN")))
(unless (find-package "FREMEN::SAVEGRID")
  (make-package "FREMEN::SAVEGRID"))
(unless (find-package "FREMEN::SAVEGRIDREQUEST")
  (make-package "FREMEN::SAVEGRIDREQUEST"))
(unless (find-package "FREMEN::SAVEGRIDRESPONSE")
  (make-package "FREMEN::SAVEGRIDRESPONSE"))

(in-package "ROS")





(defclass fremen::SaveGridRequest
  :super ros::object
  :slots (_mapname _filename _order _lossy ))

(defmethod fremen::SaveGridRequest
  (:init
   (&key
    ((:mapname __mapname) "")
    ((:filename __filename) "")
    ((:order __order) 0)
    ((:lossy __lossy) nil)
    )
   (send-super :init)
   (setq _mapname (string __mapname))
   (setq _filename (string __filename))
   (setq _order (round __order))
   (setq _lossy __lossy)
   self)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:lossy
   (&optional __lossy)
   (if __lossy (setq _lossy __lossy)) _lossy)
  (:serialization-length
   ()
   (+
    ;; string _mapname
    4 (length _mapname)
    ;; string _filename
    4 (length _filename)
    ;; int64 _order
    8
    ;; bool _lossy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
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
     ;; bool _lossy
       (if _lossy (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; bool _lossy
     (setq _lossy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fremen::SaveGridResponse
  :super ros::object
  :slots (_size _result ))

(defmethod fremen::SaveGridResponse
  (:init
   (&key
    ((:size __size) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _result __result)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64 _size
    8
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(defclass fremen::SaveGrid
  :super ros::object
  :slots ())

(setf (get fremen::SaveGrid :md5sum-) "485ca739c23c103eb4a0dc9cfd558e95")
(setf (get fremen::SaveGrid :datatype-) "fremen/SaveGrid")
(setf (get fremen::SaveGrid :request) fremen::SaveGridRequest)
(setf (get fremen::SaveGrid :response) fremen::SaveGridResponse)

(defmethod fremen::SaveGridRequest
  (:response () (instance fremen::SaveGridResponse :init)))

(setf (get fremen::SaveGridRequest :md5sum-) "485ca739c23c103eb4a0dc9cfd558e95")
(setf (get fremen::SaveGridRequest :datatype-) "fremen/SaveGridRequest")
(setf (get fremen::SaveGridRequest :definition-)
      "string mapname
string filename
int64 order
bool lossy
---
int64 size
bool result

")

(setf (get fremen::SaveGridResponse :md5sum-) "485ca739c23c103eb4a0dc9cfd558e95")
(setf (get fremen::SaveGridResponse :datatype-) "fremen/SaveGridResponse")
(setf (get fremen::SaveGridResponse :definition-)
      "string mapname
string filename
int64 order
bool lossy
---
int64 size
bool result

")



(provide :fremen/SaveGrid "485ca739c23c103eb4a0dc9cfd558e95")


