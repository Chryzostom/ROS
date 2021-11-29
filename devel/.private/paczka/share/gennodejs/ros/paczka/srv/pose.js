// Auto-generated. Do not edit!

// (in-package paczka.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tryb = null;
      this.q = null;
    }
    else {
      if (initObj.hasOwnProperty('tryb')) {
        this.tryb = initObj.tryb
      }
      else {
        this.tryb = '';
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseRequest
    // Serialize message field [tryb]
    bufferOffset = _serializer.string(obj.tryb, buffer, bufferOffset);
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float32(obj.q, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseRequest
    let len;
    let data = new poseRequest(null);
    // Deserialize message field [tryb]
    data.tryb = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tryb.length;
    length += 4 * object.q.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'paczka/poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df30f7cddaf0839095c2022c165dd409';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tryb
    float32[] q
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseRequest(null);
    if (msg.tryb !== undefined) {
      resolved.tryb = msg.tryb;
    }
    else {
      resolved.tryb = ''
    }

    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = []
    }

    return resolved;
    }
};

class poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poseResponse
    let len;
    let data = new poseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'paczka/poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: poseRequest,
  Response: poseResponse,
  md5sum() { return 'df30f7cddaf0839095c2022c165dd409'; },
  datatype() { return 'paczka/pose'; }
};
