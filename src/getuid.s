.type getuid, @function

.globl getuid
getuid:
  movq $102, %rax
  syscall
  ret

