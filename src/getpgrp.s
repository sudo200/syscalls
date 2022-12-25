.type getpgrp, @function

.globl getpgrp
getpgrp:
  movq $111, %rax
  syscall
  ret

