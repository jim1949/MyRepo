# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "notice: 3 messages, 1 services")

set(MSG_I_FLAGS "-Inotice:/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(notice_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" NAME_WE)
add_custom_target(_notice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "notice" "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" ""
)

get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" NAME_WE)
add_custom_target(_notice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "notice" "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" NAME_WE)
add_custom_target(_notice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "notice" "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" ""
)

get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" NAME_WE)
add_custom_target(_notice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "notice" "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
)
_generate_msg_cpp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
)
_generate_msg_cpp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
)

### Generating Services
_generate_srv_cpp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
)

### Generating Module File
_generate_module_cpp(notice
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(notice_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(notice_generate_messages notice_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" NAME_WE)
add_dependencies(notice_generate_messages_cpp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_cpp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_cpp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_cpp _notice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(notice_gencpp)
add_dependencies(notice_gencpp notice_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS notice_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
)
_generate_msg_eus(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
)
_generate_msg_eus(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
)

### Generating Services
_generate_srv_eus(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
)

### Generating Module File
_generate_module_eus(notice
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(notice_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(notice_generate_messages notice_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" NAME_WE)
add_dependencies(notice_generate_messages_eus _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_eus _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_eus _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_eus _notice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(notice_geneus)
add_dependencies(notice_geneus notice_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS notice_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
)
_generate_msg_lisp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
)
_generate_msg_lisp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
)

### Generating Services
_generate_srv_lisp(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
)

### Generating Module File
_generate_module_lisp(notice
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(notice_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(notice_generate_messages notice_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" NAME_WE)
add_dependencies(notice_generate_messages_lisp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_lisp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_lisp _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_lisp _notice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(notice_genlisp)
add_dependencies(notice_genlisp notice_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS notice_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
)
_generate_msg_py(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
)
_generate_msg_py(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
)

### Generating Services
_generate_srv_py(notice
  "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
)

### Generating Module File
_generate_module_py(notice
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(notice_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(notice_generate_messages notice_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/srv/move.srv" NAME_WE)
add_dependencies(notice_generate_messages_py _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/nav_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_py _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/system_health_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_py _notice_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jimmy/github/MyRepo/testbot_ws/src/notice/msg/device_status.msg" NAME_WE)
add_dependencies(notice_generate_messages_py _notice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(notice_genpy)
add_dependencies(notice_genpy notice_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS notice_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/notice
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(notice_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(notice_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/notice
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(notice_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(notice_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/notice
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(notice_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(notice_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/notice
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(notice_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(notice_generate_messages_py geometry_msgs_generate_messages_py)
endif()
