.type setfsuid, @function

.globl setfsuid
setfsuid: 
  movq $122, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

