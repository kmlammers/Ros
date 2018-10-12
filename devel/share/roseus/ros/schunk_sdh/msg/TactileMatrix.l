;; Auto-generated. Do not edit!


(when (boundp 'schunk_sdh::TactileMatrix)
  (if (not (find-package "SCHUNK_SDH"))
    (make-package "SCHUNK_SDH"))
  (shadow 'TactileMatrix (find-package "SCHUNK_SDH")))
(unless (find-package "SCHUNK_SDH::TACTILEMATRIX")
  (make-package "SCHUNK_SDH::TACTILEMATRIX"))

(in-package "ROS")
;;//! \htmlinclude TactileMatrix.msg.html


(defclass schunk_sdh::TactileMatrix
  :super ros::object
  :slots (_matrix_id _cells_x _cells_y _tactile_array ))

(defmethod schunk_sdh::TactileMatrix
  (:init
   (&key
    ((:matrix_id __matrix_id) 0)
    ((:cells_x __cells_x) 0)
    ((:cells_y __cells_y) 0)
    ((:tactile_array __tactile_array) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _matrix_id (round __matrix_id))
   (setq _cells_x (round __cells_x))
   (setq _cells_y (round __cells_y))
   (setq _tactile_array __tactile_array)
   self)
  (:matrix_id
   (&optional __matrix_id)
   (if __matrix_id (setq _matrix_id __matrix_id)) _matrix_id)
  (:cells_x
   (&optional __cells_x)
   (if __cells_x (setq _cells_x __cells_x)) _cells_x)
  (:cells_y
   (&optional __cells_y)
   (if __cells_y (setq _cells_y __cells_y)) _cells_y)
  (:tactile_array
   (&optional __tactile_array)
   (if __tactile_array (setq _tactile_array __tactile_array)) _tactile_array)
  (:serialization-length
   ()
   (+
    ;; uint32 _matrix_id
    4
    ;; int16 _cells_x
    2
    ;; int16 _cells_y
    2
    ;; int16[] _tactile_array
    (* 2    (length _tactile_array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _matrix_id
       (write-long _matrix_id s)
     ;; int16 _cells_x
       (write-word _cells_x s)
     ;; int16 _cells_y
       (write-word _cells_y s)
     ;; int16[] _tactile_array
     (write-long (length _tactile_array) s)
     (dotimes (i (length _tactile_array))
       (write-word (elt _tactile_array i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _matrix_id
     (setq _matrix_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _cells_x
     (setq _cells_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cells_y
     (setq _cells_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _tactile_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tactile_array (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tactile_array i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get schunk_sdh::TactileMatrix :md5sum-) "ab718b6c1d4d719110707994d2e325e4")
(setf (get schunk_sdh::TactileMatrix :datatype-) "schunk_sdh/TactileMatrix")
(setf (get schunk_sdh::TactileMatrix :definition-)
      "uint32 matrix_id
int16 cells_x
int16 cells_y
int16[] tactile_array

")



(provide :schunk_sdh/TactileMatrix "ab718b6c1d4d719110707994d2e325e4")


