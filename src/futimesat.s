.type futimesat, @function

.globl futimesat
futimesat:
  movq $261, %rax
  syscall
  ret

