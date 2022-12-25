.type kexec_load, @function

.globl kexec_load
kexec_load:
  movq $246, %rax
  syscall
  ret

