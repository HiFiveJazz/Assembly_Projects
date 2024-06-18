.text
  .align 4
  .globl FindElement
  .type FindElement,@function
FindElement:
  pushl %ebp
  movl %esp,%ebp
  # v[*mid].k
  movl 16(%ebp), %eax
  movl (%eax), %eax
  movl 32(%ebp, %eax, $12), %eax
  movl (%eax), %eax
  compl 24(%ebp),%eax
  jne else1
if1:
  movl 16(%ebp),%eax
  movl (%eax),%eax
  jmp endif1
if2:
  movl 16(%ebp),%eax 
  movl %ecx, (%eax)
  movl 8(%ebp), (%edx)
  movl (%edx), (%edx)
  incl %edx
  movl 8(%ebp), %ecx
  movl %edx,(ecx)
else1: 
  movl 16(%ebp),%eax
  movl (%eax),%eax

  movl 12(%ebp),%ecx
  movl (%ecx),%ecx

  compl %ecx,%eax
  jge else2
else2:
  movl 8(%ebp),%edx
  movl (%edx),%edx
  movl 16(%ebp),%eax
  movl %edx,(%eax)
  decl %ecx
  movl 12(%ebp),%edx
  movl %ecx,(%edx)
endif1:
  movl $-1, %eax
endif2:
  ret
  movl %ebp, %esp
  popl %ebp
