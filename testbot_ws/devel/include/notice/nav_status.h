// Generated by gencpp from file notice/nav_status.msg
// DO NOT EDIT!


#ifndef NOTICE_MESSAGE_NAV_STATUS_H
#define NOTICE_MESSAGE_NAV_STATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose.h>

namespace notice
{
template <class ContainerAllocator>
struct nav_status_
{
  typedef nav_status_<ContainerAllocator> Type;

  nav_status_()
    : head()
    , noticeTypeLevel()
    , noticeType()
    , noticeDataFields()
    , ExpectedPosition()
    , worldPosition()  {
    }
  nav_status_(const ContainerAllocator& _alloc)
    : head(_alloc)
    , noticeTypeLevel(_alloc)
    , noticeType(_alloc)
    , noticeDataFields(_alloc)
    , ExpectedPosition(_alloc)
    , worldPosition(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _head_type;
  _head_type head;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _noticeTypeLevel_type;
  _noticeTypeLevel_type noticeTypeLevel;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _noticeType_type;
  _noticeType_type noticeType;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _noticeDataFields_type;
  _noticeDataFields_type noticeDataFields;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _ExpectedPosition_type;
  _ExpectedPosition_type ExpectedPosition;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _worldPosition_type;
  _worldPosition_type worldPosition;




  typedef boost::shared_ptr< ::notice::nav_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::notice::nav_status_<ContainerAllocator> const> ConstPtr;

}; // struct nav_status_

typedef ::notice::nav_status_<std::allocator<void> > nav_status;

typedef boost::shared_ptr< ::notice::nav_status > nav_statusPtr;
typedef boost::shared_ptr< ::notice::nav_status const> nav_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::notice::nav_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::notice::nav_status_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::notice::nav_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::notice::nav_status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::nav_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::notice::nav_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::nav_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::notice::nav_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::notice::nav_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13261ca54d3655f9b32e5b0b779d7089";
  }

  static const char* value(const ::notice::nav_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13261ca54d3655f9ULL;
  static const uint64_t static_value2 = 0xb32e5b0b779d7089ULL;
};

template<class ContainerAllocator>
struct DataType< ::notice::nav_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "notice/nav_status";
  }

  static const char* value(const ::notice::nav_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::notice::nav_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header head\n\
string noticeTypeLevel\n\
string noticeType\n\
string noticeDataFields\n\
geometry_msgs/Pose2D ExpectedPosition\n\
geometry_msgs/Pose worldPosition\n\
\n\
\n\
  \n\
  \n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::notice::nav_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::notice::nav_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.head);
      stream.next(m.noticeTypeLevel);
      stream.next(m.noticeType);
      stream.next(m.noticeDataFields);
      stream.next(m.ExpectedPosition);
      stream.next(m.worldPosition);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct nav_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::notice::nav_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::notice::nav_status_<ContainerAllocator>& v)
  {
    s << indent << "head: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.head);
    s << indent << "noticeTypeLevel: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.noticeTypeLevel);
    s << indent << "noticeType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.noticeType);
    s << indent << "noticeDataFields: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.noticeDataFields);
    s << indent << "ExpectedPosition: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.ExpectedPosition);
    s << indent << "worldPosition: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.worldPosition);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOTICE_MESSAGE_NAV_STATUS_H