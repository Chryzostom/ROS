#!/usr/bin/python

import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("127.0.0.1", 30003))

s.send("movej([0, 0, 0, 0, 0, 0])\n")
s.close()