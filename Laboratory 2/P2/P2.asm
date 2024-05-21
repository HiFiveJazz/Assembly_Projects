; Activation Block:
; ------------------------
; |   local variable i   |
; ------------------------
; |         S1.k         |
; ------------------------
; |         S1.m         |
; ------------------------
; |          b           |
; ------------------------
; |         &S1          |
; ------------------------
pushl %ebp
movl %esp, %ebp
movb 8(%ebp),%al

compb %al, 20(%ebp)
jne else
movl $0, %eax
jmp endif
else: 
  movl 16(%ebp), %ecx
  movl (%ecx), %eax
endif:
  addl 4(%ebp),%eax
  movl %ebp, %esp
  popl %ebp
  ret
