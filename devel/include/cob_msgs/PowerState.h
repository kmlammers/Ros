// Generated by gencpp from file cob_msgs/PowerState.msg
// DO NOT EDIT!


#ifndef COB_MSGS_MESSAGE_POWERSTATE_H
#define COB_MSGS_MESSAGE_POWERSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace cob_msgs
{
template <class ContainerAllocator>
struct PowerState_
{
  typedef PowerState_<ContainerAllocator> Type;

  PowerState_()
    : header()
    , voltage(0.0)
    , current(0.0)
    , power_consumption(0.0)
    , remaining_capacity(0.0)
    , relative_remaining_capacity(0.0)
    , charging(false)
    , time_remaining(0.0)
    , temperature(0.0)  {
    }
  PowerState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , voltage(0.0)
    , current(0.0)
    , power_consumption(0.0)
    , remaining_capacity(0.0)
    , relative_remaining_capacity(0.0)
    , charging(false)
    , time_remaining(0.0)
    , temperature(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _voltage_type;
  _voltage_type voltage;

   typedef double _current_type;
  _current_type current;

   typedef double _power_consumption_type;
  _power_consumption_type power_consumption;

   typedef double _remaining_capacity_type;
  _remaining_capacity_type remaining_capacity;

   typedef double _relative_remaining_capacity_type;
  _relative_remaining_capacity_type relative_remaining_capacity;

   typedef uint8_t _charging_type;
  _charging_type charging;

   typedef double _time_remaining_type;
  _time_remaining_type time_remaining;

   typedef double _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::cob_msgs::PowerState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::PowerState_<ContainerAllocator> const> ConstPtr;

}; // struct PowerState_

typedef ::cob_msgs::PowerState_<std::allocator<void> > PowerState;

typedef boost::shared_ptr< ::cob_msgs::PowerState > PowerStatePtr;
typedef boost::shared_ptr< ::cob_msgs::PowerState const> PowerStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cob_msgs::PowerState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cob_msgs::PowerState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'cob_msgs': ['/home/lammers/Documents/ros/src/cob_common/cob_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cob_msgs::PowerState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cob_msgs::PowerState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_msgs::PowerState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_msgs::PowerState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_msgs::PowerState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_msgs::PowerState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::PowerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "70361e18e36187b93dab6d6ec8ca15e4";
  }

  static const char* value(const ::cob_msgs::PowerState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x70361e18e36187b9ULL;
  static const uint64_t static_value2 = 0x3dab6d6ec8ca15e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::PowerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cob_msgs/PowerState";
  }

  static const char* value(const ::cob_msgs::PowerState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::PowerState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message communicates the state of the power system.\n\
Header header\n\
float64 voltage                     # [V]\n\
float64 current                     # [A]\n\
float64 power_consumption           # [W] can only be calculated if not charging\n\
float64 remaining_capacity          # [Ah]\n\
float64 relative_remaining_capacity # [0..100] percent of maximum capacity (parameter max_capacity)\n\
bool charging                       # flag if robot is connected to external power or not\n\
float64 time_remaining              # [h] estimated time to empty or fully charged\n\
float64 temperature                 # [Celsius] temperature of the battery\n\
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
";
  }

  static const char* value(const ::cob_msgs::PowerState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cob_msgs::PowerState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.voltage);
      stream.next(m.current);
      stream.next(m.power_consumption);
      stream.next(m.remaining_capacity);
      stream.next(m.relative_remaining_capacity);
      stream.next(m.charging);
      stream.next(m.time_remaining);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PowerState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::PowerState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cob_msgs::PowerState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "voltage: ";
    Printer<double>::stream(s, indent + "  ", v.voltage);
    s << indent << "current: ";
    Printer<double>::stream(s, indent + "  ", v.current);
    s << indent << "power_consumption: ";
    Printer<double>::stream(s, indent + "  ", v.power_consumption);
    s << indent << "remaining_capacity: ";
    Printer<double>::stream(s, indent + "  ", v.remaining_capacity);
    s << indent << "relative_remaining_capacity: ";
    Printer<double>::stream(s, indent + "  ", v.relative_remaining_capacity);
    s << indent << "charging: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.charging);
    s << indent << "time_remaining: ";
    Printer<double>::stream(s, indent + "  ", v.time_remaining);
    s << indent << "temperature: ";
    Printer<double>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_POWERSTATE_H
