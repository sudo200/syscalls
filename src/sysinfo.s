.type sysinfo, @function

.globl sysinfo
sysinfo:
  movq $99, %rax
  syscall
  ret

