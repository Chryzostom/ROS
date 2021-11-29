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
      velocities: [0]
      accelerations: [0]
      effort: [0]
      time_from_start: {secs: 0, nsecs: 0}
    - positions: [2, 2, 2, 2, 2, 2]
      time_from_start: {secs: 1, nsecs: 0}
  path_tolerance:
  - {name: '', position: 0.0, velocity: 0.0, acceleration: 0.0}
  goal_tolerance:
  - {name: '', position: 0.0, velocity: 0.0, acceleration: 0.0}
  goal_time_tolerance: {secs: 0, nsecs: 0}" -1