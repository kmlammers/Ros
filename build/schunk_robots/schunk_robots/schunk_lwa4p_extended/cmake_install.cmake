# Install script for directory: /home/lammers/Documents/ros/src/schunk_robots/schunk_robots/schunk_lwa4p_extended

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4p_extended/catkin_generated/installspace/schunk_lwa4p_extended.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_lwa4p_extended/cmake" TYPE FILE FILES
    "/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4p_extended/catkin_generated/installspace/schunk_lwa4p_extendedConfig.cmake"
    "/home/lammers/Documents/ros/build/schunk_robots/schunk_robots/schunk_lwa4p_extended/catkin_generated/installspace/schunk_lwa4p_extendedConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_lwa4p_extended" TYPE FILE FILES "/home/lammers/Documents/ros/src/schunk_robots/schunk_robots/schunk_lwa4p_extended/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/schunk_lwa4p_extended" TYPE DIRECTORY FILES
    "/home/lammers/Documents/ros/src/schunk_robots/schunk_robots/schunk_lwa4p_extended/config"
    "/home/lammers/Documents/ros/src/schunk_robots/schunk_robots/schunk_lwa4p_extended/launch"
    "/home/lammers/Documents/ros/src/schunk_robots/schunk_robots/schunk_lwa4p_extended/urdf"
    )
endif()

