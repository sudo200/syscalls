#ifndef __LINK_H__
#define __LINK_H__

int link(const char *oldpath, const char *newpath);
int linkat(int olddirfd, const char *oldpath, int newdirfd, const char *newpath, int flags);

#endif  //__LINK_H__

