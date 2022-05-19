// Generated by gencpp from file fremen/informationResult.msg
// DO NOT EDIT!


#ifndef FREMEN_MESSAGE_INFORMATIONRESULT_H
#define FREMEN_MESSAGE_INFORMATIONRESULT_H


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
struct informationResult_
{
  typedef informationResult_<ContainerAllocator> Type;

  informationResult_()
    : sucessfull(false)  {
    }
  informationResult_(const ContainerAllocator& _alloc)
    : sucessfull(false)  {
  (void)_alloc;
    }



   typedef uint8_t _sucessfull_type;
  _sucessfull_type sucessfull;





  typedef boost::shared_ptr< ::fremen::informationResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fremen::informationResult_<ContainerAllocator> const> ConstPtr;

}; // struct informationResult_

typedef ::fremen::informationResult_<std::allocator<void> > informationResult;

typedef boost::shared_ptr< ::fremen::informationResult > informationResultPtr;
typedef boost::shared_ptr< ::fremen::informationResult const> informationResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fremen::informationResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fremen::informationResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fremen

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'fremen': ['/home/stass/StassLea_FYP/devel/share/fremen/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fremen::informationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fremen::informationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fremen::informationResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fremen::informationResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fremen::informationResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fremen::informationResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fremen::informationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50a3c4d0f2f65351e7b4575a2e529624";
  }

  static const char* value(const ::fremen::informationResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50a3c4d0f2f65351ULL;
  static const uint64_t static_value2 = 0xe7b4575a2e529624ULL;
};

template<class ContainerAllocator>
struct DataType< ::fremen::informationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fremen/informationResult";
  }

  static const char* value(const ::fremen::informationResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fremen::informationResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the result\n\
bool sucessfull\n\
";
  }

  static const char* value(const ::fremen::informationResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fremen::informationResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sucessfull);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct informationResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fremen::informationResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fremen::informationResult_<ContainerAllocator>& v)
  {
    s << indent << "sucessfull: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sucessfull);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FREMEN_MESSAGE_INFORMATIONRESULT_H