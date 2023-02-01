#ifndef __GETRLIMIT_H__
#define __GETRLIMIT_H__

int getrlimit(int resource, struct rlimit *rlim);

int setrlimit(int resource, const struct rlimit *rlim);

int prlimit(long pid, int resource, const struct rlimit *new_limit, struct rlimit *old_limit);

#endif  //__GETRLIMIT_H__

