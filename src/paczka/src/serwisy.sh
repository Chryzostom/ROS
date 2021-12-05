rosservice call /MovePTP_Q "[0, 0, 0, 0, 0, 0]"
sleep 4
rosservice call /MovePTP_P "[0.3, 0.2, 0.1, 90, 90, 0]"
sleep 4
rosservice call /MoveLin_Q "[90, -90, 0, 0, 180, 0]"
sleep 4
rosservice call /MoveLin_P "[0.5, 0, 0.3, 0, 180, 0]"
sleep 4
rosservice call /MovePTP_Q "[0, 0, 0, 0, 0, 0]"
sleep 1
rosservice call /Stop "2"