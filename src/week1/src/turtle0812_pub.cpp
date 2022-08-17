#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "std_msgs/Bool.h"
#include "geometry_msgs/Twist.h" // turtle's cmd_vel
#include "turtlesim/Pose.h" // read turtle's pos
#include <iostream>
#include <sstream>
// service.
#include <turtlesim/Spawn.h>
#include <turtlesim/Kill.h>
#include <std_srvs/Empty.h>

class CurPos{
    public:
        float xPos;
        float yPos;
        float theta;
        float linVel;
        float angVel;
        
        bool ttMsg;
        
        void callback(const turtlesim::Pose::ConstPtr& msg)
        {
            xPos = msg->x;
            yPos = msg->y;
            theta = msg->theta;
            linVel = msg->linear_velocity;
            angVel = msg->angular_velocity;
            // ROS_INFO("x: [%f], y: [%f], theta: [%f], linVel: [%f], angVel: [%f]", msg->x, msg->y, msg->theta, msg->linear_velocity, msg->angular_velocity);
        }

        void tri_callback(const std_msgs::Bool::ConstPtr& triggerMsg){
            bool temp = triggerMsg->data;
            if(temp){
                ttMsg = true;
                // ROS_INFO("tri_callbadk!!!!/!: %d", triggerMsg->data);
            }
        }
        CurPos() : xPos(0.0f), yPos(0.0f), theta(0.0f), linVel(0.0f), angVel(0.0f), ttMsg(true)
        {};
        ~CurPos(){};
};
geometry_msgs::Twist moveTurtle(float xLin, float zAng);
int main(int argc, char** argv)
{
    ros::init(argc,argv,"turtle0812_pub"); // 3rd parameter: node name
    ros::NodeHandle n;

    ///////////////////////////////////////////////////////////////////////
    // client object - spawn, kill, empty
    // data type & name.
    ros::ServiceClient killClient = n.serviceClient<turtlesim::Kill>("kill");
    ros::ServiceClient emptyClient = n.serviceClient<std_srvs::Empty>("clear");
    ros::ServiceClient spawnClient= n.serviceClient<turtlesim::Spawn>("spawn");

    // request and response objects
    turtlesim::Kill::Request reqKill;
    turtlesim::Kill::Response respKill;

    std_srvs::Empty::Request reqEmpty;
    std_srvs::Empty::Response respEmpty;

    turtlesim::Spawn::Request req;
    turtlesim::Spawn::Response resp;
  
    ///////////////////////////////////////////////////////////////////////

    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    CurPos turPos;
    ros::Subscriber sub = n.subscribe("turtle1/pose", 10, &CurPos::callback, &turPos); // pose sub
    ros::Subscriber driverStart_sub = n.subscribe("/driver_start", 1, &CurPos::tri_callback, &turPos); // trigger sub

    geometry_msgs::Twist msg;
    std_msgs::Bool triggerMsg;

    ros::Rate rate(500);

    int mNum = 0;
    int circleNum = 100;
    bool temp = false;

    while(ros::ok())
    {
        bool trigger = turPos.ttMsg;
        // ROS_INFO("%d", turPos.ttMsg);
        if(trigger){
            float turXpos = turPos.xPos;
            float turYpos = turPos.yPos;
            float turTheta = turPos.theta;
            
            float tempRad = 90*M_PI/180; // 90

            if(circleNum==100){
                if (mNum==0 && turXpos >= 9.0)
                {
                    mNum = 1;
                }
                else if (mNum==1 && turTheta>=tempRad)
                {
                    mNum = 2;
                }
                else if (mNum==2 && turYpos >= 9.5)
                {
                    mNum = 3;
                }
                else if (mNum==3 && -2.36<=turTheta && turTheta<=-2.34)
                {
                    mNum = 4;
                }
                else if (mNum==4 && turXpos <= 5.5)
                {
                    mNum = 5;
                }
                else if (mNum==5 && 2.34<=turTheta && turTheta<=2.36)
                {
                    mNum = 6;
                }
                else if (mNum==6 && turYpos >= 9.5)
                {
                    mNum = 7;
                }
                else if (mNum==7 && turTheta<=tempRad) //1.5708) //1.569<=turTheta && turTheta<=1.571)
                {
                    mNum = 8;
                }
                else if (mNum==8 && turYpos <= 5.5)
                {
                    mNum = 9;
                }
                else if (mNum==9 && turTheta<=0)
                {
                    mNum = 10;
                }
                else if (mNum==10 && turXpos >= 5.5)
                {
                    mNum = 11;
                }

            // ROS_INFO("x: [%f], y: [%f], theta: [%f]", turXpos, turYpos, turTheta);

                float mAngVel = 60*M_PI/180;
                switch (mNum)
                {
                    case 0:
                        msg = moveTurtle(5.0, 0.0);
                        // msg.linear.x = 5.0;
                        // msg.angular.z = 0.0;
                        break;
                    case 1:
                        msg = moveTurtle(0.0, mAngVel);
                        break;
                    case 2:
                        msg = moveTurtle(5.0, 0.0);
                        break;
                    case 3:
                        msg = moveTurtle(0.0, mAngVel);
                        break;
                    case 4:
                        msg = moveTurtle(5.0, 0.0);
                        break;
                    case 5:
                        msg = moveTurtle(0.0, -mAngVel);
                        break;
                    case 6:
                        msg = moveTurtle(5.0, 0.0);
                        break;
                    case 7:
                        msg = moveTurtle(0.0, -mAngVel);
                        break;
                    case 8:
                        msg = moveTurtle(-5.0, 0.0);
                        break;
                    case 9:
                        msg = moveTurtle(0.0, -mAngVel);
                        break;
                    case 10:
                        msg = moveTurtle(5.0, 0.0);
                        break;
                    case 11:
                        msg = moveTurtle(0.0, 0.0);
                        mNum = 100;
                        circleNum = 0;
                        /////////////////////////////////////////////////////////////////////// turtle kill
                        reqKill.name = "turtle1";
                        // actual service call.
                        bool killSuccess = killClient.call(reqKill,respKill);
                        // Check
                        if(killSuccess){
                            ROS_INFO_STREAM("killed turtle");
                        }else{
                            ROS_INFO_STREAM("failed to kill");
                        }
                        /////////////////////////////////////////////////////////////////////// turtle clear
                        bool emptySuccess = emptyClient.call(reqEmpty, respEmpty);
                        if(emptySuccess)
                        {
                            ROS_INFO_STREAM("empty finish");
                        }else{
                            ROS_INFO_STREAM("failed to clear");
                        }
                        /////////////////////////////////////////////////////////////////////// turtle spawn
                        req.x = 5.5;
                        req.y = 5.5;
                        req.theta = 0;
                        req.name = "turtle1";

                        bool spawnSuccess = spawnClient.call(req, resp);
                        if(spawnSuccess){
                        ROS_INFO_STREAM("Spawned a turtle named "<<resp.name);
                        }else{
                        ROS_INFO_STREAM("Failed to spawn.");
                        }
                        ///////////////////////////////////////////////////////////////////////
                        break;
                }
            }

            if(mNum==100){
                if(circleNum==0){
                    if (turYpos>10)
                        temp = true;
                    if(temp==true && turYpos<5.6 && turTheta>0){
                        circleNum = 1;
                        temp = false;
                    }
                }
                if(circleNum==1){
                    if(turTheta>-1.5708 && turXpos<5.5)
                        circleNum = 2;
                }
                if(circleNum==2){
                    if(turXpos>5.5)
                        circleNum = 3;
                }
                if(circleNum==3){
                    if(turXpos<5.5)
                        circleNum = 4;
                }
                if(circleNum==4){
                    if(turTheta>0)
                        circleNum = 5;
                }
                float oAngVel = 120 * M_PI / 180.0;
                switch(circleNum) {
                    case 0:
                        msg = moveTurtle(5.0, oAngVel);
                        break;
                    case 1:
                        msg = moveTurtle(5.0, -oAngVel);
                        break;
                    case 2:
                        msg = moveTurtle(2.5, -oAngVel);
                        break;
                    case 3:
                        msg = moveTurtle(2.5, oAngVel);
                        break;
                    case 4:
                        msg = moveTurtle(0.0, oAngVel);
                        break;
                    case 5:
                        msg = moveTurtle(0.0, 0.0);
                        break;
                }
            }
            pub.publish(msg);            
        }
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}
geometry_msgs::Twist moveTurtle(float xLin, float zAng)
{
    geometry_msgs::Twist tempMsg;
    tempMsg.linear.x = xLin;
    tempMsg.angular.z = zAng;
    return tempMsg;
}