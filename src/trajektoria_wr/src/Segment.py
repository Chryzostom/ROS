#!/usr/bin/python

class Segment:
  
  def __init__(self, t0=0, t1=1):
    self.t0 = t0
    self.t1 = t1
  
  def q(self, t):
    return 0.0
  
  def dq(self, t):
    return 0.0
  
  def d2q(self, t):
    return 0.0
  
  def duration(self):
    return self.t1 - self.t0
