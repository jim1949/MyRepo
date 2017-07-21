// Generated by gencpp from file notice/moveResponse.msg
// DO NOT EDIT!


#ifndef NOTICE_MESSAGE_MOVERESPONSE_H
#define NOTICE_MESSAGE_MOVERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace notice
{
template <class ContainerAllocator>
struct moveResponse_
{
  typedef moveResponse_<ContainerAllocator> Type;

  moveResponse_()
    : count(0)  {
    }
  moveResponse_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef uint32_t _count_type;
  _count_type count;




  typedef boost::shared_ptr< ::notice::moveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::notice::moveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct moveResponse_

typedef ::notice::moveResponse_<std::allocator<void> > moveResponse;

typedef boost::shared_ptr< ::notice::moveResponse > moveResponsePtr;
typedef boost::shared_ptr< ::notice::moveResponse const> moveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::notice::moveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::notice::moveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace notice

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'notice': ['/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::notice::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::notice::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::moveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::moveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::notice::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac8b22eb02c1f433e0a55ee9aac59a18";
  }

  static const char* value(const ::notice::moveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac8b22eb02c1f433ULL;
  static const uint64_t static_value2 = 0xe0a55ee9aac59a18ULL;
};

template<class ContainerAllocator>
struct DataType< ::notice::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "notice/moveResponse";
  }

  static const char* value(const ::notice::moveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::notice::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
uint32 count\n\
";
  }

  static const char* value(const ::notice::moveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::notice::moveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::notice::moveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::notice::moveResponse_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOTICE_MESSAGE_MOVERESPONSE_H