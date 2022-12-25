.type gettid, @function

.globl gettid
gettid:
  movq $186, %rax
  syscall
  ret

