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

class EvaluateGridRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapname = null;
      this.maxOrder = null;
    }
    else {
      if (initObj.hasOwnProperty('mapname')) {
        this.mapname = initObj.mapname
      }
      else {
        this.mapname = '';
      }
      if (initObj.hasOwnProperty('maxOrder')) {
        this.maxOrder = initObj.maxOrder
      }
      else {
        this.maxOrder = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EvaluateGridRequest
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [maxOrder]
    bufferOffset = _serializer.int32(obj.maxOrder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EvaluateGridRequest
    let len;
    let data = new EvaluateGridRequest(null);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maxOrder]
    data.maxOrder = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapname.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/EvaluateGridRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a15c307f0f10b9ea632c0efb4a30d10f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapname
    int32 maxOrder
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EvaluateGridRequest(null);
    if (msg.mapname !== undefined) {
      resolved.mapname = msg.mapname;
    }
    else {
      resolved.mapname = ''
    }

    if (msg.maxOrder !== undefined) {
      resolved.maxOrder = msg.maxOrder;
    }
    else {
      resolved.maxOrder = 0
    }

    return resolved;
    }
};

class EvaluateGridResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.allErrors = null;
      this.nonemptyErrors = null;
      this.dynamicErrors = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('allErrors')) {
        this.allErrors = initObj.allErrors
      }
      else {
        this.allErrors = [];
      }
      if (initObj.hasOwnProperty('nonemptyErrors')) {
        this.nonemptyErrors = initObj.nonemptyErrors
      }
      else {
        this.nonemptyErrors = [];
      }
      if (initObj.hasOwnProperty('dynamicErrors')) {
        this.dynamicErrors = initObj.dynamicErrors
      }
      else {
        this.dynamicErrors = [];
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
    // Serializes a message object of type EvaluateGridResponse
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    // Serialize message field [allErrors]
    bufferOffset = _arraySerializer.float32(obj.allErrors, buffer, bufferOffset, null);
    // Serialize message field [nonemptyErrors]
    bufferOffset = _arraySerializer.float32(obj.nonemptyErrors, buffer, bufferOffset, null);
    // Serialize message field [dynamicErrors]
    bufferOffset = _arraySerializer.float32(obj.dynamicErrors, buffer, bufferOffset, null);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EvaluateGridResponse
    let len;
    let data = new EvaluateGridResponse(null);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [allErrors]
    data.allErrors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [nonemptyErrors]
    data.nonemptyErrors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [dynamicErrors]
    data.dynamicErrors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.allErrors.length;
    length += 4 * object.nonemptyErrors.length;
    length += 4 * object.dynamicErrors.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/EvaluateGridResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9de3dcc9bc97c437c3575b0dc9820ffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 size
    float32[] allErrors
    float32[] nonemptyErrors
    float32[] dynamicErrors
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EvaluateGridResponse(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.allErrors !== undefined) {
      resolved.allErrors = msg.allErrors;
    }
    else {
      resolved.allErrors = []
    }

    if (msg.nonemptyErrors !== undefined) {
      resolved.nonemptyErrors = msg.nonemptyErrors;
    }
    else {
      resolved.nonemptyErrors = []
    }

    if (msg.dynamicErrors !== undefined) {
      resolved.dynamicErrors = msg.dynamicErrors;
    }
    else {
      resolved.dynamicErrors = []
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
  Request: EvaluateGridRequest,
  Response: EvaluateGridResponse,
  md5sum() { return 'cec85680426a669ab5e68b203fa0b830'; },
  datatype() { return 'fremen/EvaluateGrid'; }
};
