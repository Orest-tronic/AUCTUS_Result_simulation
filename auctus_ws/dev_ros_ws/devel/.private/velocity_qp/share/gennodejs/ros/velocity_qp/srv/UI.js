// Auto-generated. Do not edit!

// (in-package velocity_qp.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.play_traj = null;
      this.publish_traj = null;
      this.build_traj = null;
      this.exit_ = null;
    }
    else {
      if (initObj.hasOwnProperty('play_traj')) {
        this.play_traj = initObj.play_traj
      }
      else {
        this.play_traj = false;
      }
      if (initObj.hasOwnProperty('publish_traj')) {
        this.publish_traj = initObj.publish_traj
      }
      else {
        this.publish_traj = false;
      }
      if (initObj.hasOwnProperty('build_traj')) {
        this.build_traj = initObj.build_traj
      }
      else {
        this.build_traj = false;
      }
      if (initObj.hasOwnProperty('exit_')) {
        this.exit_ = initObj.exit_
      }
      else {
        this.exit_ = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UIRequest
    // Serialize message field [play_traj]
    bufferOffset = _serializer.bool(obj.play_traj, buffer, bufferOffset);
    // Serialize message field [publish_traj]
    bufferOffset = _serializer.bool(obj.publish_traj, buffer, bufferOffset);
    // Serialize message field [build_traj]
    bufferOffset = _serializer.bool(obj.build_traj, buffer, bufferOffset);
    // Serialize message field [exit_]
    bufferOffset = _serializer.bool(obj.exit_, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UIRequest
    let len;
    let data = new UIRequest(null);
    // Deserialize message field [play_traj]
    data.play_traj = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [publish_traj]
    data.publish_traj = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [build_traj]
    data.build_traj = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [exit_]
    data.exit_ = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'velocity_qp/UIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd91bc99162217c62d1dcd8dc3f3302f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool play_traj
    bool publish_traj 
    bool build_traj
    bool exit_
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UIRequest(null);
    if (msg.play_traj !== undefined) {
      resolved.play_traj = msg.play_traj;
    }
    else {
      resolved.play_traj = false
    }

    if (msg.publish_traj !== undefined) {
      resolved.publish_traj = msg.publish_traj;
    }
    else {
      resolved.publish_traj = false
    }

    if (msg.build_traj !== undefined) {
      resolved.build_traj = msg.build_traj;
    }
    else {
      resolved.build_traj = false
    }

    if (msg.exit_ !== undefined) {
      resolved.exit_ = msg.exit_;
    }
    else {
      resolved.exit_ = false
    }

    return resolved;
    }
};

class UIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UIResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UIResponse
    let len;
    let data = new UIResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'velocity_qp/UIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UIResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UIRequest,
  Response: UIResponse,
  md5sum() { return '816b01201e029471b4dd1aa5ddfe4270'; },
  datatype() { return 'velocity_qp/UI'; }
};
