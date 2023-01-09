.type getpgrp, @function

.globl getpgrp
getpgrp:
  movq $111, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

