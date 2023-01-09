.type signalfd4, @function

.globl signalfd4
signalfd4:
  movq $289, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

