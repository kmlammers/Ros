# Install script for directory: /home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/catkin_generated/installspace/cob_hardware_config.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config/cmake" TYPE FILE FILES
    "/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/catkin_generated/installspace/cob_hardware_configConfig.cmake"
    "/home/lammers/Documents/ros/build/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/catkin_generated/installspace/cob_hardware_configConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE FILE FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob3-2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob3-6")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob3-9")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob4-1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob4-2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob4-4")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/cob4-6")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-3")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-4")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-5")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/raw3-6")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/common")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_hardware_config" TYPE DIRECTORY FILES "/home/lammers/Documents/ros/src/schunk_robots/cob_robots-indigo_dev/cob_hardware_config/test")
endif()

