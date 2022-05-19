;; Auto-generated. Do not edit!


(when (boundp 'fremen::RecoverOctomap)
  (if (not (find-package "FREMEN"))
    (make-package "FREMEN"))
  (shadow 'RecoverOctomap (find-package "FREMEN")))
(unless (find-package "FREMEN::RECOVEROCTOMAP")
  (make-package "FREMEN::RECOVEROCTOMAP"))
(unless (find-package "FREMEN::RECOVEROCTOMAPREQUEST")
  (make-package "FREMEN::RECOVEROCTOMAPREQUEST"))
(unless (find-package "FREMEN::RECOVEROCTOMAPRESPONSE")
  (make-package "FREMEN::RECOVEROCTOMAPRESPONSE"))

(in-package "ROS")





(defclass fremen::RecoverOctomapRequest
  :super ros::object
  :slots (_mapname _stamp ))

(defmethod fremen::RecoverOctomapRequest
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

(defclass fremen::RecoverOctomapResponse
  :super ros::object
  :slots (_result ))

(defmethod fremen::RecoverOctomapResponse
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

(defclass fremen::RecoverOctomap
  :super ros::object
  :slots ())

(setf (get fremen::RecoverOctomap :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RecoverOctomap :datatype-) "fremen/RecoverOctomap")
(setf (get fremen::RecoverOctomap :request) fremen::RecoverOctomapRequest)
(setf (get fremen::RecoverOctomap :response) fremen::RecoverOctomapResponse)

(defmethod fremen::RecoverOctomapRequest
  (:response () (instance fremen::RecoverOctomapResponse :init)))

(setf (get fremen::RecoverOctomapRequest :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RecoverOctomapRequest :datatype-) "fremen/RecoverOctomapRequest")
(setf (get fremen::RecoverOctomapRequest :definition-)
      "string mapname
float64 stamp
---
bool result

")

(setf (get fremen::RecoverOctomapResponse :md5sum-) "c6c457df6363bb6c3daef5518f11f06a")
(setf (get fremen::RecoverOctomapResponse :datatype-) "fremen/RecoverOctomapResponse")
(setf (get fremen::RecoverOctomapResponse :definition-)
      "string mapname
float64 stamp
---
bool result

")



(provide :fremen/RecoverOctomap "c6c457df6363bb6c3daef5518f11f06a")


