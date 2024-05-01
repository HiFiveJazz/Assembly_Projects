section .data
    msg db 'Hello, World!', 0

section .text
    global _start
    
_start:
    pushl ebp
    movl esp, ebp
    subl 8, esp
    movl 8(esp), edi #@M -> 8[%ebp]
    movl 12(esp), esi #@X -> 12[%ebp]
; Outer For Loop
    xorl ecx,ecx #set ecx equal to zero, i -> %ecx
fori: 
    cmpl $50, ecx
    jge endi

; Inner For Loop
    xorl edx,edx #set ecx equal to zero, j -> %ecx
forj: 
    cmpl $80, edx
    jge endj

    imull $80, ecx, eax #80*i
    addl edx, eax #80*i + j
    movl (esi,eax,4), ebx # ebx = @X + (80i + j)4, %ebx <- X[i][j]
    movl ebx, (edi, eax, 4) #M[i][j] <- %ebx

    incl edx
    jmp forj
endj:
    incl ecx
    jmp fori

endi:
    movl ebp, esp
    popl ebp
    ret
