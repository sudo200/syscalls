.type process_vm_writev, @function

.globl process_vm_writev
process_vm_writev:
  movq $311, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

