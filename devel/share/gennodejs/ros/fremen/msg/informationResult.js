// Auto-generated. Do not edit!

// (in-package fremen.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class informationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sucessfull = null;
    }
    else {
      if (initObj.hasOwnProperty('sucessfull')) {
        this.sucessfull = initObj.sucessfull
      }
      else {
        this.sucessfull = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type informationResult
    // Serialize message field [sucessfull]
    bufferOffset = _serializer.bool(obj.sucessfull, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type informationResult
    let len;
    let data = new informationResult(null);
    // Deserialize message field [sucessfull]
    data.sucessfull = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fremen/informationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50a3c4d0f2f65351e7b4575a2e529624';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    bool sucessfull
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new informationResult(null);
    if (msg.sucessfull !== undefined) {
      resolved.sucessfull = msg.sucessfull;
    }
    else {
      resolved.sucessfull = false
    }

    return resolved;
    }
};

module.exports = informationResult;
