.type process_vm_readv, @function

.globl process_vm_readv
process_vm_readv:
  movq $310, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

