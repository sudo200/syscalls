.type swapon, @function

.globl swapon
swapon:
  movq $167, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

