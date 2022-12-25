.type perf_event_open, @function

.globl perf_event_open
perf_event_open:
  movq $298, %rax
  syscall
  ret

