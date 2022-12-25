.type msgsnd, @function

.globl msgsnd
msgsnd:
  movq $69, %rax
  syscall
  ret

