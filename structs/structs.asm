; Subroutine
push ebp
movl esp, ebp
movl 8(ebp),edx
; Body
; -------- <-- +0 Bytes {8(ebp)}
; |  i   | 
; -------- <-- +4 Bytes {12(ebp)}
; | a[0] |
; --------  {16(ebp)}
; | a[1] |
; -------- {20(ebp)}
; | a[2] |
; -------- <-- +16 Bytes {24(ebp)} 
; |  p   |
; --------
movl $1, (edx) #We denote accessing memory addresses with (), 
; If this was not done and we simple put edx, we would be putting it in the 
; the register edx, not the variable i located at 8(ebp)
movl $0,12(edx) 
leal 4(edx),eax ; leal op1,op2: moves memory address of op1 to op2 
movl eax,16(edx)
popl ebp
ret
