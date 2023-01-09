.type shmat, @function

.globl shmat
shmat:
  movq $30, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

