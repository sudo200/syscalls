.type ptrace, @function

.globl ptrace
ptrace:
  movq $101, %rax
  syscall
  ret

