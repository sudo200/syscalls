.type setregid, @function

.globl setregid
setregid:
  movq $114, %rax
  syscall
  ret

