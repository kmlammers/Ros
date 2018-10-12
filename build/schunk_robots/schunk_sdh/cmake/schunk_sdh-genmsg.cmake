# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "schunk_sdh: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ischunk_sdh:/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(schunk_sdh_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_custom_target(_schunk_sdh_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_sdh" "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" "schunk_sdh/TactileMatrix:std_msgs/Header"
)

get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_custom_target(_schunk_sdh_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "schunk_sdh" "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
)
_generate_msg_cpp(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_cpp(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(schunk_sdh_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_cpp _schunk_sdh_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_cpp _schunk_sdh_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_sdh_gencpp)
add_dependencies(schunk_sdh_gencpp schunk_sdh_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_sdh
)
_generate_msg_eus(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_eus(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(schunk_sdh_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_eus _schunk_sdh_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_eus _schunk_sdh_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_sdh_geneus)
add_dependencies(schunk_sdh_geneus schunk_sdh_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
)
_generate_msg_lisp(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_lisp(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(schunk_sdh_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_lisp _schunk_sdh_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_lisp _schunk_sdh_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_sdh_genlisp)
add_dependencies(schunk_sdh_genlisp schunk_sdh_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_sdh
)
_generate_msg_nodejs(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_nodejs(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(schunk_sdh_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_nodejs _schunk_sdh_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_nodejs _schunk_sdh_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_sdh_gennodejs)
add_dependencies(schunk_sdh_gennodejs schunk_sdh_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
)
_generate_msg_py(schunk_sdh
  "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_py(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(schunk_sdh_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileSensor.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_py _schunk_sdh_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lammers/Documents/ros/src/schunk_robots/schunk_sdh/msg/TactileMatrix.msg" NAME_WE)
add_dependencies(schunk_sdh_generate_messages_py _schunk_sdh_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(schunk_sdh_genpy)
add_dependencies(schunk_sdh_genpy schunk_sdh_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(schunk_sdh_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/schunk_sdh
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(schunk_sdh_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(schunk_sdh_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/schunk_sdh
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(schunk_sdh_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(schunk_sdh_generate_messages_py std_msgs_generate_messages_py)
endif()
