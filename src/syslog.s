.type syslog, @function

.globl syslog
syslog:
  movq $103, %rax
  syscall
  ret

