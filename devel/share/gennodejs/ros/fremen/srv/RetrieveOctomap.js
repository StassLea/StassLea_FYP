// Auto-generated. Do not edit!

// (in-package fremen.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RetrieveOctomapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapname = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('mapname')) {
        this.mapname = initObj.mapname
      }
      else {
        this.mapname = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RetrieveOctomapRequest
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float64(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RetrieveOctomapRequest
    let len;
    let data = new RetrieveOctomapRequest(null);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapname.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/RetrieveOctomapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c3c12589a7ea3e2551c7eb65f6e5b33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapname
    float64 stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RetrieveOctomapRequest(null);
    if (msg.mapname !== undefined) {
      resolved.mapname = msg.mapname;
    }
    else {
      resolved.mapname = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0.0
    }

    return resolved;
    }
};

class RetrieveOctomapResponse {
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
    // Serializes a message object of type RetrieveOctomapResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RetrieveOctomapResponse
    let len;
    let data = new RetrieveOctomapResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/RetrieveOctomapResponse';
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
    const resolved = new RetrieveOctomapResponse(null);
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
  Request: RetrieveOctomapRequest,
  Response: RetrieveOctomapResponse,
  md5sum() { return 'c6c457df6363bb6c3daef5518f11f06a'; },
  datatype() { return 'fremen/RetrieveOctomap'; }
};
