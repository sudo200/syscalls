.type rt_tgsigqueueinfo, @function

.globl rt_tgsigqueueinfo
rt_tgsigqueueinfo:
  movq $297, %rax
  syscall
  ret

