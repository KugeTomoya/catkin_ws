;; Auto-generated. Do not edit!


(when (boundp 'opencv_test::image)
  (if (not (find-package "OPENCV_TEST"))
    (make-package "OPENCV_TEST"))
  (shadow 'image (find-package "OPENCV_TEST")))
(unless (find-package "OPENCV_TEST::IMAGE")
  (make-package "OPENCV_TEST::IMAGE"))

(in-package "ROS")
;;//! \htmlinclude image.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass opencv_test::image
  :super ros::object
  :slots (_frameID _lrf ))

(defmethod opencv_test::image
  (:init
   (&key
    ((:frameID __frameID) 0.0)
    ((:lrf __lrf) (instance sensor_msgs::LaserScan :init))
    )
   (send-super :init)
   (setq _frameID (float __frameID))
   (setq _lrf __lrf)
   self)
  (:frameID
   (&optional __frameID)
   (if __frameID (setq _frameID __frameID)) _frameID)
  (:lrf
   (&rest __lrf)
   (if (keywordp (car __lrf))
       (send* _lrf __lrf)
     (progn
       (if __lrf (setq _lrf (car __lrf)))
       _lrf)))
  (:serialization-length
   ()
   (+
    ;; float32 _frameID
    4
    ;; sensor_msgs/LaserScan _lrf
    (send _lrf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frameID
       (sys::poke _frameID (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/LaserScan _lrf
       (send _lrf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frameID
     (setq _frameID (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/LaserScan _lrf
     (send _lrf :deserialize buf ptr-) (incf ptr- (send _lrf :serialization-length))
   ;;
   self)
  )

(setf (get opencv_test::image :md5sum-) "7bb801d3f3ec3fd2b42f9ef26745b9e8")
(setf (get opencv_test::image :datatype-) "opencv_test/image")
(setf (get opencv_test::image :definition-)
      "float32 frameID
sensor_msgs/LaserScan lrf

================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

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

")



(provide :opencv_test/image "7bb801d3f3ec3fd2b42f9ef26745b9e8")


