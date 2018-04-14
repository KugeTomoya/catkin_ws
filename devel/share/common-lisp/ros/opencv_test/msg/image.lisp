; Auto-generated. Do not edit!


(cl:in-package opencv_test-msg)


;//! \htmlinclude image.msg.html

(cl:defclass <image> (roslisp-msg-protocol:ros-message)
  ((frameID
    :reader frameID
    :initarg :frameID
    :type cl:float
    :initform 0.0)
   (lrf
    :reader lrf
    :initarg :lrf
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan)))
)

(cl:defclass image (<image>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opencv_test-msg:<image> is deprecated: use opencv_test-msg:image instead.")))

(cl:ensure-generic-function 'frameID-val :lambda-list '(m))
(cl:defmethod frameID-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_test-msg:frameID-val is deprecated.  Use opencv_test-msg:frameID instead.")
  (frameID m))

(cl:ensure-generic-function 'lrf-val :lambda-list '(m))
(cl:defmethod lrf-val ((m <image>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencv_test-msg:lrf-val is deprecated.  Use opencv_test-msg:lrf instead.")
  (lrf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image>) ostream)
  "Serializes a message object of type '<image>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frameID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lrf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image>) istream)
  "Deserializes a message object of type '<image>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frameID) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lrf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image>)))
  "Returns string type for a message object of type '<image>"
  "opencv_test/image")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image)))
  "Returns string type for a message object of type 'image"
  "opencv_test/image")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image>)))
  "Returns md5sum for a message object of type '<image>"
  "7bb801d3f3ec3fd2b42f9ef26745b9e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image)))
  "Returns md5sum for a message object of type 'image"
  "7bb801d3f3ec3fd2b42f9ef26745b9e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image>)))
  "Returns full string definition for message of type '<image>"
  (cl:format cl:nil "float32 frameID~%sensor_msgs/LaserScan lrf~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image)))
  "Returns full string definition for message of type 'image"
  (cl:format cl:nil "float32 frameID~%sensor_msgs/LaserScan lrf~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lrf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image>))
  "Converts a ROS message object to a list"
  (cl:list 'image
    (cl:cons ':frameID (frameID msg))
    (cl:cons ':lrf (lrf msg))
))
