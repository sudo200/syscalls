.type preadv, @function

.globl preadv
preadv:
  movq $295, %rax
  syscall
  ret

