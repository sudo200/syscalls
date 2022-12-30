#ifndef __WAIT4_H__
#define __WAIT4_H__

#include "types.h"

long wait4(long pid, int *wstatus, int options, struct rusage *rusage);

#endif //__WAIT4_H__

