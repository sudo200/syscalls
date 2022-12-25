.type geteuid, @function

.globl geteuid
geteuid:
  movq $107, %rax
  syscall
  ret

