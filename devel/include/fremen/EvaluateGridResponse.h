// Generated by gencpp from file fremen/EvaluateGridResponse.msg
// DO NOT EDIT!


#ifndef FREMEN_MESSAGE_EVALUATEGRIDRESPONSE_H
#define FREMEN_MESSAGE_EVALUATEGRIDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fremen
{
template <class ContainerAllocator>
struct EvaluateGridResponse_
{
  typedef EvaluateGridResponse_<ContainerAllocator> Type;

  EvaluateGridResponse_()
    : size(0)
    , allErrors()
    , nonemptyErrors()
    , dynamicErrors()
    , result(false)  {
    }
  EvaluateGridResponse_(const ContainerAllocator& _alloc)
    : size(0)
    , allErrors(_alloc)
    , nonemptyErrors(_alloc)
    , dynamicErrors(_alloc)
    , result(false)  {
  (void)_alloc;
    }



   typedef int32_t _size_type;
  _size_type size;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _allErrors_type;
  _allErrors_type allErrors;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _nonemptyErrors_type;
  _nonemptyErrors_type nonemptyErrors;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _dynamicErrors_type;
  _dynamicErrors_type dynamicErrors;

   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::fremen::EvaluateGridResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fremen::EvaluateGridResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EvaluateGridResponse_

typedef ::fremen::EvaluateGridResponse_<std::allocator<void> > EvaluateGridResponse;

typedef boost::shared_ptr< ::fremen::EvaluateGridResponse > EvaluateGridResponsePtr;
typedef boost::shared_ptr< ::fremen::EvaluateGridResponse const> EvaluateGridResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fremen::EvaluateGridResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fremen::EvaluateGridResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fremen

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'fremen': ['/home/stass/StassLea_FYP/devel/share/fremen/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fremen::EvaluateGridResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fremen::EvaluateGridResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fremen::EvaluateGridResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9de3dcc9bc97c437c3575b0dc9820ffd";
  }

  static const char* value(const ::fremen::EvaluateGridResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9de3dcc9bc97c437ULL;
  static const uint64_t static_value2 = 0xc3575b0dc9820ffdULL;
};

template<class ContainerAllocator>
struct DataType< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fremen/EvaluateGridResponse";
  }

  static const char* value(const ::fremen::EvaluateGridResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 size\n\
float32[] allErrors\n\
float32[] nonemptyErrors\n\
float32[] dynamicErrors\n\
bool result\n\
\n\
";
  }

  static const char* value(const ::fremen::EvaluateGridResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.size);
      stream.next(m.allErrors);
      stream.next(m.nonemptyErrors);
      stream.next(m.dynamicErrors);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EvaluateGridResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fremen::EvaluateGridResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fremen::EvaluateGridResponse_<ContainerAllocator>& v)
  {
    s << indent << "size: ";
    Printer<int32_t>::stream(s, indent + "  ", v.size);
    s << indent << "allErrors[]" << std::endl;
    for (size_t i = 0; i < v.allErrors.size(); ++i)
    {
      s << indent << "  allErrors[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.allErrors[i]);
    }
    s << indent << "nonemptyErrors[]" << std::endl;
    for (size_t i = 0; i < v.nonemptyErrors.size(); ++i)
    {
      s << indent << "  nonemptyErrors[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.nonemptyErrors[i]);
    }
    s << indent << "dynamicErrors[]" << std::endl;
    for (size_t i = 0; i < v.dynamicErrors.size(); ++i)
    {
      s << indent << "  dynamicErrors[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.dynamicErrors[i]);
    }
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FREMEN_MESSAGE_EVALUATEGRIDRESPONSE_H