execute_process(COMMAND "/home/lammers/Documents/ros/build/ros_control/controller_manager_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lammers/Documents/ros/build/ros_control/controller_manager_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()