#ifndef __SYMLINK_H__
#define __SYMLINK_H__

int symlink(const char *target, const char *linkpath);
int symlinkat(const char *target, int newdirfd, const char *linkpath);

#endif  //__SYMLINK_H__

