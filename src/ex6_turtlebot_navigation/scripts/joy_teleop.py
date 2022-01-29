#!/usr/bin/python

import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist


rospy.init_node("joy_teleop")

forward_axis_index = rospy.get_param("~forward_axis_index", 3)
forward_axis_multiplier = rospy.get_param("~forward_axis_multiplier", 1.0)
side_axis_index = rospy.get_param("~side_axis_index", 0)
side_axis_multiplier = rospy.get_param("~side_axis_multiplier", -1.0)

cmd_pub = rospy.Publisher("cmd_vel", Twist, queue_size=100)

def joy_cb(msg):
  cmd = Twist()
  cmd.linear.x = msg.axes[forward_axis_index] * forward_axis_multiplier
  cmd.angular.z = msg.axes[side_axis_index] * side_axis_multiplier
  cmd_pub.publish(cmd)

joy_sub = rospy.Subscriber("joy", Joy, joy_cb)

rospy.spin()

