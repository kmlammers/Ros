// Generated by gencpp from file cob_msgs/DashboardState.msg
// DO NOT EDIT!


#ifndef COB_MSGS_MESSAGE_DASHBOARDSTATE_H
#define COB_MSGS_MESSAGE_DASHBOARDSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <diagnostic_msgs/DiagnosticStatus.h>
#include <cob_msgs/PowerState.h>
#include <cob_msgs/EmergencyStopState.h>

namespace cob_msgs
{
template <class ContainerAllocator>
struct DashboardState_
{
  typedef DashboardState_<ContainerAllocator> Type;

  DashboardState_()
    : diagnostics_toplevel_state()
    , power_state()
    , emergency_stop_state()  {
    }
  DashboardState_(const ContainerAllocator& _alloc)
    : diagnostics_toplevel_state(_alloc)
    , power_state(_alloc)
    , emergency_stop_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::diagnostic_msgs::DiagnosticStatus_<ContainerAllocator>  _diagnostics_toplevel_state_type;
  _diagnostics_toplevel_state_type diagnostics_toplevel_state;

   typedef  ::cob_msgs::PowerState_<ContainerAllocator>  _power_state_type;
  _power_state_type power_state;

   typedef  ::cob_msgs::EmergencyStopState_<ContainerAllocator>  _emergency_stop_state_type;
  _emergency_stop_state_type emergency_stop_state;





  typedef boost::shared_ptr< ::cob_msgs::DashboardState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cob_msgs::DashboardState_<ContainerAllocator> const> ConstPtr;

}; // struct DashboardState_

typedef ::cob_msgs::DashboardState_<std::allocator<void> > DashboardState;

typedef boost::shared_ptr< ::cob_msgs::DashboardState > DashboardStatePtr;
typedef boost::shared_ptr< ::cob_msgs::DashboardState const> DashboardStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cob_msgs::DashboardState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cob_msgs::DashboardState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cob_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'cob_msgs': ['/home/lammers/Documents/ros/src/cob_common/cob_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cob_msgs::DashboardState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cob_msgs::DashboardState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_msgs::DashboardState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cob_msgs::DashboardState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_msgs::DashboardState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cob_msgs::DashboardState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cob_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac6926484e7f901e4a07c74a0bf08792";
  }

  static const char* value(const ::cob_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac6926484e7f901eULL;
  static const uint64_t static_value2 = 0x4a07c74a0bf08792ULL;
};

template<class ContainerAllocator>
struct DataType< ::cob_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cob_msgs/DashboardState";
  }

  static const char* value(const ::cob_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cob_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message communicates state information that might be used by a dashboard application.\n\
diagnostic_msgs/DiagnosticStatus diagnostics_toplevel_state\n\
\n\
cob_msgs/PowerState power_state\n\
\n\
cob_msgs/EmergencyStopState emergency_stop_state\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/DiagnosticStatus\n\
# This message holds the status of an individual component of the robot.\n\
# \n\
\n\
# Possible levels of operations\n\
byte OK=0\n\
byte WARN=1\n\
byte ERROR=2\n\
byte STALE=3\n\
\n\
byte level # level of operation enumerated above \n\
string name # a description of the test/component reporting\n\
string message # a description of the status\n\
string hardware_id # a hardware unique string\n\
KeyValue[] values # an array of values associated with the status\n\
\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/KeyValue\n\
string key # what to label this value when viewing\n\
string value # a value to track over time\n\
\n\
================================================================================\n\
MSG: cob_msgs/PowerState\n\
# This message communicates the state of the power system.\n\
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
\n\
================================================================================\n\
MSG: cob_msgs/EmergencyStopState\n\
# This message holds the emergency stop (EMStop) status of the robot. It detects wether an EMStop is caused by the safety laserscanner or the emergency stop buttons. Moreover, it gives signalizes wether the EMStop was confirmed (after Button press stop) and the system is free again.\n\
\n\
# Possible EMStop States\n\
int16 EMFREE = 0 		# system operatign normal\n\
int16 EMSTOP = 1 		# emergency stop is active (Button pressed; obstacle in safety field of scanner)\n\
int16 EMCONFIRMED = 2 	# emergency stop was confirmed system is reinitializing and going back to normal\n\
\n\
bool emergency_button_stop	# true = emergency stop signal is issued by button pressed\n\
bool scanner_stop			# true = emergency stop signal is issued by scanner\n\
int16 emergency_state		# state (including confimation by key-switch), values see above\n\
\n\
";
  }

  static const char* value(const ::cob_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cob_msgs::DashboardState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.diagnostics_toplevel_state);
      stream.next(m.power_state);
      stream.next(m.emergency_stop_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DashboardState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cob_msgs::DashboardState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cob_msgs::DashboardState_<ContainerAllocator>& v)
  {
    s << indent << "diagnostics_toplevel_state: ";
    s << std::endl;
    Printer< ::diagnostic_msgs::DiagnosticStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.diagnostics_toplevel_state);
    s << indent << "power_state: ";
    s << std::endl;
    Printer< ::cob_msgs::PowerState_<ContainerAllocator> >::stream(s, indent + "  ", v.power_state);
    s << indent << "emergency_stop_state: ";
    s << std::endl;
    Printer< ::cob_msgs::EmergencyStopState_<ContainerAllocator> >::stream(s, indent + "  ", v.emergency_stop_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COB_MSGS_MESSAGE_DASHBOARDSTATE_H
