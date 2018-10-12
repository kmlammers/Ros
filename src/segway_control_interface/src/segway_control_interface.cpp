#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Vector3.h>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <linux/input.h>
#include <unistd.h>
#include "std_msgs/Float32MultiArray.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64MultiArray.h"
#include <boost/thread/thread.hpp>

ros::Publisher cmd_pub;
ros::Subscriber input_cmd_sub;

geometry_msgs::Vector3 linear_vel;
geometry_msgs::Vector3 angular_vel;
bool stop = 0;

std_msgs::Float64MultiArray input_cmd;
std::vector<double> input_vector;

void input_cb(const std_msgs::Float64MultiArray &input);
void build_twist();
void take_input();


void take_input() {
   
	std_msgs::Float64MultiArray input_cmd;
	
	input_cmd.data.clear();
	input_vector.clear();

 	std::string line;
    double number;
    std::cout << "\n\n";
    std::cout << "Please enter Command Values [lin_x, ang_z]: \n";
    
	std::getline(std::cin, line);
    std::istringstream stream(line);
    while (stream >> number)
        input_vector.push_back(number);
	
	input_cmd.data.insert(input_cmd.data.end(), input_vector.begin(), input_vector.end());
    
    //input_pub.publish(input_cmd);
	
	input_cb(input_cmd);
	
}

void input_cb(const std_msgs::Float64MultiArray &input) {
  // command_values.clear();

  std::cout << "**HEERE**";
  linear_vel.x = input.data[0];
  angular_vel.z = input.data[1];
	
  build_twist();
	
}

void build_twist() {
	
  while(ros::ok()){	
	//std::cout << "BINGO!!!!!!!$$";
  geometry_msgs::Twist temp_twist;
  temp_twist.linear = linear_vel;
  temp_twist.angular = angular_vel;

  cmd_pub.publish(temp_twist);
  }
  
}

int main(int argc, char *argv[]) {
  // Initialize ROS
  ros::init(argc, argv, "segway_control_interface");
  ros::NodeHandle nh;

	
	
	std::cout << "NOWWWWW";
  //input_cmd_sub = nh.subscribe("/input_command", 1, input_cb);
  cmd_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);

	std::cout << "STARTING PROGRAM!!";
	//boost::thread build_thread(build_twist);
  //--------------------------------------------------
  // RUN PROGRAM
  //while (!stop) {
    //build_twist();
  //}
  //--------------------------------------------------
	take_input();
  // Spin
  ros::spin();
	
		

}
