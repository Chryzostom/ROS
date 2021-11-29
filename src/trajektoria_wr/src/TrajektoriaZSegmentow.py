#!/usr/bin/python

from Trajektoria import Trajektoria

class TrajektoriaZSegmentow(Trajektoria):
  """Implementacja trajektorii zlozonej z segmentow"""
  
  def __init__(self):
    Trajektoria.__init__(self)
    self.segmenty = []
  
  def q(self, t):
    for s in self.segmenty:
      if s.t0 <= t and s.t1 >= t:
        return s.q(t)
  
  def dq(self, t):
    for s in self.segmenty:
      if s.t0 <= t and s.t1 >= t:
        return s.dq(t)
  
  def d2q(self, t):
    for s in self.segmenty:
      if s.t0 <= t and s.t1 >= t:
        return s.d2q(t)
  
  def duration(self):
    czas = 0.0
    for s in self.segmenty:
      czas += s.duration()
    return czas
    
  def dodaj_segment(self, segment):
    self.segmenty.append(segment)
