.type ioprio_get, @function

.globl ioprio_get
ioprio_get:
  movq $252, %rax
  syscall
  ret

