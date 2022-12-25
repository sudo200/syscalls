.type fchownat, @function

.globl fchownat
fchownat:
  movq $260, %rax
  syscall
  ret

