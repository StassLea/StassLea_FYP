# Install script for directory: /home/stass/StassLea_FYP/src/FROctoMap

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/stass/StassLea_FYP/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/action" TYPE FILE FILES
    "/home/stass/StassLea_FYP/src/FROctoMap/action/froctomap.action"
    "/home/stass/StassLea_FYP/src/FROctoMap/action/information.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/msg" TYPE FILE FILES
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapAction.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapActionGoal.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapActionResult.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapActionFeedback.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapGoal.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapResult.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/froctomapFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/msg" TYPE FILE FILES
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationAction.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationActionGoal.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationActionResult.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationActionFeedback.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationGoal.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationResult.msg"
    "/home/stass/StassLea_FYP/devel/share/fremen/msg/informationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/srv" TYPE FILE FILES
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/RecoverOctomap.srv"
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/RetrieveOctomap.srv"
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/EstimateOctomap.srv"
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/SaveGrid.srv"
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/UpdateGrid.srv"
    "/home/stass/StassLea_FYP/src/FROctoMap/srv/EvaluateGrid.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/cmake" TYPE FILE FILES "/home/stass/StassLea_FYP/build/FROctoMap/catkin_generated/installspace/fremen-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/stass/StassLea_FYP/devel/include/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/stass/StassLea_FYP/devel/share/roseus/ros/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/stass/StassLea_FYP/devel/share/common-lisp/ros/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/stass/StassLea_FYP/devel/share/gennodejs/ros/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/stass/StassLea_FYP/devel/lib/python2.7/dist-packages/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/stass/StassLea_FYP/devel/lib/python2.7/dist-packages/fremen")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/stass/StassLea_FYP/build/FROctoMap/catkin_generated/installspace/fremen.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/cmake" TYPE FILE FILES "/home/stass/StassLea_FYP/build/FROctoMap/catkin_generated/installspace/fremen-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen/cmake" TYPE FILE FILES
    "/home/stass/StassLea_FYP/build/FROctoMap/catkin_generated/installspace/fremenConfig.cmake"
    "/home/stass/StassLea_FYP/build/FROctoMap/catkin_generated/installspace/fremenConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fremen" TYPE FILE FILES "/home/stass/StassLea_FYP/src/FROctoMap/package.xml")
endif()

