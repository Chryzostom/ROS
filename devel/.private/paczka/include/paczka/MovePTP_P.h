// Generated by gencpp from file paczka/MovePTP_P.msg
// DO NOT EDIT!


#ifndef PACZKA_MESSAGE_MOVEPTP_P_H
#define PACZKA_MESSAGE_MOVEPTP_P_H

#include <ros/service_traits.h>


#include <paczka/MovePTP_PRequest.h>
#include <paczka/MovePTP_PResponse.h>


namespace paczka
{

struct MovePTP_P
{

typedef MovePTP_PRequest Request;
typedef MovePTP_PResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MovePTP_P
} // namespace paczka


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::paczka::MovePTP_P > {
  static const char* value()
  {
    return "2c86974d06038f368935285057a53691";
  }

  static const char* value(const ::paczka::MovePTP_P&) { return value(); }
};

template<>
struct DataType< ::paczka::MovePTP_P > {
  static const char* value()
  {
    return "paczka/MovePTP_P";
  }

  static const char* value(const ::paczka::MovePTP_P&) { return value(); }
};


// service_traits::MD5Sum< ::paczka::MovePTP_PRequest> should match
// service_traits::MD5Sum< ::paczka::MovePTP_P >
template<>
struct MD5Sum< ::paczka::MovePTP_PRequest>
{
  static const char* value()
  {
    return MD5Sum< ::paczka::MovePTP_P >::value();
  }
  static const char* value(const ::paczka::MovePTP_PRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::paczka::MovePTP_PRequest> should match
// service_traits::DataType< ::paczka::MovePTP_P >
template<>
struct DataType< ::paczka::MovePTP_PRequest>
{
  static const char* value()
  {
    return DataType< ::paczka::MovePTP_P >::value();
  }
  static const char* value(const ::paczka::MovePTP_PRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::paczka::MovePTP_PResponse> should match
// service_traits::MD5Sum< ::paczka::MovePTP_P >
template<>
struct MD5Sum< ::paczka::MovePTP_PResponse>
{
  static const char* value()
  {
    return MD5Sum< ::paczka::MovePTP_P >::value();
  }
  static const char* value(const ::paczka::MovePTP_PResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::paczka::MovePTP_PResponse> should match
// service_traits::DataType< ::paczka::MovePTP_P >
template<>
struct DataType< ::paczka::MovePTP_PResponse>
{
  static const char* value()
  {
    return DataType< ::paczka::MovePTP_P >::value();
  }
  static const char* value(const ::paczka::MovePTP_PResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PACZKA_MESSAGE_MOVEPTP_P_H
