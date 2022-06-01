cmake_minimum_required(VERSION 3.0.2)
project(fyp_simulation)


find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs move_base_msgs geometry_msgs actionlib_msgs)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES fyp_simulation
  CATKIN_DEPENDS roscpp std_msgs geometry_msgs move_base_msgs rospy
)


include_directories(
# include
 ${catkin_INCLUDE_DIRS}
)

add_executable(CVA_sequencer src/CVA_sequencer.cpp)
target_link_libraries(CVA_sequencer ${catkin_LIBRARIES})



