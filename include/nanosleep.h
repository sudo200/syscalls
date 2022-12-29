#ifndef __NANOSLEEP_H__
#define __NANOSLEEP_H__

#include "types.h"

int nanosleep(const struct timespec *req, struct timespec *rem);

#endif //__NANOSLEEP_H__

