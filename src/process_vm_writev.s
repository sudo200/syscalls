.type process_vm_writev, @function

.globl process_vm_writev
process_vm_writev:
  movq $311, %rax
  syscall
  ret

