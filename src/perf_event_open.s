.type perf_event_open, @function

.globl perf_event_open
perf_event_open:
  movq $298, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

