.type sysfs, @function

.globl sysfs
sysfs:
  movq $139, %rax
  syscall
  ret

