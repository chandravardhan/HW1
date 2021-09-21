#Initial value declaration
state, nextstate = 0, 0
num_calls = 0
start = 1
a_init = 0

def History_FSM_A38(rst, a):
    global state, nextstate
    global start
    global num_calls
    global a_init

    #Store the initial values of state and nextstate
    temp_s, temp_n = state, nextstate

    if start:
        start = 0
        if rst:
            state = 0
        else:
            state = nextstate

        if state == 0:
            start = 0
            nextstate = 3 if a else 1
        elif state == 1:
            nextstate = 3 if a else 2
        elif state == 2:
            nextstate = 3 if a else 2
        elif state == 3:
            nextstate = 4 if a else 1
        elif state == 4:
            nextstate = 4 if a else 1
        else:
            nextstate = 0
    else: start = 0
    if rst:
        state = 0
    else:
        if state == 0:
            start = 0
            nextstate = 3 if a else 1
        elif state == 1:\
            nextstate = 3 if a else 2
        elif state == 2:
            nextstate = 3 if a else 2
        elif state == 3:
            nextstate = 4 if a else 1
        elif state == 4:
            nextstate = 4 if a else 1
        else:
            nextstate = 0

    num_calls += 1
    a_init = a
    x = (((state == 1) | (state == 2)) & (not a)) | (((state == 3) | (state == 4)) & a)
    y = ((state == 2) & (not a)) | ((state == 4) & a)

    return x, y, state, nextstate, temp_s, temp_n, num_calls
