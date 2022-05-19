;; Auto-generated. Do not edit!


(when (boundp 'fremen::EvaluateGrid)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'EvaluateGrid (find-package "FREMEN")))
(unless (find-package "FREMEN::EVALUATEGRID")
  (make-package "FREMEN::EVALUATEGRID"))
(unless (find-package "FREMEN::EVALUATEGRIDREQUEST")
  (make-package "FREMEN::EVALUATEGRIDREQUEST"))
(unless (find-package "FREMEN::EVALUATEGRIDRESPONSE")
  (make-package "FREMEN::EVALUATEGRIDRESPONSE"))

(in-package "ROS")





(defclass fremen::EvaluateGridRequest
  :super ros::object
  :slots (_mapname _maxOrder ))

(defmethod fremen::EvaluateGridRequest
  (:init
   (&key
    ((:mapname __mapname) "")
    ((:maxOrder __maxOrder) 0)
    )
   (send-super :init)
   (setq _mapname (string __mapname))
   (setq _maxOrder (round __maxOrder))
   self)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:maxOrder
   (&optional __maxOrder)
   (if __maxOrder (setq _maxOrder __maxOrder)) _maxOrder)
  (:serialization-length
   ()
   (+
    ;; string _mapname
    4 (length _mapname)
    ;; int32 _maxOrder
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; int32 _maxOrder
       (write-long _maxOrder s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _maxOrder
     (setq _maxOrder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass fremen::EvaluateGridResponse
  :super ros::object
  :slots (_size _allErrors _nonemptyErrors _dynamicErrors _result ))

(defmethod fremen::EvaluateGridResponse
  (:init
   (&key
    ((:size __size) 0)
    ((:allErrors __allErrors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:nonemptyErrors __nonemptyErrors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dynamicErrors __dynamicErrors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _allErrors __allErrors)
   (setq _nonemptyErrors __nonemptyErrors)
   (setq _dynamicErrors __dynamicErrors)
   (setq _result __result)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:allErrors
   (&optional __allErrors)
   (if __allErrors (setq _allErrors __allErrors)) _allErrors)
  (:nonemptyErrors
   (&optional __nonemptyErrors)
   (if __nonemptyErrors (setq _nonemptyErrors __nonemptyErrors)) _nonemptyErrors)
  (:dynamicErrors
   (&optional __dynamicErrors)
   (if __dynamicErrors (setq _dynamicErrors __dynamicErrors)) _dynamicErrors)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ;; float32[] _allErrors
    (* 4    (length _allErrors)) 4
    ;; float32[] _nonemptyErrors
    (* 4    (length _nonemptyErrors)) 4
    ;; float32[] _dynamicErrors
    (* 4    (length _dynamicErrors)) 4
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;; float32[] _allErrors
     (write-long (length _allErrors) s)
     (dotimes (i (length _allErrors))
       (sys::poke (elt _allErrors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _nonemptyErrors
     (write-long (length _nonemptyErrors) s)
     (dotimes (i (length _nonemptyErrors))
       (sys::poke (elt _nonemptyErrors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _dynamicErrors
     (write-long (length _dynamicErrors) s)
     (dotimes (i (length _dynamicErrors))
       (sys::poke (elt _dynamicErrors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _allErrors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _allErrors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _allErrors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _nonemptyErrors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nonemptyErrors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _nonemptyErrors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _dynamicErrors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dynamicErrors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dynamicErrors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fremen::EvaluateGrid
  :super ros::object
  :slots ())

(setf (get fremen::EvaluateGrid :md5sum-) "cec85680426a669ab5e68b203fa0b830")
(setf (get fremen::EvaluateGrid :datatype-) "fremen/EvaluateGrid")
(setf (get fremen::EvaluateGrid :request) fremen::EvaluateGridRequest)
(setf (get fremen::EvaluateGrid :response) fremen::EvaluateGridResponse)

(defmethod fremen::EvaluateGridRequest
  (:response () (instance fremen::EvaluateGridResponse :init)))

(setf (get fremen::EvaluateGridRequest :md5sum-) "cec85680426a669ab5e68b203fa0b830")
(setf (get fremen::EvaluateGridRequest :datatype-) "fremen/EvaluateGridRequest")
(setf (get fremen::EvaluateGridRequest :definition-)
      "string mapname
int32 maxOrder
---
int32 size
float32[] allErrors
float32[] nonemptyErrors
float32[] dynamicErrors
bool result

")

(setf (get fremen::EvaluateGridResponse :md5sum-) "cec85680426a669ab5e68b203fa0b830")
(setf (get fremen::EvaluateGridResponse :datatype-) "fremen/EvaluateGridResponse")
(setf (get fremen::EvaluateGridResponse :definition-)
      "string mapname
int32 maxOrder
---
int32 size
float32[] allErrors
float32[] nonemptyErrors
float32[] dynamicErrors
bool result

")



(provide :fremen/EvaluateGrid "cec85680426a669ab5e68b203fa0b830")


