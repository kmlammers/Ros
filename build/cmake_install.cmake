# Install script for directory: /home/lammers/Documents/ros/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lammers/Documents/ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE PROGRAM FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE PROGRAM FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE FILE FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE FILE FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE FILE FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/lammers/Documents/ros/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/lammers/Documents/ros/install" TYPE FILE FILES "/home/lammers/Documents/ros/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lammers/Documents/ros/build/gtest/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_common/cob_common/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_description/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_environments/cob_environments/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_robots/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_simulation/cob_simulation/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_calibration_data/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/freenect_stack/freenect_launch/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/freenect_stack/freenect_stack/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_common/cob_srvs/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/perception_pcl/perception_pcl/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_common/raw_description/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/ros_control/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/ros_controllers/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/rqt_joint_trajectory_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_description/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_libm5api/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_robots/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_simulated_tactile_sensors/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_urdf/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/segwayrmp/segwayrmp/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/controller_manager_msgs/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_common/cob_msgs/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/graph_msgs/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/velodyne/velodyne/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/velodyne/velodyne_msgs/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/hardware_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/controller_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/force_torque_sensor_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/forward_command_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/position_controllers/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_bringup/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_controller_configuration_gazebo/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_environments/cob_default_env_config/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_simulation/cob_bringup_sim/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_default_robot_config/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo_objects/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo_worlds/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/controller_manager/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/rqt_controller_manager/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4d/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4p/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4p_extended/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_pg70/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_pw70/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/controller_manager_tests/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/cob_trajectory_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/freenect_stack/freenect_camera/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/imu_sensor_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/joint_state_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/find-object/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/lwa_lab_robot/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/perception_pcl/pcl_ros/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/transmission_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/effort_controllers/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_control/joint_limits_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/rviz_visual_tools/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_powercube_chain/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_sdh/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/moveit_visual_tools/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/urdf_tutorial/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/usb_cam/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/velocity_controllers/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/velodyne/velodyne_driver/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/velodyne/velodyne_laserscan/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/velodyne/velodyne_pointcloud/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/arm_control_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/pick_place/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/segway_control_interface/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/diff_drive_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/gripper_action_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/ros_controllers/joint_trajectory_controller/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/segwayrmp/rmp_description/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4d_moveit_config/cmake_install.cmake")
  include("/home/lammers/Documents/ros/build/segway_rmp/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lammers/Documents/ros/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")