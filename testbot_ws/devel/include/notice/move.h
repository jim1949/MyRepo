// Generated by gencpp from file notice/move.msg
// DO NOT EDIT!


#ifndef NOTICE_MESSAGE_MOVE_H
#define NOTICE_MESSAGE_MOVE_H

#include <ros/service_traits.h>


#include <notice/moveRequest.h>
#include <notice/moveResponse.h>


namespace notice
{

struct move
{

typedef moveRequest Request;
typedef moveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct move
} // namespace notice


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::notice::move > {
  static const char* value()
  {
    return "58903d21a3264f3408d79ba79e9f7c7e";
  }

  static const char* value(const ::notice::move&) { return value(); }
};

template<>
struct DataType< ::notice::move > {
  static const char* value()
  {
    return "notice/move";
  }

  static const char* value(const ::notice::move&) { return value(); }
};


// service_traits::MD5Sum< ::notice::moveRequest> should match 
// service_traits::MD5Sum< ::notice::move > 
template<>
struct MD5Sum< ::notice::moveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::notice::move >::value();
  }
  static const char* value(const ::notice::moveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::notice::moveRequest> should match 
// service_traits::DataType< ::notice::move > 
template<>
struct DataType< ::notice::moveRequest>
{
  static const char* value()
  {
    return DataType< ::notice::move >::value();
  }
  static const char* value(const ::notice::moveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::notice::moveResponse> should match 
// service_traits::MD5Sum< ::notice::move > 
template<>
struct MD5Sum< ::notice::moveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::notice::move >::value();
  }
  static const char* value(const ::notice::moveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::notice::moveResponse> should match 
// service_traits::DataType< ::notice::move > 
template<>
struct DataType< ::notice::moveResponse>
{
  static const char* value()
  {
    return DataType< ::notice::move >::value();
  }
  static const char* value(const ::notice::moveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NOTICE_MESSAGE_MOVE_H
