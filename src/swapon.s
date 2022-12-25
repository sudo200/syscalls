.type swapon, @function

.globl swapon
swapon:
  movq $167, %rax
  syscall
  ret

