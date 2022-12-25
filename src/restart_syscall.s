.type restart_syscall, @function

.globl restart_syscall
restart_syscall:
  movq $219, %rax
  syscall
  ret

