// Generated by gencpp from file fremen/EstimateOctomap.msg
// DO NOT EDIT!


#ifndef FREMEN_MESSAGE_ESTIMATEOCTOMAP_H
#define FREMEN_MESSAGE_ESTIMATEOCTOMAP_H

#include <ros/service_traits.h>


#include <fremen/EstimateOctomapRequest.h>
#include <fremen/EstimateOctomapResponse.h>


namespace fremen
{

struct EstimateOctomap
{

typedef EstimateOctomapRequest Request;
typedef EstimateOctomapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EstimateOctomap
} // namespace fremen


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fremen::EstimateOctomap > {
  static const char* value()
  {
    return "3c884c8dd8df759b653740cba1c215ad";
  }

  static const char* value(const ::fremen::EstimateOctomap&) { return value(); }
};

template<>
struct DataType< ::fremen::EstimateOctomap > {
  static const char* value()
  {
    return "fremen/EstimateOctomap";
  }

  static const char* value(const ::fremen::EstimateOctomap&) { return value(); }
};


// service_traits::MD5Sum< ::fremen::EstimateOctomapRequest> should match 
// service_traits::MD5Sum< ::fremen::EstimateOctomap > 
template<>
struct MD5Sum< ::fremen::EstimateOctomapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fremen::EstimateOctomap >::value();
  }
  static const char* value(const ::fremen::EstimateOctomapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fremen::EstimateOctomapRequest> should match 
// service_traits::DataType< ::fremen::EstimateOctomap > 
template<>
struct DataType< ::fremen::EstimateOctomapRequest>
{
  static const char* value()
  {
    return DataType< ::fremen::EstimateOctomap >::value();
  }
  static const char* value(const ::fremen::EstimateOctomapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fremen::EstimateOctomapResponse> should match 
// service_traits::MD5Sum< ::fremen::EstimateOctomap > 
template<>
struct MD5Sum< ::fremen::EstimateOctomapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fremen::EstimateOctomap >::value();
  }
  static const char* value(const ::fremen::EstimateOctomapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fremen::EstimateOctomapResponse> should match 
// service_traits::DataType< ::fremen::EstimateOctomap > 
template<>
struct DataType< ::fremen::EstimateOctomapResponse>
{
  static const char* value()
  {
    return DataType< ::fremen::EstimateOctomap >::value();
  }
  static const char* value(const ::fremen::EstimateOctomapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FREMEN_MESSAGE_ESTIMATEOCTOMAP_H
