#ifndef __RECVFROM_H__
#define __RECVFROM_H__

#include "types.h"

long recvfrom(int sockfd, void *buf, unsigned long len, int flags, struct sockaddr *src_addr);

#endif //__RECVFROM_H__

