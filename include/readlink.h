#ifndef __READLINK_H__
#define __READLINK_H__

long readlink(const char *pathname, char *buf, unsigned long bufsiz);
long readlinkat(int dirfd, const char *pathname, char *buf, unsigned long bufsiz);

#endif  //__READLINK_H__

