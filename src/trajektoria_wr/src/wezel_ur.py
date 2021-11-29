#!/usr/bin/python

import rospy
import actionlib
from control_msgs.msg import FollowJointTrajectoryAction
from TrajektoriaInterpolowanaLiniowo import *
import socket

class TrajektoriaSerwer:
  def __init__(self, name, sock):
    self.name = name
    self.sock = sock
    self.server = actionlib.SimpleActionServer(
      self.name,
      FollowJointTrajectoryAction,
      execute_cb=self.cb,
      auto_start=False
    )
    self.server.start()
  
  def cb(self, goal):
    trajektoria_msg = goal.trajectory
    link1_idx = trajektoria_msg.joint_names.index('link1')
    link2_idx = trajektoria_msg.joint_names.index('link2')
    link3_idx = trajektoria_msg.joint_names.index('link3')
    link4_idx = trajektoria_msg.joint_names.index('link4')
    link5_idx = trajektoria_msg.joint_names.index('link5')
    link6_idx = trajektoria_msg.joint_names.index('link6')
    
    punkty = trajektoria_msg.points
    #ts = [p.time_from_start.to_sec() for p in punkty]
    ts = []
    for p in punkty:
      ts.append(p.time_from_start.to_sec())
      
    qs1 = []
    qs2 = []
    qs3 = []
    qs4 = []
    qs5 = []
    qs6 = []

    for p in punkty:
      qs1.append(p.positions[link1_idx])
      qs2.append(p.positions[link2_idx])
      qs3.append(p.positions[link3_idx])
      qs4.append(p.positions[link4_idx])
      qs5.append(p.positions[link5_idx])
      qs6.append(p.positions[link6_idx])
      
    traj1 = TrajektoriaInterpolowanaLiniowo(ts, qs1)
    traj2 = TrajektoriaInterpolowanaLiniowo(ts, qs2)
    traj3 = TrajektoriaInterpolowanaLiniowo(ts, qs3)
    traj4 = TrajektoriaInterpolowanaLiniowo(ts, qs4)
    traj5 = TrajektoriaInterpolowanaLiniowo(ts, qs5)
    traj6 = TrajektoriaInterpolowanaLiniowo(ts, qs6)
    #print(traj1)
    #print(traj1.duration())
    
    rate = rospy.Rate(125)
    t = 0
    td = ts[-1]
    while t < td:
      print('!')
      if self.server.is_preempt_requested():
        rospy.loginfo('Otrzymalem zakonczenia')
        self.server.set_preempted()
        break
    
      q1 = traj1.q(t)
      q2 = traj2.q(t)
      q3 = traj3.q(t)
      q4 = traj4.q(t)
      q5 = traj5.q(t)
      q6 = traj6.q(t)
      
      rospy.loginfo('servoj([{},{},{},{},{},{}])\n'.format(q1,q2,q3,q4,q5,q6))
      self.sock.send('servoj([{},{},{},{},{},{}],1.4,0.75,0.008)\n'.format(q1,q2,q3,q4,q5,q6))

      t += 1.0/125
      rate.sleep()
    
    self.server.set_succeeded(True)

rospy.init_node('wezel_ur')
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("127.0.0.1", 30003))

ts = TrajektoriaSerwer('trajektoria_ur', s)
rospy.spin()