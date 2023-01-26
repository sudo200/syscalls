#ifndef __CHMOD_H__
#define __CHMOD_H__

int chmod(const char *path, unsigned int mode);
int fchmod(int fd, unsigned int mode);
int fchmodat(int dirfd, const char *path, unsigned int mode, int flags);

#endif  //__CHMOD_H__

