# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "paczka: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(paczka_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_custom_target(_paczka_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paczka" "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" ""
)

get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_custom_target(_paczka_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paczka" "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" ""
)

get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_custom_target(_paczka_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paczka" "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" ""
)

get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_custom_target(_paczka_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paczka" "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" ""
)

get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_custom_target(_paczka_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paczka" "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
)
_generate_srv_cpp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
)
_generate_srv_cpp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
)
_generate_srv_cpp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
)
_generate_srv_cpp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
)

### Generating Module File
_generate_module_cpp(paczka
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(paczka_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(paczka_generate_messages paczka_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_cpp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_cpp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_cpp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_cpp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_dependencies(paczka_generate_messages_cpp _paczka_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paczka_gencpp)
add_dependencies(paczka_gencpp paczka_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paczka_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
)
_generate_srv_eus(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
)
_generate_srv_eus(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
)
_generate_srv_eus(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
)
_generate_srv_eus(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
)

### Generating Module File
_generate_module_eus(paczka
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(paczka_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(paczka_generate_messages paczka_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_eus _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_eus _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_eus _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_eus _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_dependencies(paczka_generate_messages_eus _paczka_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paczka_geneus)
add_dependencies(paczka_geneus paczka_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paczka_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
)
_generate_srv_lisp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
)
_generate_srv_lisp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
)
_generate_srv_lisp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
)
_generate_srv_lisp(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
)

### Generating Module File
_generate_module_lisp(paczka
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(paczka_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(paczka_generate_messages paczka_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_lisp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_lisp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_lisp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_lisp _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_dependencies(paczka_generate_messages_lisp _paczka_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paczka_genlisp)
add_dependencies(paczka_genlisp paczka_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paczka_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
)
_generate_srv_nodejs(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
)
_generate_srv_nodejs(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
)
_generate_srv_nodejs(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
)
_generate_srv_nodejs(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
)

### Generating Module File
_generate_module_nodejs(paczka
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(paczka_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(paczka_generate_messages paczka_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_nodejs _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_nodejs _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_nodejs _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_nodejs _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_dependencies(paczka_generate_messages_nodejs _paczka_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paczka_gennodejs)
add_dependencies(paczka_gennodejs paczka_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paczka_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
)
_generate_srv_py(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
)
_generate_srv_py(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
)
_generate_srv_py(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
)
_generate_srv_py(paczka
  "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
)

### Generating Module File
_generate_module_py(paczka
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(paczka_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(paczka_generate_messages paczka_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_py _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MoveLin_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_py _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_Q.srv" NAME_WE)
add_dependencies(paczka_generate_messages_py _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/MovePTP_P.srv" NAME_WE)
add_dependencies(paczka_generate_messages_py _paczka_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/matsantos/catkin_ws/src/paczka/srv/Stop.srv" NAME_WE)
add_dependencies(paczka_generate_messages_py _paczka_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paczka_genpy)
add_dependencies(paczka_genpy paczka_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paczka_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paczka
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(paczka_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paczka
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(paczka_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paczka
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(paczka_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paczka
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(paczka_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paczka
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(paczka_generate_messages_py std_msgs_generate_messages_py)
endif()
