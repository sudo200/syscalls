.type kexec_load, @function

.globl kexec_load
kexec_load:
  movq $246, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

