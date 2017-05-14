#ifndef _ANDROID_UCONTEXT
#define _ANDROID_UCONTEXT

typedef int sig_atomic_t;

typedef unsigned long __kernel_sigset_t[2];
#ifdef _NSIG
 #undef _NSIG  
 #define _NSIG  64
#endif
 
#include "machine/ucontext.h"

#endif /*ANDROID_UCONTEXT*/
