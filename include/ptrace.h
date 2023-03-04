#ifndef __PTRACE_H__
#define __PTRACE_H__

enum __ptrace_request {
  PTRACE_TRACEME = 0,
  PTRACE_PEEKTEXT,
  PTRACE_PEEKDATA,
  PTRACE_PEEKUSER,
  PTRACE_POKETEXT,
  PTRACE_POKEDATA,
  PTRACE_POKEUSER,
  PTRACE_CONT,
  PTRACE_KILL,
  PTRACE_SINGLESTEP,

  PTRACE_GETREGS = 12,
  PTRACE_SETREGS,
  PTRACE_GETFPREGS,
  PTRACE_SETFPREGS,
  PTRACE_ATTACH,
  PTRACE_DETACH,
  PTRACE_GETFPXREGS,
  PTRACE_SETFPXREGS,

  PTRACE_SYSCALL = 24,
  PTRACE_GET_THREAD_AREA,
  PTRACE_SET_THREAD_AREA,

  PTRACE_ARCH_PRCTL = 30,
  PTRACE_SYSEMU,
  PTRACE_SYSEMU_SINGLESTEP,
  PTRACE_SINGLEBLOCK,

  PTRACE_SETOPTIONS = 0x4200,
  PTRACE_GETEVENTMSG,
  PTRACE_GETSIGINFO,
  PTRACE_SETSIGINFO,
  PTRACE_GETREGSET,
  PTRACE_SETREGSET,
  PTRACE_SEIZE,
  PTRACE_INTERRUPT,
  PTRACE_LISTEN,
  PTRACE_PEEKSIGINFO,
  PTRACE_GETSIGMASK,
  PTRACE_SETSIGMASK,
  PTRACE_SECCOMP_GET_FILTER,
  PTRACE_SECCOMP_GET_METADATA,
  PTRACE_GET_SYSCALL_INFO,
  PTRACE_GET_RSEQ_CONFIGURATION,
};

long ptrace(enum __ptrace_request request, long pid, void *addr, void *data);

#endif  //__PTRACE_H__
