.type ioprio_get, @function

.globl ioprio_get
ioprio_get:
  movq $252, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

