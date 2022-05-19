;; Auto-generated. Do not edit!


(when (boundp 'fremen::RetrieveOctomap)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'RetrieveOctomap (find-package "FREMEN")))
(unless (find-package "FREMEN::RETRIEVEOCTOMAP")
  (make-package "FREMEN::RETRIEVEOCTOMAP"))
(unless (find-package "FREMEN::RETRIEVEOCTOMAPREQUEST")
  (make-package "FREMEN::RETRIEVEOCTOMAPREQUEST"))
(unless (find-package "FREMEN::RETRIEVEOCTOMAPRESPONSE")
  (make-package "FREMEN::RETRIEVEOCTOMAPRESPONSE"))

(in-package "ROS")





(defclass fremen::RetrieveOctomapRequest
  :super ros::object
  :slots (_mapname _stamp ))

(defmethod fremen::RetrieveOctomapRequest
  (:init
   (&key
    ((:mapname __mapname) "")
    ((:stamp __stamp) 0.0)
    )
   (send-super :init)
   (setq _mapname (string __mapname))
   (setq _stamp (float __stamp))
   self)
  (:mapname
   (&optional __mapname)
   (if __mapname (setq _mapname __mapname)) _mapname)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _mapname
    4 (length _mapname)
    ;; float64 _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mapname
       (write-long (length _mapname) s) (princ _mapname s)
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mapname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mapname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass fremen::RetrieveOctomapResponse
  :super ros::object
  :slots (_result ))

(defmethod fremen::RetrieveOctomapResponse
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

(defclass fremen::RetrieveOctomap
  :super ros::object
  :slots ())

(setf (get fremen::RetrieveOctomap :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RetrieveOctomap :datatype-) "fremen/RetrieveOctomap")
(setf (get fremen::RetrieveOctomap :request) fremen::RetrieveOctomapRequest)
(setf (get fremen::RetrieveOctomap :response) fremen::RetrieveOctomapResponse)

(defmethod fremen::RetrieveOctomapRequest
  (:response () (instance fremen::RetrieveOctomapResponse :init)))

(setf (get fremen::RetrieveOctomapRequest :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RetrieveOctomapRequest :datatype-) "fremen/RetrieveOctomapRequest")
(setf (get fremen::RetrieveOctomapRequest :definition-)
      "string mapname
float64 stamp
---
bool result

")

(setf (get fremen::RetrieveOctomapResponse :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RetrieveOctomapResponse :datatype-) "fremen/RetrieveOctomapResponse")
(setf (get fremen::RetrieveOctomapResponse :definition-)
      "string mapname
float64 stamp
---
bool result

")



(provide :fremen/RetrieveOctomap "c6c457df6363bb6c3daef5518f11f06a")


