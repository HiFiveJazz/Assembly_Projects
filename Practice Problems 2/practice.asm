.text
  .align 4
  .globl OperationMat
  .type OperationMat, @function
OperaMat:
// @Mat is @ 8[ebp]
// jump is @ 12[ebp]
// j @ -12[ebp]
// i @ -8[ebp]
// res @ -4[ebp]
  pushl %ebp
  movl %esp, %ebp
  subl $12, %esp
  pushl %ebx //j 
  pushl %esi //i
  pushl %edi //res
  movl $0, -4(%ebp) // j = 0
  movl $0, -8(%ebp) // i = 0
for1: 
cmpl $3,-8(%ebp)
jge endfor1
movl $0, -12(%ebp)
for2:
cmpl $3,-12(%ebp)
jge endfor2
movl -8(%ebp),%eax
movl 8(%ebp,%eax,16),%eax
addl -12(%ebp),%eax 
subl %eax, -4(%ebp)
 
incl -12(%ebp)
jmp for2
endfor2:
movl 12(%ebp), %edx
addl %edx, -8(%ebp)
endfor1:
movl -4(%ebp), %eax
popl %edi //res
popl %esi //i
popl %ebx //j 
movl, %ebp, %esp
popl %ebp
ret
