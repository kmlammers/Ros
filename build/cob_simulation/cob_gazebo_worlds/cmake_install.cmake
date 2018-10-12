# Install script for directory: /home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo_worlds/catkin_generated/installspace/cob_gazebo_worlds.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_gazebo_worlds/cmake" TYPE FILE FILES
    "/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo_worlds/catkin_generated/installspace/cob_gazebo_worldsConfig.cmake"
    "/home/lammers/Documents/ros/build/cob_simulation/cob_gazebo_worlds/catkin_generated/installspace/cob_gazebo_worldsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_gazebo_worlds" TYPE FILE FILES "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_gazebo_worlds" TYPE DIRECTORY FILES
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/Media"
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/launch"
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/test"
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/urdf"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_gazebo_worlds/scripts" TYPE PROGRAM FILES
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/scripts/elevator.py"
    "/home/lammers/Documents/ros/src/cob_simulation/cob_gazebo_worlds/scripts/tf_publisher.py"
    )
endif()
