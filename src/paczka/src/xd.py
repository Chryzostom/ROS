def handle_moveptpq(q):
    pol = "movej({})\n"
    cmd = pol.format(q)
    #s.send(cmd)
    print(cmd)

q=[1,2,3,4,5,6]
handle_moveptpq(q)