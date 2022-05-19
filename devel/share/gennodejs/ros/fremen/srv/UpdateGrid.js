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

class UpdateGridRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapname = null;
      this.order = null;
      this.precision = null;
      this.lossy = null;
    }
    else {
      if (initObj.hasOwnProperty('mapname')) {
        this.mapname = initObj.mapname
      }
      else {
        this.mapname = '';
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
      if (initObj.hasOwnProperty('precision')) {
        this.precision = initObj.precision
      }
      else {
        this.precision = 0.0;
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
    // Serializes a message object of type UpdateGridRequest
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.int32(obj.order, buffer, bufferOffset);
    // Serialize message field [precision]
    bufferOffset = _serializer.float32(obj.precision, buffer, bufferOffset);
    // Serialize message field [lossy]
    bufferOffset = _serializer.bool(obj.lossy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateGridRequest
    let len;
    let data = new UpdateGridRequest(null);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [precision]
    data.precision = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lossy]
    data.lossy = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapname.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/UpdateGridRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '052e23eecbb3e5588e343621f460e6c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapname
    int32 order
    float32 precision
    bool lossy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateGridRequest(null);
    if (msg.mapname !== undefined) {
      resolved.mapname = msg.mapname;
    }
    else {
      resolved.mapname = ''
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    if (msg.precision !== undefined) {
      resolved.precision = msg.precision;
    }
    else {
      resolved.precision = 0.0
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

class UpdateGridResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.allError = null;
      this.nonemptyError = null;
      this.dynamicError = null;
      this.size = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('allError')) {
        this.allError = initObj.allError
      }
      else {
        this.allError = 0.0;
      }
      if (initObj.hasOwnProperty('nonemptyError')) {
        this.nonemptyError = initObj.nonemptyError
      }
      else {
        this.nonemptyError = 0.0;
      }
      if (initObj.hasOwnProperty('dynamicError')) {
        this.dynamicError = initObj.dynamicError
      }
      else {
        this.dynamicError = 0.0;
      }
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
    // Serializes a message object of type UpdateGridResponse
    // Serialize message field [allError]
    bufferOffset = _serializer.float32(obj.allError, buffer, bufferOffset);
    // Serialize message field [nonemptyError]
    bufferOffset = _serializer.float32(obj.nonemptyError, buffer, bufferOffset);
    // Serialize message field [dynamicError]
    bufferOffset = _serializer.float32(obj.dynamicError, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int64(obj.size, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateGridResponse
    let len;
    let data = new UpdateGridResponse(null);
    // Deserialize message field [allError]
    data.allError = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nonemptyError]
    data.nonemptyError = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dynamicError]
    data.dynamicError = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/UpdateGridResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2be2b95dcbfa6dd0565a9eae4ac32d50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 allError
    float32 nonemptyError
    float32 dynamicError
    int64 size
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateGridResponse(null);
    if (msg.allError !== undefined) {
      resolved.allError = msg.allError;
    }
    else {
      resolved.allError = 0.0
    }

    if (msg.nonemptyError !== undefined) {
      resolved.nonemptyError = msg.nonemptyError;
    }
    else {
      resolved.nonemptyError = 0.0
    }

    if (msg.dynamicError !== undefined) {
      resolved.dynamicError = msg.dynamicError;
    }
    else {
      resolved.dynamicError = 0.0
    }

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
  Request: UpdateGridRequest,
  Response: UpdateGridResponse,
  md5sum() { return 'ec761d237f96cedb8fde2a090de101cc'; },
  datatype() { return 'fremen/UpdateGrid'; }
};
