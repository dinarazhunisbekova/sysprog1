.data
vyvod:
        .string "%d\n"
massiv:
        .long 128, 10, 12, 144 
end:

.text
.globl main
main:
        xorl %eax, %eax
        movl $massiv, %ebx
        jmp check
sum_massiv:
        shrl $1, (%ebx)
        addl (%ebx), %eax
        addl $4, %ebx
        jmp check
sdvig_if_7:
        movl (%ebx), %ecx
        andl $128, %ecx
        cmpl $128, %ecx
        je   sum_massiv
        addl $4, %ebx
check:
        cmpl $end, %ebx
        jne   sdvig_if_7

        pushl %eax
        pushl $vyvod
        call printf
