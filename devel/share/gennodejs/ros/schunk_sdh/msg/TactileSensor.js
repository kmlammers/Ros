// Auto-generated. Do not edit!

// (in-package schunk_sdh.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TactileMatrix = require('./TactileMatrix.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TactileSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tactile_matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tactile_matrix')) {
        this.tactile_matrix = initObj.tactile_matrix
      }
      else {
        this.tactile_matrix = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TactileSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tactile_matrix]
    // Serialize the length for message field [tactile_matrix]
    bufferOffset = _serializer.uint32(obj.tactile_matrix.length, buffer, bufferOffset);
    obj.tactile_matrix.forEach((val) => {
      bufferOffset = TactileMatrix.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TactileSensor
    let len;
    let data = new TactileSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tactile_matrix]
    // Deserialize array length for message field [tactile_matrix]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tactile_matrix = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tactile_matrix[i] = TactileMatrix.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tactile_matrix.forEach((val) => {
      length += TactileMatrix.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'schunk_sdh/TactileSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6176a03c00cccf1b8efd3037de0d45d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #tactile sensor data in 2D grid
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TactileSensor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tactile_matrix !== undefined) {
      resolved.tactile_matrix = new Array(msg.tactile_matrix.length);
      for (let i = 0; i < resolved.tactile_matrix.length; ++i) {
        resolved.tactile_matrix[i] = TactileMatrix.Resolve(msg.tactile_matrix[i]);
      }
    }
    else {
      resolved.tactile_matrix = []
    }

    return resolved;
    }
};

module.exports = TactileSensor;
