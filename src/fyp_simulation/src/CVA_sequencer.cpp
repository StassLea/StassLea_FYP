#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <move_base_msgs/MoveBaseActionResult.h>
#include <std_msgs/String.h>
#include <actionlib_msgs/GoalStatusArray.h>

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

geometry_msgs::PoseWithCovarianceStamped init_pose;
geometry_msgs::PoseStamped pose;

int goal_select = 0;
int i = 0;
int time_count = 0;
int end_time = 8;
int PredSeq[9];
int doors[9][3];
int j = 0;

int door1 = 0;
int door2 = 0;
int door3 = 0;

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

void Door_1(){

	if ((doors[time_count][0] == 1) & (door1 == 0)){
		system("rosrun gazebo_ros spawn_model -file /home/stass/.gazebo/models/hinged_door/model.sdf -gazebo -model 'Hinged door 1' -x 4.78 -y -2.05");
		door1 = 1;
	}else
	if ((doors[time_count][0] == 0) & (door1 == 1)){
		system("rosservice call gazebo/delete_model '{model_name: Hinged door 1}'");
		door1 = 0;
	}
	
	
return;
}
void Door_2(){

	if ((doors[time_count][1] == 1) & (door2 == 0)){
		system("rosrun gazebo_ros spawn_model -file /home/stass/.gazebo/models/hinged_door/model.sdf -gazebo -model 'Hinged door 2' -x 2.17 -y -0.1");
		door2 = 1;
	}else
	if ((doors[time_count][1] == 0) & (door2 == 1)){
		system("rosservice call gazebo/delete_model '{model_name: Hinged door 2}'");
		door2 = 0;
	}
	
	
return;
}
void Door_3(){

	if ((doors[time_count][2] == 1) & (door3 == 0)){
		system("rosrun gazebo_ros spawn_model -file /home/stass/.gazebo/models/hinged_door/model.sdf -gazebo -model 'Hinged door 3' -x 2.17 -y 4.16");
		door3 = 1;
	}else
	if ((doors[time_count][2] == 0) & (door3 == 1)){
		system("rosservice call gazebo/delete_model '{model_name: Hinged door 3}'");
		door3 = 0;
	}
	
	
return;
}

void Extract_Seq_Data(){
	
	string data;
	// enviroment
	ifstream env;
	env.open("Pred_Seq.txt");
	env >> data;
	env.close();
	i = 0;
	for (i = 0; i<data.length(); i++){
		PredSeq[i] = PredSeq[i] * 10 + (data[i] - 48);
	
	}

	// door
	string dat;
	ifstream door;
	door.open("Door_seq.txt");
	door >> dat;
	door.close();

	i = 0;
	j = 0;
        //cout << "dat length" << dat;
	for (i = 0; i<(dat.length()/3); i++){
		for (j = 0; j<3 ; j++){
			doors[i][j] = dat[j + i*3] - 48;	
		}
	}

	
return;
}

void Map_server(){
	
	system("rosnode kill /map_server");
	if (PredSeq[time_count] == 1){
		system("rosrun map_server map_server src/fyp_simulation/map/1_map.yaml &");
	}else
	if (PredSeq[time_count] == 2){
		system("rosrun map_server map_server src/fyp_simulation/map/2_map.yaml &");
	}else
	if (PredSeq[time_count] == 3){
		system("rosrun map_server map_server src/fyp_simulation/map/3_map.yaml &");
	}else

	
return;
}

void Goal_Publish(geometry_msgs::PoseStamped goal){
ros::NodeHandle n;
ros::Publisher Pose_Goal = n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal",1000);
ros::Rate loop(10);
i=0;
while(i < 20){

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

	

	if(stat == 3 || stat == 4){ 
	
		if (goal_select == 0){
			Home_Pose();
			Goal_Publish(pose);
			if (time_count > end_time){
				ros::shutdown();
			}
		}else{

			/**run fuction to kill map server and re run then **/
			ROS_INFO("TIME COUNT: %i",time_count);
			Door_1();
			Door_2();
			Door_3();
			Map_server();
			system("rosservice call /move_base/clear_costmaps '{}'");
			Goal_Pose();
			Goal_Publish(pose);
			++time_count;
		}
		if(goal_select == 0){
			goal_select = 1;
		}else{ goal_select = 0;}
	}	
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

/**Define end time, EnviroSeq and door1 door2 door3 */

Extract_Seq_Data();

i = 0;
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


