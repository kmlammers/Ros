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
#include "std_msgs/MultiArrayDimension.h"

ros::Publisher input_pub;
std_msgs::Float64MultiArray input_cmd;
std::vector<double> input_vector;

void take_input();


void take_input() {
   
	std_msgs::Float64MultiArray input_cmd;
	
	input_cmd.data.clear();
	input_vector.clear();

 	std::string line;
    double number;
    std::cout << "\n\n";
    std::cout << "Please enter Command Values [lin_x, lin_y, lin_z, ang_x, ang_y, ang_z]: \n";
    
	std::getline(std::cin, line);
    std::istringstream stream(line);
    while (stream >> number)
        input_vector.push_back(number);
	
	input_cmd.data.insert(input_cmd.data.end(), input_vector.begin(), input_vector.end());
    
    input_pub.publish(input_cmd);
	
}


int main(int argc, char *argv[]) {
  // Initialize ROS
  ros::init(argc, argv, "segway_control_input");
  ros::NodeHandle nh;

	
  input_cmd.layout.dim.push_back(std_msgs::MultiArrayDimension());
  input_cmd.layout.dim[0].size = 6;
  
  input_pub = nh.advertise<std_msgs::Float64MultiArray>("input_command", 1);

  std::cout << "\n\n\n";
  std::cout << "	    ***SEGWAY CONTROL INTERFACE***";
  std::cout << "\n\n\n";
  std::cout
      << "Interface will continue to ask for new Linear and Angular Velocity\n";
  std::cout << "\n\n";
  std::cout << " ***!!!WARNING: Segway WILL START MOVING AND CONTINUE MOVING "
               "UNTIL 0.0 LINEAR AND ANGULAR VELOCITIES ARE ENTERED!! IT IS "
               "RECOMMENDED YOU USE THE TELEOP NODE WITH A PS3 "
               "CONTROLLER!!!***\n";

  //--------------------------------------------------
  // RUN PROGRAM
  while (true) {
  	take_input();
  }
  //--------------------------------------------------

  std::cout << "DONE!.\n";
  // Spin
  ros::spin();
}
