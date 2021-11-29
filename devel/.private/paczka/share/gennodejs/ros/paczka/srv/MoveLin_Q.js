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

class MoveLin_QRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q = null;
    }
    else {
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveLin_QRequest
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float32(obj.q, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveLin_QRequest
    let len;
    let data = new MoveLin_QRequest(null);
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.q.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'paczka/MoveLin_QRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c86974d06038f368935285057a53691';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] q
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveLin_QRequest(null);
    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = []
    }

    return resolved;
    }
};

class MoveLin_QResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveLin_QResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveLin_QResponse
    let len;
    let data = new MoveLin_QResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'paczka/MoveLin_QResponse';
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
    const resolved = new MoveLin_QResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MoveLin_QRequest,
  Response: MoveLin_QResponse,
  md5sum() { return '2c86974d06038f368935285057a53691'; },
  datatype() { return 'paczka/MoveLin_Q'; }
};