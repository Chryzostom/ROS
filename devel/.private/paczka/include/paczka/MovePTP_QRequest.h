// Generated by gencpp from file paczka/MovePTP_QRequest.msg
// DO NOT EDIT!


#ifndef PACZKA_MESSAGE_MOVEPTP_QREQUEST_H
#define PACZKA_MESSAGE_MOVEPTP_QREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace paczka
{
template <class ContainerAllocator>
struct MovePTP_QRequest_
{
  typedef MovePTP_QRequest_<ContainerAllocator> Type;

  MovePTP_QRequest_()
    : q()  {
    }
  MovePTP_QRequest_(const ContainerAllocator& _alloc)
    : q(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _q_type;
  _q_type q;





  typedef boost::shared_ptr< ::paczka::MovePTP_QRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::paczka::MovePTP_QRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MovePTP_QRequest_

typedef ::paczka::MovePTP_QRequest_<std::allocator<void> > MovePTP_QRequest;

typedef boost::shared_ptr< ::paczka::MovePTP_QRequest > MovePTP_QRequestPtr;
typedef boost::shared_ptr< ::paczka::MovePTP_QRequest const> MovePTP_QRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::paczka::MovePTP_QRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::paczka::MovePTP_QRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::paczka::MovePTP_QRequest_<ContainerAllocator1> & lhs, const ::paczka::MovePTP_QRequest_<ContainerAllocator2> & rhs)
{
  return lhs.q == rhs.q;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::paczka::MovePTP_QRequest_<ContainerAllocator1> & lhs, const ::paczka::MovePTP_QRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace paczka

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::paczka::MovePTP_QRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::paczka::MovePTP_QRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::paczka::MovePTP_QRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c86974d06038f368935285057a53691";
  }

  static const char* value(const ::paczka::MovePTP_QRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c86974d06038f36ULL;
  static const uint64_t static_value2 = 0x8935285057a53691ULL;
};

template<class ContainerAllocator>
struct DataType< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "paczka/MovePTP_QRequest";
  }

  static const char* value(const ::paczka::MovePTP_QRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] q\n"
;
  }

  static const char* value(const ::paczka::MovePTP_QRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MovePTP_QRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::paczka::MovePTP_QRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::paczka::MovePTP_QRequest_<ContainerAllocator>& v)
  {
    s << indent << "q[]" << std::endl;
    for (size_t i = 0; i < v.q.size(); ++i)
    {
      s << indent << "  q[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.q[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACZKA_MESSAGE_MOVEPTP_QREQUEST_H
