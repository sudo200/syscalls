#ifndef __TYPES_H__
#define __TYPES_H__

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

struct iovec {
  void *iov_base;
  unsigned long iov_len;
};

struct timeval {
  unsigned int tv_sec;
  unsigned long tv_usec;
};

typedef struct {
  long fds_bits[1024];
} fd_set;

#endif

