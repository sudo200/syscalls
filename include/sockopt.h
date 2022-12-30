#ifndef __SOCKOPT_H__
#define __SOCKOPT_H__

int setsockopt(int sockfd, int level, int optname, const void *optval, unsigned int optlen);
int getsockopt(int sockfd, int level, int optname, void *optval, unsigned int *optlen);

#endif //__SOCKOPT_H__

