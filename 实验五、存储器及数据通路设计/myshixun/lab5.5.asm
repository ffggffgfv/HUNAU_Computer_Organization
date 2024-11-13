lui x5,0xfedca
addi x5,x5,-100
ori x0,x0,0x10
sw x5,100(x0)
lb x6,100(x0)
sh x6,104(x0)
lhu x7,100(x0)
sh x7,108(x0)
srai x8,x5,4
xor x9,x8,x6
sll x10,x9,x6
add x11,x10,x8
slt x12,x5,x11
sltu x13,x5,x11
sub x15,x5,x11
sw x15,112(x0)
blt x15,x6,lable0
lable0:     bge x15,x6,label1
label1:    jal x16,label2
label2:    jalr x17,x16,0x4
auipc x18,1
