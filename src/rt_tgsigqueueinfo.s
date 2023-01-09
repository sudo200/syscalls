.type rt_tgsigqueueinfo, @function

.globl rt_tgsigqueueinfo
rt_tgsigqueueinfo:
  movq $297, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

