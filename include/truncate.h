#ifndef __TRUNCATE_H__
#define __TRUNCATE_H__

int truncate(const char *path, int length);

int ftruncate(int fd, int length);

#endif  //__TRUNCATE_H__

