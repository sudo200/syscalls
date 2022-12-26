#ifndef __STAT_H__
#define __STAT_H__

struct stat {
  unsigned int device;
  long inode;
  unsigned int mode;
  long nlink;
  unsigned int uid;
  unsigned int gid;
  int offset;
  int blksize;
  int blocks;
};

int stat(const char *pathname, struct stat *statbuf);
int fstat(int fd, struct stat *statbuf);
int lstat(const char *pathname, struct stat *statbuf);

#endif

