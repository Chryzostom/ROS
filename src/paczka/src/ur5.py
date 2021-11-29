#!/usr/bin/python

import socket
import struct
from sensor_msgs.msg import JointState
import rospy


def main():
	rospy.init_node('ur5')
	pub = rospy.Publisher('/joint_states', JointState, queue_size = 100)

	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(("127.0.0.1", 30013))

	while not rospy.is_shutdown():
		msg = s.recv(1000)
		if (len(msg) >= 1000):
			j1 = struct.unpack(">dddddd",msg[252:300])
			wiadomosc = JointState()
			wiadomosc.header.stamp = rospy.Time.now()
			wiadomosc.name = ["base", "shoulder", "elbow", "wrist_1", "wrist_2", "wrist_3"]
			wiadomosc.position = j1
			pub.publish(wiadomosc)
	s.close()


if __name__ == '__main__':
	try:
		main()
	except rospy.ROSInterruptException:
		pass
