# pin_location.io -- I/O pin sides for the die boundary
# Convention: N/S/E/W for the four sides of the core. Keep buses together.
# Clock and reset on the West so the CTS tree grows inward from one edge.

Pin: clk       W
Pin: rst_n     W

# Coefficient-write bundle on the North
Pin: cf_we     N
Pin: cf_addr[1] N
Pin: cf_addr[0] N
Pin: cf_din[7]  N
Pin: cf_din[6]  N
Pin: cf_din[5]  N
Pin: cf_din[4]  N
Pin: cf_din[3]  N
Pin: cf_din[2]  N
Pin: cf_din[1]  N
Pin: cf_din[0]  N

# MAC-op inputs on the South
Pin: start      S
Pin: clr_acc    S
Pin: coef_sel[1] S
Pin: coef_sel[0] S
Pin: din[7]     S
Pin: din[6]     S
Pin: din[5]     S
Pin: din[4]     S
Pin: din[3]     S
Pin: din[2]     S
Pin: din[1]     S
Pin: din[0]     S

# All outputs on the East
Pin: acc_out[15] E
Pin: acc_out[14] E
Pin: acc_out[13] E
Pin: acc_out[12] E
Pin: acc_out[11] E
Pin: acc_out[10] E
Pin: acc_out[9]  E
Pin: acc_out[8]  E
Pin: acc_out[7]  E
Pin: acc_out[6]  E
Pin: acc_out[5]  E
Pin: acc_out[4]  E
Pin: acc_out[3]  E
Pin: acc_out[2]  E
Pin: acc_out[1]  E
Pin: acc_out[0]  E
Pin: done        E
Pin: busy        E
