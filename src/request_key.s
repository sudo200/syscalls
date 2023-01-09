.type request_key, @function

.globl request_key
request_key:
  movq $249, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

