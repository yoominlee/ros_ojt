// #include "ros/ros.h"
// #include "geometry_msgs/Twist.h" // turtle's cmd_vel
// #include "turtlesim/Pose.h" // read turtle's pos

// int main(int argc, char** argv)
// {
//     ros::init(argc,argv,"turtle0809_pub"); //3rd parameter: node name
    
//     ros::NodeHandle n;

//     // ros::Subscriber sub = n.subscribe("turtle1/cmd_vel",1000,&filterVelocityCallback);
//     // ros::ServiceServer service = n.advertiseService("turtle", add);

//     ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

//     // ros::Rate loop_rate(10);
// //
//     ros::Rate rate(10);

// int count = 0;

// geometry_msgs::Twist msg;

// while(ros::ok())
// // while(ros::ok())
// {
//     if(count < 2)
//     {
//         msg.linear.x=1;
//         msg.linear.y=0;

//         // msg.angular.z=90*3.14/180;
        
//         pub.publish(msg);
//     }
//     else if(2<count && count <4)
//     {
//         msg.linear.x=1;
//         msg.linear.y=0;
//         pub.publish(msg);
//     }

//     // msg.spawn

//     count++;

//     ros::spinOnce();

//     rate.sleep();
// }



//     // int count = 0;

//     // geometry_msgs::Twist msg;
    
//     // while(count < 30)
//     // {
//     //     if(count < 30)
//     //     {
//     //         msg.linear.x=1.0;
//     //         msg.angular.z = 0.0;
//     //         pub.publish(msg);
//     //     }
//     //     else
//     //     {
//     //         msg.linear.x=0.0;
//     //         msg.angular.z=90*3.14/180;
                
//     //         pub.publish(msg);
//     //     }

//     //     count++;

//     //     ros::spinOnce();

//     //     rate.sleep();
//     // }


//     return 0;
// }



/////////////////////////////////////////////////////////////

#include "ros/ros.h"
#include "geometry_msgs/Twist.h" // turtle's cmd_vel
#include "turtlesim/Pose.h" // read turtle's pos
#include "std_msgs/Float32.h"
#include <sstream>
class CurPos {
    // private:
    //     float xPos;
    //     float yPos;
    //     float theta;
    //     float linVel;
    //     float angVel;
    public:
        float xPos;
        float yPos;
        float theta;
        float linVel;
        float angVel;
        // float getX(){
        //     return this->xPos;
        // }
        // void setX(float x){
        //     this->xPos = x;
        // }
        // float getY(){
        //     return this->yPos;
        // }
        // void setY(float y){
        //     this->yPos = y;
        // }
        // float getTh(){
        //     return this->theta;
        // }
        // void setTh(float th){
        //     this->theta = th;
        // }

        void callback(const turtlesim::Pose::ConstPtr& msg)
        {
            // std_msgs::Float32 m;
            // m.data = lis.x;
            xPos = msg->x;
            yPos = msg->y;
            theta = msg->theta;
            ROS_INFO("x: [%f], y: [%f], theta: [%f], linVel: [%f], angVel: [%f]", msg->x, msg->y, msg->theta, msg->linear_velocity, msg->angular_velocity);
            //  ---------------------------- set tur position????/?
            // tp.setX(msg->x);
            
        }

};

int radFF = 0.7853981633974483; //45deg->rad
// void chatterCallback(const std_msgs::String::ConstPtr& msg)
int main(int argc, char** argv)
{
    // turtlesim::Pose lis;
    // turtlesim::Pose::ConstPtr mm; //----------------__!!
    // const turtlesim::Pose::ConstPtr& mgmg;
    CurPos turPos = CurPos();

    ros::init(argc,argv,"turtle0809_pub"); //3rd parameter: node name
    
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

    // ----- !!!!!!
    // ros::Subscriber sub = n.subscribe("turtle1/pose", 10, callback(mm, turPos));
    ros::Subscriber sub = n.subscribe("turtle1/pose", 10, &CurPos::callback, &turPos);
    
    // ros::ServiceServer service = n.advertiseService("turtle", add);


    // ros::Rate loop_rate(10);
//
    ros::Rate rate(10);

    int count = 0;

    int circleNum = 0;
    bool temp = false;
    bool temp2 = false;

    geometry_msgs::Twist msg;

    while(ros::ok())
    {
        if(count < 10) // 1. MOV R 5 * 10 -- [ c : 0-9 ]
        {
            msg.linear.x = 5.0;
        }
        else if (10<=count && count< 20) // 2. ROT L 90 -- [ c : 10 ]
        {
            msg.linear.x = 0.0;
            // msg.angular.z=10*3.14/180;
            msg.angular.z = 90*M_PI/180;
        }
        else if (20<=count && count< 30) // 3. MOV T 3*4 -- [ c : 21-24 ]
        {
            msg.linear.x = 4.0;
            msg.angular.z = 0;
        }
        else if (30<=count && count< 40) // 4-1. ROT L 90 -- [ c : 30 ]
        {
            msg.linear.x = 0;
            msg.angular.z = (90+45)*M_PI/180; //0.7853981633974483 * 3;
        }
        // else if (count == 32) // 4-2. ROT L 45 -- [ c : 32 ]
        // {
        //     msg.linear.x = 0;
        //     msg.angular.z = 0.7853981633974483; //0.7853981633974483 * 3;
        //     pub.publish(msg);
        // }
        else if (40<=count && count< 50) // 5. MOV T 3*4 -- [ c : 36-39 ]
        {
            msg.linear.x = 4.8;
            msg.angular.z = 0;
        }
        else if (50<=count && count< 60)
        {
            msg.linear.x = 0;
            msg.angular.z = -90*M_PI/180;
        }
        else if (60<=count && count< 70) //
        {
            msg.linear.x = 4.8;
            msg.angular.z = 0;
        }
        else if (70<=count && count< 80)
        {
            msg.linear.x = 0;
            msg.angular.z = -45*M_PI/180;
        }
        else if (80<=count && count< 90) // ~ y: 5.5
        {
            msg.linear.x = -3.95;
            msg.angular.z = 0;
        }
        else if (90<=count && count< 100) // ~ th:0
        {
            msg.linear.x = 0;
            msg.angular.z = -90*M_PI/180;
        }
        else if (100<=count && count< 110) // ~ x: 5.5 && y: 5.5
        {
            msg.linear.x = 3.2;
            msg.angular.z = 0;
            // count = 200;
        }
        else
        {
            msg.linear.x = 0;
            msg.angular.z = 0;
        }
        
        // pub.publish(msg);

        ///////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////
        // if (120<=count)
        // {
        //     // float turXpos = turPos.getX();
        //     // float turYpos = turPos.getY;
        //     // float turTheta = turPos.getTh;
        //     // float turLinVel = mm->linear_velocity;
        //     // float turAngVel = mm->angular_velocity;

        //     float turXpos = turPos.xPos;
        //     float turYpos = turPos.yPos;
        //     float turTheta = turPos.theta;

        //     int tcount = 0;

            
        //     if(circleNum==0){
        //         if (turYpos>10)
        //         {
        //             temp = true;
        //         }
        //         if(temp==true && turYpos<5.6){
        //             circleNum = 1;
        //             temp = false;
        //             temp2 = false;
        //         }
        //         // if(temp==true && turXpos<4.1){
        //         //     temp2 = true;
        //         // }
        //         // if(temp2==true && turTheta>0){
        //         //     circleNum = 1;
        //         //     temp = false;
        //         //     temp2 = false;
        //         // }
        //     }

        //     if(circleNum==1){
        //         if(turYpos<0.78 && turXpos<5.5){
        //             circleNum = 2;
        //         }
        //     }
        //     if(circleNum==2){
        //         if(turYpos>3.1 && turXpos<5.5){
        //             circleNum = 3;
        //         }
        //     }
        //     if(circleNum==3 && circleNum!=4){
        //         if(turYpos>5.5 && turXpos<5.5){
        //             circleNum = 4;
        //             tcount = count;
        //         }
        //     }


        //     switch(circleNum) {
        //     case 0:
        //         msg.linear.x = 5;
        //         msg.angular.z = 120 * M_PI / 180.0;
        //         break;
        //     case 1:
        //         msg.linear.x = 5;
        //         msg.angular.z = -120 * M_PI / 180.0;
        //         break;
        //     case 2:
        //         msg.linear.x = 2.5;
        //         msg.angular.z = -120 * M_PI / 180.0;
        //         break;
        //     case 3:
        //         msg.linear.x = 2.5;
        //         msg.angular.z = 120 * M_PI / 180.0;
        //         break;
        //     case 4:
        //         if(tcount < 10) // 1. MOV R 5 * 10 -- [ c : 0-9 ]
        //         {
        //             msg.linear.x = 0;
        //             msg.angular.z = 180 * M_PI / 180.0;
                    
        //             tcount++;
        //         }
        //         else{

        //             msg.linear.x = 0;
        //             msg.angular.z = 0;
                    
        //         }
        //         break;
        //     // default:
        //     //     // code block
        //     }
        // }

        ///////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////


        // else if (10<=count && count<20)
        // {
        //     msg.linear.x = 5;
        //     msg.angular.z = -180*M_PI/180;
        //     pub.publish(msg);
        // }
        // else if (10<=count && count<30)
        // {
        //     msg.linear.x = 1.5;
        //     msg.angular.z = -180*M_PI/180;
        //     pub.publish(msg);
        // }
        // else if (10<=count && count<40)
        // {
        //     msg.linear.x = 1.5;
        //     msg.angular.z = 180*M_PI/180;
        //     pub.publish(msg);
        // }





        // msg.spawn



            pub.publish(msg);



        count++;

        ros::spinOnce();

        rate.sleep();
    }


    return 0;
}