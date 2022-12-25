.type bind, @function

.globl bind
bind:
  movq $49, %rax
  syscall
  ret

