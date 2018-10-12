// Generated by gencpp from file graph_msgs/GeometryGraph.msg
// DO NOT EDIT!


#ifndef GRAPH_MSGS_MESSAGE_GEOMETRYGRAPH_H
#define GRAPH_MSGS_MESSAGE_GEOMETRYGRAPH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>
#include <graph_msgs/Edges.h>

namespace graph_msgs
{
template <class ContainerAllocator>
struct GeometryGraph_
{
  typedef GeometryGraph_<ContainerAllocator> Type;

  GeometryGraph_()
    : header()
    , nodes()
    , edges()  {
    }
  GeometryGraph_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , nodes(_alloc)
    , edges(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _nodes_type;
  _nodes_type nodes;

   typedef std::vector< ::graph_msgs::Edges_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::graph_msgs::Edges_<ContainerAllocator> >::other >  _edges_type;
  _edges_type edges;





  typedef boost::shared_ptr< ::graph_msgs::GeometryGraph_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graph_msgs::GeometryGraph_<ContainerAllocator> const> ConstPtr;

}; // struct GeometryGraph_

typedef ::graph_msgs::GeometryGraph_<std::allocator<void> > GeometryGraph;

typedef boost::shared_ptr< ::graph_msgs::GeometryGraph > GeometryGraphPtr;
typedef boost::shared_ptr< ::graph_msgs::GeometryGraph const> GeometryGraphConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graph_msgs::GeometryGraph_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graph_msgs::GeometryGraph_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graph_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'graph_msgs': ['/home/lammers/Documents/ros/src/graph_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graph_msgs::GeometryGraph_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graph_msgs::GeometryGraph_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graph_msgs::GeometryGraph_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78739617daca94d38915923795eada2d";
  }

  static const char* value(const ::graph_msgs::GeometryGraph_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78739617daca94d3ULL;
  static const uint64_t static_value2 = 0x8915923795eada2dULL;
};

template<class ContainerAllocator>
struct DataType< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graph_msgs/GeometryGraph";
  }

  static const char* value(const ::graph_msgs::GeometryGraph_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A reference coordinate frame and timestamp\n\
Header header\n\
\n\
# 3D spacial graph\n\
geometry_msgs/Point[] nodes\n\
\n\
# This vector should be the same length as nodes, above, and represents all the connecting nodes\n\
Edges[] edges\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: graph_msgs/Edges\n\
#base-zero index of all the verticies this particular vertice connects to (edges)\n\
uint32[] node_ids\n\
\n\
# optional cost/weight of each edge. if vector is empty assume all weights are equal (1)\n\
float64[] weights\n\
";
  }

  static const char* value(const ::graph_msgs::GeometryGraph_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.nodes);
      stream.next(m.edges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GeometryGraph_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graph_msgs::GeometryGraph_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graph_msgs::GeometryGraph_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "nodes[]" << std::endl;
    for (size_t i = 0; i < v.nodes.size(); ++i)
    {
      s << indent << "  nodes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.nodes[i]);
    }
    s << indent << "edges[]" << std::endl;
    for (size_t i = 0; i < v.edges.size(); ++i)
    {
      s << indent << "  edges[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::graph_msgs::Edges_<ContainerAllocator> >::stream(s, indent + "    ", v.edges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRAPH_MSGS_MESSAGE_GEOMETRYGRAPH_H