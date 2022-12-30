#ifndef __RECVMSG_H__
#define __RECVMSG_H__

#include "types.h"

long recvmsg(int sockfd, struct msghdr *msg, int flags);

#endif //__RECVMSG_H__

