#ifndef __SHMCTL_H__
#define __SHMCTL_H__

#include "types.h"

int shmctl(int shmid, int cmd, struct shmid_ds *buf);

#endif //__SHMCTL_H__

