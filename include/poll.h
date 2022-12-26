#ifndef __POLL_H__
#define __POLL_H__

struct pollfd {
  int fd;
  short events;
  short revents;
};

int poll(struct pollfd *fds, unsigned long nfds, int timeout);

#endif

