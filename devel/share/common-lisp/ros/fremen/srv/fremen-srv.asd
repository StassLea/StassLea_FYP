
(cl:in-package :asdf)

(defsystem "fremen-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EstimateOctomap" :depends-on ("_package_EstimateOctomap"))
    (:file "_package_EstimateOctomap" :depends-on ("_package"))
    (:file "EvaluateGrid" :depends-on ("_package_EvaluateGrid"))
    (:file "_package_EvaluateGrid" :depends-on ("_package"))
    (:file "RecoverOctomap" :depends-on ("_package_RecoverOctomap"))
    (:file "_package_RecoverOctomap" :depends-on ("_package"))
    (:file "RetrieveOctomap" :depends-on ("_package_RetrieveOctomap"))
    (:file "_package_RetrieveOctomap" :depends-on ("_package"))
    (:file "SaveGrid" :depends-on ("_package_SaveGrid"))
    (:file "_package_SaveGrid" :depends-on ("_package"))
    (:file "UpdateGrid" :depends-on ("_package_UpdateGrid"))
    (:file "_package_UpdateGrid" :depends-on ("_package"))
  ))