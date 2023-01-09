.type mknodat, @function

.globl mknodat
mknodat:
  movq $259, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

