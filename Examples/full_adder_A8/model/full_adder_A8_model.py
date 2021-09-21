def full_adder_A8(a, b, cin):
    s = a ^ b ^ cin
    cout = (a & b) | ((a ^ b) & cin)
    return s, cout
