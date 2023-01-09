.type readlink, @function

.globl readlink
readlink: 
 movq $89, %rax
 syscall
 cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
 ret

