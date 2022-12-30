#ifndef __GETSOCKNAME_H__
#define __GETSOCKNAME_H__

#include "types.h"

int getsockname(int sockfd, struct sockaddr *addr, unsigned int *addrlen);

#endif //__GETSOCKNAME_H__

