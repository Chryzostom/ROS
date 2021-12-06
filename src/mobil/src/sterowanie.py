#!/usr/bin/python

import rospy
from geometry_msgs.msg import Twist
import pygame
import pygame.key
import pygame.locals

rospy.init_node("key_teleop")
freq = rospy.get_param("~rate", 10)
forward_multiplier = rospy.get_param("~forward_multiplier", 1.0)
side_multiplier = rospy.get_param("~side_multiplier", 1.0)
pub = rospy.Publisher("cmd_vel", Twist, queue_size=100)

pygame.init()
screen = pygame.display.set_mode((100, 100))

rate = rospy.Rate(freq)
running = True
keys = {}
while running:
  for event in pygame.event.get():
    if event.type == pygame.KEYDOWN:
      keys[event.key] = True
      if event.key == pygame.K_q:
        running = False
    elif event.type == pygame.KEYUP:
      keys[event.key] = False
  
  pressed = lambda k: keys.has_key(k) and keys[k]
    
  msg = Twist()
  if pressed(pygame.K_w):
    msg.linear.x += forward_multiplier
  if pressed(pygame.K_s):
    msg.linear.x -= forward_multiplier
  if pressed(pygame.K_a):
    msg.angular.z += side_multiplier
  if pressed(pygame.K_d):
    msg.angular.z -= side_multiplier
  pub.publish(msg)

 
  rate.sleep()