#!/usr/bin/python

from TrajektoriaZSegmentow import TrajektoriaZSegmentow
from SegmentStaleV import SegmentStaleV


class TrajektoriaInterpolowanaLiniowo(TrajektoriaZSegmentow):
  
  def __init__(self, ts, qs):
    TrajektoriaZSegmentow.__init__(self)
    
    assert(len(ts) == len(qs))
    
    n = len(ts)
    
    for i in range(0, n-1):
      delta_q = qs[i+1] - qs[i]
      delta_t = ts[i+1] - ts[i]
      v = delta_q / delta_t
      seg = SegmentStaleV(qs[i], v, ts[i], ts[i+1])
      self.dodaj_segment(seg)