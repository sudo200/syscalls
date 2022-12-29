#ifndef __SETITIMER_H__
#define __SETITIMER_H__

#include "types.h"

int setitimer(int which, const struct itimerval *new_value, struct itimerval *old_value);

#endif //__SETITIMER_H__

