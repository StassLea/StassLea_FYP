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

class froctomapGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_action = null;
      this.mapname = null;
      this.stamp = null;
      this.order = null;
      this.precision = null;
      this.lossy = null;
      this.minprobability = null;
      this.maxprobability = null;
      this.morphology = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('name_action')) {
        this.name_action = initObj.name_action
      }
      else {
        this.name_action = '';
      }
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
      if (initObj.hasOwnProperty('minprobability')) {
        this.minprobability = initObj.minprobability
      }
      else {
        this.minprobability = 0.0;
      }
      if (initObj.hasOwnProperty('maxprobability')) {
        this.maxprobability = initObj.maxprobability
      }
      else {
        this.maxprobability = 0.0;
      }
      if (initObj.hasOwnProperty('morphology')) {
        this.morphology = initObj.morphology
      }
      else {
        this.morphology = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type froctomapGoal
    // Serialize message field [name_action]
    bufferOffset = _serializer.string(obj.name_action, buffer, bufferOffset);
    // Serialize message field [mapname]
    bufferOffset = _serializer.string(obj.mapname, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.int64(obj.order, buffer, bufferOffset);
    // Serialize message field [precision]
    bufferOffset = _serializer.float64(obj.precision, buffer, bufferOffset);
    // Serialize message field [lossy]
    bufferOffset = _serializer.bool(obj.lossy, buffer, bufferOffset);
    // Serialize message field [minprobability]
    bufferOffset = _serializer.float64(obj.minprobability, buffer, bufferOffset);
    // Serialize message field [maxprobability]
    bufferOffset = _serializer.float64(obj.maxprobability, buffer, bufferOffset);
    // Serialize message field [morphology]
    bufferOffset = _serializer.int8(obj.morphology, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type froctomapGoal
    let len;
    let data = new froctomapGoal(null);
    // Deserialize message field [name_action]
    data.name_action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mapname]
    data.mapname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [precision]
    data.precision = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lossy]
    data.lossy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [minprobability]
    data.minprobability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxprobability]
    data.maxprobability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [morphology]
    data.morphology = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name_action.length;
    length += object.mapname.length;
    length += object.filename.length;
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fremen/froctomapGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd57d9b96da01473a02e5fb72ec45c690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the goal
    string name_action 	# update save predict recover_octomap estimate_octomap
    string mapname
    float64 stamp		# measurement time
    int64 order		# 0 - 100
    float64 precision	# 0.0 - 1.0
    bool lossy
    float64 minprobability  # 0.0 - 1.0
    float64 maxprobability	# 0.0 - 1.0
    int8 morphology 
    string filename	
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new froctomapGoal(null);
    if (msg.name_action !== undefined) {
      resolved.name_action = msg.name_action;
    }
    else {
      resolved.name_action = ''
    }

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

    if (msg.minprobability !== undefined) {
      resolved.minprobability = msg.minprobability;
    }
    else {
      resolved.minprobability = 0.0
    }

    if (msg.maxprobability !== undefined) {
      resolved.maxprobability = msg.maxprobability;
    }
    else {
      resolved.maxprobability = 0.0
    }

    if (msg.morphology !== undefined) {
      resolved.morphology = msg.morphology;
    }
    else {
      resolved.morphology = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

module.exports = froctomapGoal;
