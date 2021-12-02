#!/usr/bin/python

import rospy
import socket
from paczka.srv import MovePTP_Q, MovePTP_P, MoveLin_Q, MoveLin_P, Stop
from std_msgs.msg import Float32
import math

def connect(mess):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("127.0.0.1", 30003))
    s.send(mess)
    s.close()

def handle_MovePTP_Q(req):
    if len(req.q) == 6:
        rospy.loginfo("Podano prawidlowa pozycje")
        qd = list(req.q)
        qr = [x * (math.pi / 180) for x in qd]
        cmd = "movej({})\n".format(qr)
    else:
        rospy.loginfo("Podano nieprawidlowa pozycje")
    connect(cmd)
    
def handle_MovePTP_P(req):
    if len(req.q) == 6:
        rospy.loginfo("Podano prawidlowa pozycje")
        q = list(req.q)
        for idx, qr in enumerate(q):
            if (len(q) - idx) <= 3:
                qr = qr * (math.pi / 180)
                q[idx] = qr
        cmd = "movej(p{})\n".format(q)
    else:
        rospy.loginfo("Podano nieprawidlowa pozycje")
    connect(cmd)

def handle_MoveLin_Q(req):
    if len(req.q) == 6:
        rospy.loginfo("Podano prawidlowa pozycje")
        qd = list(req.q)
        qr = [x * (math.pi / 180) for x in qd]
        cmd = "movel({})\n".format(qr)
    else:
        rospy.loginfo("Podano nieprawidlowa pozycje")
    connect(cmd)

def handle_MoveLin_P(req):
    if len(req.q) == 6:
        rospy.loginfo("Podano prawidlowa pozycje")
        q = list(req.q)
        for idx, qr in enumerate(q):
            if (len(q) - idx) <= 3:
                qr = qr * (math.pi / 180)
                q[idx] = qr
        cmd = "movel(p{})\n".format(q)
    else:
        rospy.loginfo("Podano nieprawidlowa pozycje")
    connect(cmd)

def handle_Stop(req):
    a = req.a
    cmd = "stopj({})\n".format(a)
    connect(cmd)

def main():
    rospy.init_node('serwis')
    srv = rospy.Service('MovePTP_Q', MovePTP_Q, handle_MovePTP_Q)
    srv1 = rospy.Service('MovePTP_P', MovePTP_P, handle_MovePTP_P)
    srv2 = rospy.Service('MoveLin_Q', MoveLin_Q, handle_MoveLin_Q)
    srv3 = rospy.Service('MoveLin_P', MoveLin_P, handle_MoveLin_P)
    srv4 = rospy.Service('Stop', Stop, handle_Stop)
    rospy.spin()

if __name__=="__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
