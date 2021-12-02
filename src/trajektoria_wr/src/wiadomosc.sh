rostopic pub /trajektoria_ur/goal control_msgs/FollowJointTrajectoryActionGoal "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  trajectory:
    header:
      seq: 0
      stamp:
        secs: 0
        nsecs: 0
      frame_id: ''
    joint_names: ['link6', 'link5', 'link4', 'link3', 'link2', 'link1']
    points:
    - positions: [0, 0, 0, 0, 0, 0]
      effort: []
      time_from_start: {secs: 0, nsecs: 0}
    - positions: [0, -0.3, 1, 1.5, 1, 1]
      effort: []
      time_from_start: {secs: 3, nsecs: 0}
    - positions: [1, -0.6, 2, 1, 1, 2]
      effort: []
      time_from_start: {secs: 6, nsecs: 0}
  path_tolerance:
  - {name: '', position: 0.0, velocity: 0.0, acceleration: 0.0}
  goal_tolerance:
  - {name: '', position: 0.0, velocity: 0.0, acceleration: 0.0}
  goal_time_tolerance: {secs: 0, nsecs: 0}" -1