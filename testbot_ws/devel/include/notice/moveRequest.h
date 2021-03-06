// Generated by gencpp from file notice/moveRequest.msg
// DO NOT EDIT!


#ifndef NOTICE_MESSAGE_MOVEREQUEST_H
#define NOTICE_MESSAGE_MOVEREQUEST_H


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
struct moveRequest_
{
  typedef moveRequest_<ContainerAllocator> Type;

  moveRequest_()
    : words()  {
    }
  moveRequest_(const ContainerAllocator& _alloc)
    : words(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _words_type;
  _words_type words;




  typedef boost::shared_ptr< ::notice::moveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::notice::moveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct moveRequest_

typedef ::notice::moveRequest_<std::allocator<void> > moveRequest;

typedef boost::shared_ptr< ::notice::moveRequest > moveRequestPtr;
typedef boost::shared_ptr< ::notice::moveRequest const> moveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::notice::moveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::notice::moveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace notice

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'notice': ['/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::notice::moveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::notice::moveRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::moveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::moveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::notice::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f897d3845272d18053a750c1cfb862a";
  }

  static const char* value(const ::notice::moveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f897d3845272d18ULL;
  static const uint64_t static_value2 = 0x053a750c1cfb862aULL;
};

template<class ContainerAllocator>
struct DataType< ::notice::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "notice/moveRequest";
  }

  static const char* value(const ::notice::moveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::notice::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
string words\n\
\n\
";
  }

  static const char* value(const ::notice::moveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::notice::moveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.words);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::notice::moveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::notice::moveRequest_<ContainerAllocator>& v)
  {
    s << indent << "words: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.words);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOTICE_MESSAGE_MOVEREQUEST_H
