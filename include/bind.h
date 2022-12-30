#ifndef __BIND_H__
#define __BIND_H__

#include "types.h"

int bind(int sockfd, const struct sockaddr *addr, unsigned int addrlen);

#endif //__BIND_H__

