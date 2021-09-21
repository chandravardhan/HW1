def gates_A4(a, b):
    y1, y2, y3, y4, y5 = 00, 00, 00, 00, 00
    offset = 4

    y1 = a & b   #AND
    y2 = a | b   #OR
    y3 = a ^ b   #XOR
    y4 = ~(a & b)  #NAND
    y5 = ~(a | b)  #NOR

    return y1, y2, y3, y4, y5
