#冒泡排序算法
.text
main:
	lw   t0,0(x0)  # R[t0]<-Mem[0],t0保存排序数量n,待排序的数字个数n存在0x00处
	addi a1,x0,1   # a1，保存常量1
	add  a2,t0,x0  # a2，保存i，初始值为i=n
L1:
	addi a3,x0,1   # a3，保存j，初始值为j=1
L2:
     slli a4,a3,2   # a4保存a[j]地址
	lw  a6,0(a4)  # 读取第j个元素
	lw  a7,4(a4)  # 读取第j+1个元素
	bge a7,a6,L4  # a[j]>=a[j+1] 跳转,按照带符号数比较
	sw   a7,0(a4)  # 交换存储
	sw   a6,4(a4)  # 交换存储
L4:	
	addi a3,a3,1   # j=j+1
	bltu a3,a2,L2  # if j<i then 循环，序号按照无符号数比较
L3:
    sub   a2,a2,a1  # i--
    bne   a2,a1,L1  # if i>1 then 循环 else 则结束
    ecall           # 结束执行
