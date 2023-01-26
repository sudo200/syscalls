#ifndef __CHOWN_H__
#define __CHOWN_H__

int chown(const char *pathname, unsigned int owner, unsigned int group);
int fchown(int fd, unsigned int owner, unsigned int group);
int lchown(const char *pathname, unsigned int owner, unsigned int group);
int fchmodat(int dirfd, const char *pathname, unsigned int owner, unsigned int group);

#endif  //__CHOWN_H__

