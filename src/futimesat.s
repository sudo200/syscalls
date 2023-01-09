.type futimesat, @function

.globl futimesat
futimesat:
  movq $261, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

