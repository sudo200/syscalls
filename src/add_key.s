.type add_key, @function

.globl add_key
add_key:
  movq $248, %rax
  syscall
  ret

