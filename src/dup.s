.type dup, @function

.globl dup
dup:
  movq $32, %rax
  syscall
  ret

