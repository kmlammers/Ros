;; Auto-generated. Do not edit!


(when (boundp 'schunk_sdh::TactileSensor)
  (if (not (find-package "SCHUNK_SDH"))
    (make-package "SCHUNK_SDH"))
  (shadow 'TactileSensor (find-package "SCHUNK_SDH")))
(unless (find-package "SCHUNK_SDH::TACTILESENSOR")
  (make-package "SCHUNK_SDH::TACTILESENSOR"))

(in-package "ROS")
;;//! \htmlinclude TactileSensor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass schunk_sdh::TactileSensor
  :super ros::object
  :slots (_header _tactile_matrix ))

(defmethod schunk_sdh::TactileSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tactile_matrix __tactile_matrix) (let (r) (dotimes (i 0) (push (instance schunk_sdh::TactileMatrix :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tactile_matrix __tactile_matrix)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tactile_matrix
   (&rest __tactile_matrix)
   (if (keywordp (car __tactile_matrix))
       (send* _tactile_matrix __tactile_matrix)
     (progn
       (if __tactile_matrix (setq _tactile_matrix (car __tactile_matrix)))
       _tactile_matrix)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; schunk_sdh/TactileMatrix[] _tactile_matrix
    (apply #'+ (send-all _tactile_matrix :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; schunk_sdh/TactileMatrix[] _tactile_matrix
     (write-long (length _tactile_matrix) s)
     (dolist (elem _tactile_matrix)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; schunk_sdh/TactileMatrix[] _tactile_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tactile_matrix (let (r) (dotimes (i n) (push (instance schunk_sdh::TactileMatrix :init) r)) r))
     (dolist (elem- _tactile_matrix)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get schunk_sdh::TactileSensor :md5sum-) "c6176a03c00cccf1b8efd3037de0d45d")
(setf (get schunk_sdh::TactileSensor :datatype-) "schunk_sdh/TactileSensor")
(setf (get schunk_sdh::TactileSensor :definition-)
      "#tactile sensor data in 2D grid
Header header
schunk_sdh/TactileMatrix[] tactile_matrix

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: schunk_sdh/TactileMatrix
uint32 matrix_id
int16 cells_x
int16 cells_y
int16[] tactile_array

")



(provide :schunk_sdh/TactileSensor "c6176a03c00cccf1b8efd3037de0d45d")


