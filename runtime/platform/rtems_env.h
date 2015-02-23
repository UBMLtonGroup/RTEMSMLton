#include <unistd.h>
#include <rtems.h>
#include <dirent.h>
#include <inttypes.h>
#include <sys/socket.h>
#include <sys/resource.h>
#include <termios.h>
#include <limits.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/un.h>
#include <sys/utsname.h>
#include <sys/wait.h>
#include <syslog.h>
#include <sys/sysctl.h>
#include <utime.h>
#include <rtems/endian.h>
#include <netinet/in.h>
#include <netdb.h>
#include <grp.h>
#include <pwd.h>
#include <netinet/tcp.h>

#define MSG_DONTWAIT 0x80
#define MLTON_WRAPPER
#define sockaddr_storage sockaddr
struct sockaddr;
typedef unsigned int MLton_nfds_t;
#define nfds_t MLton_nfds_t

#define MLton_Platform_OS_host "rtems"

#ifdef __sparc__
#undef fegetround
#undef fesetround
#define fegetround MLton_fegetround
#define fesetround MLton_fesetround
int fegetround(void);
int fesetround(int rounding_mode);
#endif

#define FE_TONEAREST  0
#define FE_DOWNWARD   1
#define FE_UPWARD     2
#define FE_TOWARDZERO 3


#define HAS_FEROUND            TRUE
#define HAS_MSG_DONTWAIT       TRUE
#define HAS_REMAP FALSE
#define HAS_SIGALTSTACK FALSE
#define HAS_SPAWN FALSE
#define HAS_TIME_PROFILING FALSE


#ifndef RLIMIT_CPU
#define RLIMIT_CPU      0               /* CPU time in seconds */
#endif

#ifndef RLIMIT_FSIZE
#define RLIMIT_FSIZE    1               /* Maximum filesize */
#endif

#ifndef RLIMIT_DATA
#define RLIMIT_DATA     2               /* max data size */
#endif

#ifndef RLIMIT_STACK
#define RLIMIT_STACK    3               /* max stack size */
#endif

#ifndef RLIMIT_CORE
#define RLIMIT_CORE     4               /* max core file size */
#endif

#ifndef RLIMIT_NOFILE
#define RLIMIT_NOFILE   5               /* max number of open files */
#endif

#ifndef RLIMIT_OFILE
#define RLIMIT_OFILE    RLIMIT_NOFILE   /* BSD name */
#endif

#ifndef RLIMIT_AS
#define RLIMIT_AS       6               /* address space (virt. memory) limit */
#endif

#define RLIMIT_NLIMITS  7               /* upper bound of RLIMIT_* defines */
#define RLIM_NLIMITS    RLIMIT_NLIMITS

#ifndef RLIM_INFINITY
#define RLIM_INFINITY   (0xffffffffUL)
#endif

typedef unsigned long MLton_rlim_t;
#undef rlim_t
#define rlim_t MLton_rlim_t

struct MLton_rlimit {
        rlim_t  rlim_cur;
        rlim_t  rlim_max;
};
#undef rlimit
#define rlimit MLton_rlimit

MLTON_WRAPPER int MLton_getrlimit (int resource, struct rlimit *rlim);
MLTON_WRAPPER int MLton_setrlimit (int resource, const struct rlimit *rlim);
#undef getrlimit
#undef setrlimit
#define getrlimit MLton_getrlimit
#define setrlimit MLton_setrlimit

#ifndef POLLIN
#define POLLIN 1
#endif

#ifndef POLLPRI
#define POLLPRI 2
#endif

#ifndef POLLOUT
#define POLLOUT 4
#endif

struct MLton_pollfd {
        short events;
        int fd;
        short revents;
};
#undef pollfd
#define pollfd MLton_pollfd

MLTON_WRAPPER int MLton_poll (struct pollfd *ufds, nfds_t nfds, int timeout);
#undef poll
#define poll MLton_poll

