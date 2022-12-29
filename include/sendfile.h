#ifndef __SENDFILE_H__
#define __SENDFILE_H__

long sendfile(int out_fd, int in_fd, int *offset, unsigned long count);

#endif //__SENDFILE_H__

