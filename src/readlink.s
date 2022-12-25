.type readlink, @function

.globl readlink
readlink: 
 movq $89, %rax
 syscall
 ret

