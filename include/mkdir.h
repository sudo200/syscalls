#ifndef __MKDIR_H__
#define __MKDIR_H__

int mkdir(const char *pathname, unsigned int mode);
int mkdirat(int dirfd, const char *pathname, unsigned int mode);

#endif  //__MKDIR_H__

