lui x5,-1
addi x5,x5,100
sw x5,0(x0)
srai x6,x5,3
sw x6,4(x0)
lh x7,4(x0)
xori x8,x7,-1
sw x8,8(x0)
slt x9,x8,x7
sw x9,12(x0)
bne x9,x0,label2
label2:
jalr x10,x0,48
sw x10,16(x0)
auipc x11,100
