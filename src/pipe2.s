.type pipe2, @function

.globl pipe2
pipe2:
  movq $293, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

