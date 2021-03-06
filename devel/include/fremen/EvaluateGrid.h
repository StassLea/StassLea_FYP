// Generated by gencpp from file fremen/EvaluateGrid.msg
// DO NOT EDIT!


#ifndef FREMEN_MESSAGE_EVALUATEGRID_H
#define FREMEN_MESSAGE_EVALUATEGRID_H

#include <ros/service_traits.h>


#include <fremen/EvaluateGridRequest.h>
#include <fremen/EvaluateGridResponse.h>


namespace fremen
{

struct EvaluateGrid
{

typedef EvaluateGridRequest Request;
typedef EvaluateGridResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EvaluateGrid
} // namespace fremen


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::fremen::EvaluateGrid > {
  static const char* value()
  {
    return "cec85680426a669ab5e68b203fa0b830";
  }

  static const char* value(const ::fremen::EvaluateGrid&) { return value(); }
};

template<>
struct DataType< ::fremen::EvaluateGrid > {
  static const char* value()
  {
    return "fremen/EvaluateGrid";
  }

  static const char* value(const ::fremen::EvaluateGrid&) { return value(); }
};


// service_traits::MD5Sum< ::fremen::EvaluateGridRequest> should match 
// service_traits::MD5Sum< ::fremen::EvaluateGrid > 
template<>
struct MD5Sum< ::fremen::EvaluateGridRequest>
{
  static const char* value()
  {
    return MD5Sum< ::fremen::EvaluateGrid >::value();
  }
  static const char* value(const ::fremen::EvaluateGridRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::fremen::EvaluateGridRequest> should match 
// service_traits::DataType< ::fremen::EvaluateGrid > 
template<>
struct DataType< ::fremen::EvaluateGridRequest>
{
  static const char* value()
  {
    return DataType< ::fremen::EvaluateGrid >::value();
  }
  static const char* value(const ::fremen::EvaluateGridRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::fremen::EvaluateGridResponse> should match 
// service_traits::MD5Sum< ::fremen::EvaluateGrid > 
template<>
struct MD5Sum< ::fremen::EvaluateGridResponse>
{
  static const char* value()
  {
    return MD5Sum< ::fremen::EvaluateGrid >::value();
  }
  static const char* value(const ::fremen::EvaluateGridResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::fremen::EvaluateGridResponse> should match 
// service_traits::DataType< ::fremen::EvaluateGrid > 
template<>
struct DataType< ::fremen::EvaluateGridResponse>
{
  static const char* value()
  {
    return DataType< ::fremen::EvaluateGrid >::value();
  }
  static const char* value(const ::fremen::EvaluateGridResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FREMEN_MESSAGE_EVALUATEGRID_H
