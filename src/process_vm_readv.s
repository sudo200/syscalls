.type process_vm_readv, @function

.globl process_vm_readv
process_vm_readv:
  movq $310, %rax
  syscall
  ret

