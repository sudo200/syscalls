#ifndef __GETPEERNAME_H__
#define __GETPEERNAME_H__

#include "types.h"

int getpeername(int sockfd, struct sockaddr *addr, unsigned int addrlen);

#endif //__GETPEERNAME_H__

