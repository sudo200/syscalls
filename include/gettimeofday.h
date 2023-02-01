#ifndef __GETTIMEOFDAY_H__
#define __GETTIMEOFDAY_H__

int gettimeofday(struct timeval *tv, struct timezone *tz);

int settimeofday(const struct timeval *tv, const struct timezone *tz);

#endif  //__GETTIMEOFDAY_H__

