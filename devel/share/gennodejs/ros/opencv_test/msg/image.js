// Auto-generated. Do not edit!

// (in-package opencv_test.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class image {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frameID = null;
      this.lrf = null;
    }
    else {
      if (initObj.hasOwnProperty('frameID')) {
        this.frameID = initObj.frameID
      }
      else {
        this.frameID = 0.0;
      }
      if (initObj.hasOwnProperty('lrf')) {
        this.lrf = initObj.lrf
      }
      else {
        this.lrf = new sensor_msgs.msg.LaserScan();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type image
    // Serialize message field [frameID]
    bufferOffset = _serializer.float32(obj.frameID, buffer, bufferOffset);
    // Serialize message field [lrf]
    bufferOffset = sensor_msgs.msg.LaserScan.serialize(obj.lrf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type image
    let len;
    let data = new image(null);
    // Deserialize message field [frameID]
    data.frameID = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lrf]
    data.lrf = sensor_msgs.msg.LaserScan.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.LaserScan.getMessageSize(object.lrf);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opencv_test/image';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bb801d3f3ec3fd2b42f9ef26745b9e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 frameID
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new image(null);
    if (msg.frameID !== undefined) {
      resolved.frameID = msg.frameID;
    }
    else {
      resolved.frameID = 0.0
    }

    if (msg.lrf !== undefined) {
      resolved.lrf = sensor_msgs.msg.LaserScan.Resolve(msg.lrf)
    }
    else {
      resolved.lrf = new sensor_msgs.msg.LaserScan()
    }

    return resolved;
    }
};

module.exports = image;
