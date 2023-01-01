studentnum = 20332706

#for i in range (0, 128):
#    print('x"000000', f'{6 + i:x}', '", ', sep = '')




for i in range(6, 39):
    print("    wait until Clock_TB'event and Clock_TB = '1';", '\n    Address <= "00000000000000000000000000', f'{i:b}', '"\n', sep='')