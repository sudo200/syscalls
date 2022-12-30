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

struct msghdr {
  void *msg_name;
  unsigned int msg_namelen;
  struct iovec *msg_iov;
  unsigned long msg_iovlen;
  void *msg_control;
  unsigned long msg_controllen;
  int msg_flags;
};

struct rusage {
  struct timeval ru_utime;
  struct timeval ru_stime;
  long ru_maxrss;
  long ru_ixrss;
  long ru_idrss;
  long ru_isrss;
  long ru_minflt;
  long ru_majflt;
  long ru_nswap;
  long ru_inblock;
  long ru_oublock;
  long ru_msgsnd;
  long ru_msgrcv;
  long ru_nsignals;
  long ru_nvcsw;
  long ru_nivcsw;
};

#endif

