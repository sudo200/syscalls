.type request_key, @function

.globl request_key
request_key:
  movq $249, %rax
  syscall
  ret

