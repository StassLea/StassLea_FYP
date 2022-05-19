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

class EstimateOctomapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mapname = null;
      this.stamp = null;
      this.minProbability = null;
      this.maxProbability = null;
      this.morphology = null;
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
      if (initObj.hasOwnProperty('minProbability')) {
        this.minProbability = initObj.minProbability
      }
      else {
        this.minProbability = 0.0;
      }
      if (initObj.hasOwnProperty('maxProbability')) {
        this.maxProbability = initObj.maxProbability
      }
      else {
        this.maxProbability = 0.0;
      }
      if (initObj.hasOwnProperty('morphology')) {
        this.morphology = initObj.morphology
      }
      else {
        this.morphology = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimateOctomapRequest
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [minProbability]
    bufferOffset = _serializer.float64(obj.minProbability, buffer, bufferOffset);
    // Serialize message field [maxProbability]
    bufferOffset = _serializer.float64(obj.maxProbability, buffer, bufferOffset);
    // Serialize message field [morphology]
    bufferOffset = _serializer.int8(obj.morphology, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateOctomapRequest
    let len;
    let data = new EstimateOctomapRequest(null);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minProbability]
    data.minProbability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxProbability]
    data.maxProbability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [morphology]
    data.morphology = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mapname.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/EstimateOctomapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27d066e39da9c57b6401ca771b5d0994';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mapname
    float64 stamp
    float64 minProbability
    float64 maxProbability
    int8 morphology
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EstimateOctomapRequest(null);
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

    if (msg.minProbability !== undefined) {
      resolved.minProbability = msg.minProbability;
    }
    else {
      resolved.minProbability = 0.0
    }

    if (msg.maxProbability !== undefined) {
      resolved.maxProbability = msg.maxProbability;
    }
    else {
      resolved.maxProbability = 0.0
    }

    if (msg.morphology !== undefined) {
      resolved.morphology = msg.morphology;
    }
    else {
      resolved.morphology = 0
    }

    return resolved;
    }
};

class EstimateOctomapResponse {
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
    // Serializes a message object of type EstimateOctomapResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateOctomapResponse
    let len;
    let data = new EstimateOctomapResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fremen/EstimateOctomapResponse';
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
    const resolved = new EstimateOctomapResponse(null);
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
  Request: EstimateOctomapRequest,
  Response: EstimateOctomapResponse,
  md5sum() { return '3c884c8dd8df759b653740cba1c215ad'; },
  datatype() { return 'fremen/EstimateOctomap'; }
};
