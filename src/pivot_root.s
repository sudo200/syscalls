.type pivot_root, @function

.globl pivot_root
pivot_root:
  movq $155, %rax
  syscall
  ret

