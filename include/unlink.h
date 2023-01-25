#ifndef __UNLINK_H__
#define __UNLINK_H__

int unlink(const char *pathname);
int unlinkat(int dirfd, const char *pathname, int flags);

#endif  //__UNLINK_H__

