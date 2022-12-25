.type mkdir, @function

.globl mkdir
mkdir:
  movq $83, %rax
  syscall
  ret

