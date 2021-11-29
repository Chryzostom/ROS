#!/usr/bin/python

from Segment import Segment

class SegmentStaleV(Segment):
  
  def __init__(self, q0, v, t0=0, t1=1):
    Segment.__init__(self, t0, t1)
    self.q0 = q0
    self.v = v
  
  def q(self, t):
    return (t - self.t0) * self.v + self.q0
  
  def dq(self, t):
    return self.v
  
  def d2q(self, t):
    return 0.0
