#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <move_base_msgs/MoveBaseActionResult.h>
#include <std_msgs/String.h>
#include <actionlib_msgs/GoalStatusArray.h>

#include <fstream>

geometry_msgs::PoseWithCovarianceStamped init_pose;
geometry_msgs::PoseStamped pose;

int goal_select = 0;
int i = 0;
int time_count = 0;
int end_time = 100;

ros::Publisher Pose_Goal;

void Pose_Estimation(){

	init_pose.header.seq = 0;
	init_pose.header.frame_id = "map";
	init_pose.pose.pose.position.x = -7.0;
	init_pose.pose.pose.position.y = -3.0;
	init_pose.pose.pose.position.z = 0.0;
	init_pose.pose.pose.orientation.x = 0.0;
	init_pose.pose.pose.orientation.y = 0.0;
	init_pose.pose.pose.orientation.z = 0.0;
        init_pose.pose.pose.orientation.w = 1.0;

return;
}

void Goal_Pose(){

	pose.header.seq = 0;
	pose.header.frame_id = "map";
	pose.pose.position.x = 5.78160142899;
	pose.pose.position.y = -4.43579244614;
	pose.pose.position.z = 0.0;
	pose.pose.orientation.x = 0.0;
	pose.pose.orientation.y = 0.0;
	pose.pose.orientation.z = 0.0;
        pose.pose.orientation.w = -0.0180634861299;

return;

}

void Home_Pose(){

	pose.header.seq = 0;
	pose.header.frame_id = "map";
	pose.pose.position.x = -7.0;
	pose.pose.position.y = -3.0;
	pose.pose.position.z = 0.0;
	pose.pose.orientation.x = 0.0;
	pose.pose.orientation.y = 0.0;
	pose.pose.orientation.z = 0.0;
        pose.pose.orientation.w = 1.0;

return;

}

void Goal_Publish(geometry_msgs::PoseStamped goal){
ros::NodeHandle n;
ros::Publisher Pose_Goal = n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal",1000);
ros::Rate loop(10);
i=0;
while(i < 20){

	ROS_INFO("goaklllllll %i",i);

	Pose_Goal.publish(goal);

	ros::spinOnce();

	loop.sleep();

	++i;
}
return;
}

void status_callback(const move_base_msgs::MoveBaseActionResult &status)
{

ros::Rate loop_rate(10);
int stat = status.status.status;
ROS_INFO("status %i", stat);
if(stat == 3 || stat == 4){ 
	
	if (goal_select == 0){
		Home_Pose();
		Goal_Publish(pose);
 		++time_count;
	}else{

		/**run fuction to kill map server and re run then **/

		Goal_Pose();
		Goal_Publish(pose);
		++time_count;
	}
	if(goal_select == 0){
		goal_select = 1;
	}else{ goal_select = 0;}

ROS_INFO("aslkdjlaskdj %i",time_count);
}
if (time_count == end_time){
	ros::shutdown();
}

	/*if(stat == 3){
		ROS_INFO("3:BOYS WE ARE FUCKING IN");
	}else{
		ROS_ERROR("3:we still in but errorish");
	}*/

}



int main(int argc, char **argv)
{
ros::init(argc, argv, "CVA_Sequencer");
ROS_INFO("INITIALISE CVA_Sequencer Node");

ros::NodeHandle n;

ros::Rate loop_rate(10);

/**
 *Publisher
 */
ros::Publisher Pose_Est = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("/initialpose",1000);

Pose_Estimation();

while(i < 25){

loop_rate.sleep();
++i;
}

i=0;

while(i < 5){

	Pose_Est.publish(init_pose);

	ros::spinOnce();

	loop_rate.sleep();

	++i;
}

i=0;

while(i < 10){

loop_rate.sleep();
++i;
}

Goal_Pose();
Goal_Publish(pose);

/**
 *Subscribers
 */
ros::Subscriber goal_stat = n.subscribe("/move_base/result", 1, status_callback);

ros::spin();

return 0;

}


