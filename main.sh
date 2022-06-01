#!/bin/bash

input=(1 2 3 1 2 3) 

cd ~/StassLea_FYP/
source /opt/ros/kinetic/setup.bash
export TURTLEBOT3_MODEL=waffle_pi
source ~/StassLea_FYP/devel/setup.bash
export GAZEBO_MODEL_PATH=~/FYP_ws/gazebo_models:${GAZEBO_MODEL_PATH}

for i in ${input[@]};do 

	roslaunch fyp_simulation my_world.launch world_type:=$i map_type:=$i & #> /dev/null 2>&1 &
	
	sleep 10 &
	PID=$!
 	echo $i
        wait $PID
	echo "after\n"

	rostopic pub /initialpose geometry_msgs/PoseWithCovarianceStamped "header:
	  seq: 0
	  stamp:
	    secs: 0
	    nsecs: 0
	  frame_id: 'map'
	pose:
	  pose:
	    position: {x: -6.99521827698, y: -2.96817207336, z: 0.0}
	    orientation: {x: 0.0, y: 0.0, z: 0.0, w: 1.0}
	  covariance: [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
	    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
	    0.0, 0.0, 0.0, 0.0, 0.0, 0.06853891945200942]" &

	rostopic pub move_base_simple/goal geometry_msgs/PoseStamped "header:
	  seq: 0
	  stamp:
	    secs: 0
	    nsecs: 0
	  frame_id: 'map'
	pose:
	  position:
	    x: 5.78160142899
	    y: -4.43579244614
	    z: 0.0
	  orientation:
	    x: 0.0
	    y: 0.0
	    z: 0.0
	    w: -0.0180634861299" &
	
	
	sleep 10 

	rosnode kill -a

        sleep 10 
	echo "end\n"
done
