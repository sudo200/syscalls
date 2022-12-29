#ifndef __CONNECT_H__
#define __CONNECT_H__

#include "types.h"

int connect(int sockfd, const struct sockaddr *addr, unsigned int addrlen);

#endif //__CONNECT_H__

