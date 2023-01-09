.type ptrace, @function

.globl ptrace
ptrace:
  movq $101, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

