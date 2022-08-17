# cmake_minimum_required(VERSION 3.0.2)
# project(week1)
# find_package(catkin REQUIRED COMPONENTS
#   roscpp
#   rospy
#   std_msgs
# )

# catkin_package(
# )
# include_directories(
#   ${catkin_INCLUDE_DIRS}
# )


# add_executable(${PROJECT_NAME}_turtle0809_pub src/turtle0809_pub.cpp)
# add_dependencies(${PROJECT_NAME}_turtle0809_pub ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


# target_link_libraries(${PROJECT_NAME}_turtle0809_pub
#    ${catkin_LIBRARIES}
#  )

##############################################################

cmake_minimum_required(VERSION 3.0.2)
project(week1)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

catkin_package(
)
include_directories(
  ${catkin_INCLUDE_DIRS}
)


add_executable(${PROJECT_NAME}_turtle0812_pub src/turtle0812_pub.cpp)
add_dependencies(${PROJECT_NAME}_turtle0812_pub ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


target_link_libraries(${PROJECT_NAME}_turtle0812_pub
   ${catkin_LIBRARIES}
 )