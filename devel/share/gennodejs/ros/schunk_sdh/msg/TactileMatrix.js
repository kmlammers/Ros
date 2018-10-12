// Auto-generated. Do not edit!

// (in-package schunk_sdh.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TactileMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.matrix_id = null;
      this.cells_x = null;
      this.cells_y = null;
      this.tactile_array = null;
    }
    else {
      if (initObj.hasOwnProperty('matrix_id')) {
        this.matrix_id = initObj.matrix_id
      }
      else {
        this.matrix_id = 0;
      }
      if (initObj.hasOwnProperty('cells_x')) {
        this.cells_x = initObj.cells_x
      }
      else {
        this.cells_x = 0;
      }
      if (initObj.hasOwnProperty('cells_y')) {
        this.cells_y = initObj.cells_y
      }
      else {
        this.cells_y = 0;
      }
      if (initObj.hasOwnProperty('tactile_array')) {
        this.tactile_array = initObj.tactile_array
      }
      else {
        this.tactile_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TactileMatrix
    // Serialize message field [matrix_id]
    bufferOffset = _serializer.uint32(obj.matrix_id, buffer, bufferOffset);
    // Serialize message field [cells_x]
    bufferOffset = _serializer.int16(obj.cells_x, buffer, bufferOffset);
    // Serialize message field [cells_y]
    bufferOffset = _serializer.int16(obj.cells_y, buffer, bufferOffset);
    // Serialize message field [tactile_array]
    bufferOffset = _arraySerializer.int16(obj.tactile_array, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TactileMatrix
    let len;
    let data = new TactileMatrix(null);
    // Deserialize message field [matrix_id]
    data.matrix_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cells_x]
    data.cells_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cells_y]
    data.cells_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [tactile_array]
    data.tactile_array = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.tactile_array.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'schunk_sdh/TactileMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab718b6c1d4d719110707994d2e325e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TactileMatrix(null);
    if (msg.matrix_id !== undefined) {
      resolved.matrix_id = msg.matrix_id;
    }
    else {
      resolved.matrix_id = 0
    }

    if (msg.cells_x !== undefined) {
      resolved.cells_x = msg.cells_x;
    }
    else {
      resolved.cells_x = 0
    }

    if (msg.cells_y !== undefined) {
      resolved.cells_y = msg.cells_y;
    }
    else {
      resolved.cells_y = 0
    }

    if (msg.tactile_array !== undefined) {
      resolved.tactile_array = msg.tactile_array;
    }
    else {
      resolved.tactile_array = []
    }

    return resolved;
    }
};

module.exports = TactileMatrix;
