.type setpgid, @function

.globl setpgid
setpgid:
  movq $109, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

