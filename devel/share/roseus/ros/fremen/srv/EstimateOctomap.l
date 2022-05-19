;; Auto-generated. Do not edit!


(when (boundp 'fremen::EstimateOctomap)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'EstimateOctomap (find-package "FREMEN")))
(unless (find-package "FREMEN::ESTIMATEOCTOMAP")
  (make-package "FREMEN::ESTIMATEOCTOMAP"))
(unless (find-package "FREMEN::ESTIMATEOCTOMAPREQUEST")
  (make-package "FREMEN::ESTIMATEOCTOMAPREQUEST"))
(unless (find-package "FREMEN::ESTIMATEOCTOMAPRESPONSE")
  (make-package "FREMEN::ESTIMATEOCTOMAPRESPONSE"))

(in-package "ROS")





(defclass fremen::EstimateOctomapRequest
  :super ros::object
  :slots (_mapname _stamp _minProbability _maxProbability _morphology ))

(defmethod fremen::EstimateOctomapRequest
  (:init
   (&key
    ((:mapname __mapname) "")
    ((:stamp __stamp) 0.0)
    ((:minProbability __minProbability) 0.0)
    ((:maxProbability __maxProbability) 0.0)
    ((:morphology __morphology) 0)
    )
   (send-super :init)
   (setq _mapname (string __mapname))
   (setq _stamp (float __stamp))
   (setq _minProbability (float __minProbability))
   (setq _maxProbability (float __maxProbability))
   (setq _morphology (round __morphology))
   self)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:minProbability
   (&optional __minProbability)
   (if __minProbability (setq _minProbability __minProbability)) _minProbability)
  (:maxProbability
   (&optional __maxProbability)
   (if __maxProbability (setq _maxProbability __maxProbability)) _maxProbability)
  (:morphology
   (&optional __morphology)
   (if __morphology (setq _morphology __morphology)) _morphology)
  (:serialization-length
   ()
   (+
    ;; string _mapname
    4 (length _mapname)
    ;; float64 _stamp
    8
    ;; float64 _minProbability
    8
    ;; float64 _maxProbability
    8
    ;; int8 _morphology
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minProbability
       (sys::poke _minProbability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxProbability
       (sys::poke _maxProbability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _morphology
       (write-byte _morphology s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minProbability
     (setq _minProbability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxProbability
     (setq _maxProbability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _morphology
     (setq _morphology (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _morphology 127) (setq _morphology (- _morphology 256)))
   ;;
   self)
  )

(defclass fremen::EstimateOctomapResponse
  :super ros::object
  :slots (_result ))

(defmethod fremen::EstimateOctomapResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass fremen::EstimateOctomap
  :super ros::object
  :slots ())

(setf (get fremen::EstimateOctomap :md5sum-) "3c884c8dd8df759b653740cba1c215ad")
(setf (get fremen::EstimateOctomap :datatype-) "fremen/EstimateOctomap")
(setf (get fremen::EstimateOctomap :request) fremen::EstimateOctomapRequest)
(setf (get fremen::EstimateOctomap :response) fremen::EstimateOctomapResponse)

(defmethod fremen::EstimateOctomapRequest
  (:response () (instance fremen::EstimateOctomapResponse :init)))

(setf (get fremen::EstimateOctomapRequest :md5sum-) "3c884c8dd8df759b653740cba1c215ad")
(setf (get fremen::EstimateOctomapRequest :datatype-) "fremen/EstimateOctomapRequest")
(setf (get fremen::EstimateOctomapRequest :definition-)
      "string mapname
float64 stamp
float64 minProbability
float64 maxProbability
int8 morphology
---
bool result

")

(setf (get fremen::EstimateOctomapResponse :md5sum-) "3c884c8dd8df759b653740cba1c215ad")
(setf (get fremen::EstimateOctomapResponse :datatype-) "fremen/EstimateOctomapResponse")
(setf (get fremen::EstimateOctomapResponse :definition-)
      "string mapname
float64 stamp
float64 minProbability
float64 maxProbability
int8 morphology
---
bool result

")



(provide :fremen/EstimateOctomap "3c884c8dd8df759b653740cba1c215ad")


