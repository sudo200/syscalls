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

struct timespec {
  unsigned int tv_sec;
  long tv_nsec;
};

typedef struct {
  long fds_bits[1024];
} fd_set;

struct ipc_perm {
  int __key;
  unsigned int uid;
  unsigned int gid;
  unsigned int cuid;
  unsigned int cgid;
  unsigned short mode;

  unsigned short __seq;
};

struct shmid_ds {
  struct ipc_perm shm_perm;
  unsigned long shm_segsz;
  unsigned int shm_atime;
  unsigned int shm_dtime;
  unsigned int shm_ctime;

  long shm_cpid;
  long shm_lpid;

  unsigned long shm_nattch;
};

struct itimerval {
  struct timeval it_interval;
  struct timeval it_value;
};

struct sockaddr {
  unsigned short sa_family;
  char sa_data[];
};

#endif

