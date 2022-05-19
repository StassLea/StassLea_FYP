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

class SaveGridRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapname = null;
      this.filename = null;
      this.order = null;
      this.lossy = null;
    }
    else {
      if (initObj.hasOwnProperty('mapname')) {
        this.mapname = initObj.mapname
      }
      else {
        this.mapname = '';
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
      if (initObj.hasOwnProperty('lossy')) {
        this.lossy = initObj.lossy
      }
      else {
        this.lossy = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveGridRequest
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.int64(obj.order, buffer, bufferOffset);
    // Serialize message field [lossy]
    bufferOffset = _serializer.bool(obj.lossy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveGridRequest
    let len;
    let data = new SaveGridRequest(null);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lossy]
    data.lossy = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapname.length;
    length += object.filename.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/SaveGridRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '337d03d51d21a13513f09c8e984e8d9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapname
    string filename
    int64 order
    bool lossy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveGridRequest(null);
    if (msg.mapname !== undefined) {
      resolved.mapname = msg.mapname;
    }
    else {
      resolved.mapname = ''
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    if (msg.lossy !== undefined) {
      resolved.lossy = msg.lossy;
    }
    else {
      resolved.lossy = false
    }

    return resolved;
    }
};

class SaveGridResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveGridResponse
    // Serialize message field [size]
    bufferOffset = _serializer.int64(obj.size, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveGridResponse
    let len;
    let data = new SaveGridResponse(null);
    // Deserialize message field [size]
    data.size = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/SaveGridResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4436e3d8eaa438b4c165950dcfa74370';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 size
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveGridResponse(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

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
  Request: SaveGridRequest,
  Response: SaveGridResponse,
  md5sum() { return '485ca739c23c103eb4a0dc9cfd558e95'; },
  datatype() { return 'fremen/SaveGrid'; }
};
