.type ioprio_set, @function

.globl ioprio_set
ioprio_set:
  movq $251, %rax
  syscall
  ret

