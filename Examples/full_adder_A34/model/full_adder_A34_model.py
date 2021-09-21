sa_p, b_p, c_in_p = 0, 0, 0
p, g = 0, 0
p_s, p_c_out = 0, 0
delay = 0

def full_adder_A34(a, b, c_in):
    global a_p, b_p, c_in_p
    global delay
    global p, g
    global p_s, p_c_out
    temp_p, temp_g = 0, 0

    temp_p = p
    temp_g = g

    if delay == 0:
        delay = 1

        #Inputs values that were stored
        a_p = a
        b_p = b
        c_in_p = c_in

        #Compute p and g
        p = a ^ b
        g = a & b
        return p, g, p_s, p_c_out, temp_p, temp_g, 11
    elif (a != a_p) | (b != b_p) | (c_in != c_in_p):
        a_p = a
        b_p = b
        c_in_p = c_in

        #Computing sum, c_out, p, and g
        p_s = temp_p ^ c_in
        p_c_out = temp_g | (temp_p & c_in)
        p = a ^ b
        g = a & b
        return p, g, p_s, p_c_out, temp_p, temp_g, 22
    else:
        #Since there is no change in inputs, therefore, the outputs remain the same
        return temp_p, temp_g, p_s, p_c_out, temp_p, temp_g, 33
