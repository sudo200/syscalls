.type ioprio_set, @function

.globl ioprio_set
ioprio_set:
  movq $251, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

