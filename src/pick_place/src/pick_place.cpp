#include <ros/ros.h>
#include <geometry_msgs/Pose.h>
#include <visualization_msgs/Marker.h>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <linux/input.h>
#include <unistd.h>
#include <libpcan.h>
// MoveIt!
#include <moveit_msgs/PlanningScene.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/GetStateValidity.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_state/robot_state.h>
#include <moveit/robot_state/conversions.h>
#include <moveit/planning_pipeline/planning_pipeline.h>
#include <moveit/planning_interface/planning_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>

#include "std_msgs/Float32MultiArray.h"
#include "std_msgs/String.h"

ros::Subscriber image_sub;
ros::Publisher pub;
ros::Publisher display_publisher;
ros::Publisher marker_pub;


int object_id;
HANDLE h; 
DWORD status; 
const char *device = "/dev/pcan0";
__u16 can_baud = 0;
char *ptr = "0x14";


void force_feedback();
void object_cb();
void motion_control();
float IEEE_754_to_float(uint8_t *raw);
void float_to_IEEE_754(float position, unsigned int *output_array);
void setPosition(int goal_position, int velocity, int acceleration);
void object_cb(const std_msgs::Float32MultiArrayConstPtr & msg);
uint16_t CRC16(uint16_t crc, uint16_t data);
void can_tx(std::vector<uint8_t> &output);
void can_init();
void can_close();


void can_tx(std::vector<uint8_t> &output){
	
	TPCANMsg msg;
	
	msg.ID = 0x123;
	msg.MSGTYPE = MSGTYPE_STANDARD; 
	msg.LEN = output.size(); 
	//msg.LEN = 3;
	
	std::cout << "output size: " << output.size() << "\n";
	
	msg.DATA[0] = 0x05;
	msg.DATA[1] = 0x12;// MODULE id
	msg.DATA[2] = 0x0D;
	msg.DATA[3] = 0xb0;
	
	
	for (int i = 4; i < output.size(); i++){
		
		msg.DATA[i] = output[i];
		
	}
	
	std::cout << "msg size: " << unsigned(msg.LEN) <<"\n";
	
	
	for (int i = 0; i < msg.LEN; i++){
		
		//std::cout << "i: " << i <<"\n";
		std::cout << "msg @ i: " << unsigned(msg.DATA[i]) << "\n";
		
	}
	
	status = CAN_Write(h, &msg); 

}	

void can_init(){
	can_baud = (__u16)strtoul(ptr, NULL, 16);
	//h =  LINUX_CAN_Open(device, 0);
	
	h = CAN_Open(HW_PCI, 0);
	status = CAN_Init(h, can_baud, CAN_INIT_TYPE_EX);

}

void can_close(){
	
	CAN_Close(h);
	
}
	
void motion_contol(){	
	 ros::AsyncSpinner spinner(1);
  spinner.start();


  static const std::string PLANNING_GROUP = "group1";

  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);

  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

  // Raw pointers are frequently used to refer to the planning group for improved performance.
  //const robot_state::JointModelGroup* joint_model_group =
      //move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

/*
	while(true){
		//move_group.setNamedTarget("pickup_1");
		//move_group.move();
		
		move_group.setNamedTarget("camera_view");
		move_group.move();

		
		if(object_id == 9){
		//std::cout << "here \n";
		move_group.setNamedTarget("set_1");
		move_group.move();
		}
		
		if(object_id == 8){
		//std::cout << "then \n";
		move_group.setNamedTarget("set_2");
		move_group.move();
		//std::cout << "now \n";
		}
	}*/
		//object_id = 0;
	
	
}
		
void object_cb(const std_msgs::Float32MultiArrayConstPtr & msg){
	
	const std::vector<float> & data = msg->data;
	
	if(data.size()){
		object_id = (int)data[0];
	}
	
	
	std::cout << "object id: " << object_id << "\n";
	
	
}

void setPosition(int goal_position, int velocity, int acceleration)
{
  //ROS_INFO_STREAM("PG70: Moving from: " << act_position_ << " [mm] to " << goal_position << " [mm]");
  
  std::vector<uint8_t> output;
  output.push_back(0x05);                //message from master to module
  output.push_back(0x40);          //module id
  output.push_back(0x0D);                //D-Len
  output.push_back(0xb0);                //Command mov pos

  //Position <0-69>mm
  unsigned int IEEE754_bytes[4];
  float_to_IEEE_754(goal_position,IEEE754_bytes);

  output.push_back(IEEE754_bytes[0]);    //Position first byte
  output.push_back(IEEE754_bytes[1]);    //Position second byte
  output.push_back(IEEE754_bytes[2]);    //Position third byte
  output.push_back(IEEE754_bytes[3]);    //Position fourth byte

  //Velocity<0-82>mm/s
  float_to_IEEE_754(velocity, IEEE754_bytes);
  output.push_back(IEEE754_bytes[0]);    //Velocity first byte
  output.push_back(IEEE754_bytes[1]);    //Velocity second byte
  output.push_back(IEEE754_bytes[2]);    //Velocity third byte
  output.push_back(IEEE754_bytes[3]);    //Velocity fourth byte

  //Acceleration<0-320>mm/s2
  float_to_IEEE_754(acceleration, IEEE754_bytes);
  output.push_back(IEEE754_bytes[0]);    //Acceleration first byte
  output.push_back(IEEE754_bytes[1]);    //Acceleration second byte
  output.push_back(IEEE754_bytes[2]);    //Acceleration third byte
  output.push_back(IEEE754_bytes[3]);    //Acceleration fourth byte

  //Checksum calculation
  uint16_t crc = 0;

  for(size_t i = 0; i < output.size(); i++)
    crc = CRC16(crc,output[i]);

  //Add checksum to the output buffer
  output.push_back(crc & 0x00ff);
  output.push_back((crc & 0xff00) >> 8);

  can_tx(output);	
}

float IEEE_754_to_float(uint8_t *raw)
{
  int sign = (raw[0] >> 7) ? -1 : 1;
  int8_t exponent = (raw[0] << 1) + (raw[1] >> 7) - 126;

  uint32_t fraction_bits = ((raw[1] & 0x7F) << 16) + (raw[2] << 8) + raw[3];

  float fraction = 0.5f;
  for (uint8_t ii = 0; ii < 24; ++ii)
    fraction += ldexpf((fraction_bits >> (23 - ii)) & 1, -(ii + 1));

  float significand = sign * fraction;

  return ldexpf(significand, exponent);
}

void float_to_IEEE_754(float position, unsigned int *output_array)
{
  unsigned char *p_byte = (unsigned char*)(&position);

  for(size_t i = 0; i < sizeof(float); i++)
    output_array[i] = (static_cast<unsigned int>(p_byte[i]));
}

uint16_t CRC16(uint16_t crc, uint16_t data)
{
  const uint16_t tbl[256] = {
  0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301, 0x03C0, 0x0280, 0xC241,
  0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1, 0xC481, 0x0440,
  0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81, 0x0E40,
  0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
  0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40,
  0x1E00, 0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41,
  0x1400, 0xD4C1, 0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641,
  0xD201, 0x12C0, 0x1380, 0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040,
  0xF001, 0x30C0, 0x3180, 0xF141, 0x3300, 0xF3C1, 0xF281, 0x3240,
  0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501, 0x35C0, 0x3480, 0xF441,
  0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0, 0x3E80, 0xFE41,
  0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881, 0x3840,
  0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
  0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40,
  0xE401, 0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640,
  0x2200, 0xE2C1, 0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041,
  0xA001, 0x60C0, 0x6180, 0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240,
  0x6600, 0xA6C1, 0xA781, 0x6740, 0xA501, 0x65C0, 0x6480, 0xA441,
  0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01, 0x6FC0, 0x6E80, 0xAE41,
  0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1, 0xA881, 0x6840,
  0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80, 0xBA41,
  0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
  0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640,
  0x7200, 0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041,
  0x5000, 0x90C1, 0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241,
  0x9601, 0x56C0, 0x5780, 0x9741, 0x5500, 0x95C1, 0x9481, 0x5440,
  0x9C01, 0x5CC0, 0x5D80, 0x9D41, 0x5F00, 0x9FC1, 0x9E81, 0x5E40,
  0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901, 0x59C0, 0x5880, 0x9841,
  0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1, 0x8A81, 0x4A40,
  0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80, 0x8C41,
  0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
  0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040
  };

  return(((crc & 0xFF00) >> 8)  ^ tbl[(crc & 0x00FF) ^ (data & 0x00FF)]);
}

int main(int argc, char * argv[]) {
   // Initialize ROS
   ros::init(argc, argv, "pick_place");
   ros::NodeHandle nh;

	//sub
	image_sub = nh.subscribe("objects", 1, object_cb);
	
   //pub
   pub = nh.advertise < std_msgs::String > ("pub", 1);
   //display_publisher = nh.advertise < moveit_msgs::DisplayRobotState > ("/display_robot_state", 1);
   
   //--------------------------------------------------
   //RUN PROGRAM

	can_init();
	int pos; 
	int acc;
	int vel;
	
	while(1){
	std::cout << std::endl;
	std::cout << "pos <0-69>mm: " ;
	std::cin >> pos;
	std::cout << "acc <0-320>mm/s2: ";
	std::cin >> acc;
	std::cout << "vel <0-82>mm/s: ";
	std::cin >> vel;
	
	setPosition(pos, vel, acc);
	}
   //--------------------------------------------------
	
   can_close();
   std::cout << "DONE!.\n";
	
	
	
   // Spin
   ros::spin();
}
