.type shutdown, @function

.globl shutdown
shutdown:
  movq $48, %rax
  syscall
  ret

