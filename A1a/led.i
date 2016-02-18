# 1 "led.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 291 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "led.c" 2




# 1 "/usr/lib/avr/include/avr/io.h" 1
# 99 "/usr/lib/avr/include/avr/io.h"
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1
# 126 "/usr/lib/avr/include/avr/sfr_defs.h"
# 1 "/usr/lib/avr/include/inttypes.h" 1
# 37 "/usr/lib/avr/include/inttypes.h"
# 1 "/usr/lib/avr/include/stdint.h" 1
# 121 "/usr/lib/avr/include/stdint.h"
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/avr/include/stdint.h"
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/avr/include/stdint.h"
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/avr/include/stdint.h"
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/avr/include/stdint.h"
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 38 "/usr/lib/avr/include/inttypes.h" 2
# 77 "/usr/lib/avr/include/inttypes.h"
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/avr/include/avr/sfr_defs.h" 2
# 100 "/usr/lib/avr/include/avr/io.h" 2
# 222 "/usr/lib/avr/include/avr/io.h"
# 1 "/usr/lib/avr/include/avr/iom328p.h" 1
# 223 "/usr/lib/avr/include/avr/io.h" 2
# 432 "/usr/lib/avr/include/avr/io.h"
# 1 "/usr/lib/avr/include/avr/portpins.h" 1
# 433 "/usr/lib/avr/include/avr/io.h" 2

# 1 "/usr/lib/avr/include/avr/common.h" 1
# 435 "/usr/lib/avr/include/avr/io.h" 2

# 1 "/usr/lib/avr/include/avr/version.h" 1
# 437 "/usr/lib/avr/include/avr/io.h" 2


# 1 "/usr/lib/avr/include/avr/fuse.h" 1
# 239 "/usr/lib/avr/include/avr/fuse.h"
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 440 "/usr/lib/avr/include/avr/io.h" 2


# 1 "/usr/lib/avr/include/avr/lock.h" 1
# 443 "/usr/lib/avr/include/avr/io.h" 2
# 5 "led.c" 2

# 1 "/usr/lib/avr/include/util/delay.h" 1
# 43 "/usr/lib/avr/include/util/delay.h"
# 1 "/usr/lib/avr/include/util/delay_basic.h" 1
# 40 "/usr/lib/avr/include/util/delay_basic.h"
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/usr/lib/avr/include/util/delay_basic.h"
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/lib/avr/include/util/delay_basic.h"
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/usr/lib/avr/include/util/delay.h" 2
# 1 "/usr/lib/avr/include/math.h" 1
# 127 "/usr/lib/avr/include/math.h"
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/lib/avr/include/math.h"
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/usr/lib/avr/include/math.h"
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/usr/lib/avr/include/math.h"
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/usr/lib/avr/include/math.h"
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/usr/lib/avr/include/math.h"
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/usr/lib/avr/include/math.h"
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/usr/lib/avr/include/math.h"
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/usr/lib/avr/include/math.h"
extern double round (double __x) __attribute__((__const__));
# 439 "/usr/lib/avr/include/math.h"
extern long lround (double __x) __attribute__((__const__));
# 453 "/usr/lib/avr/include/math.h"
extern long lrint (double __x) __attribute__((__const__));
# 45 "/usr/lib/avr/include/util/delay.h" 2
# 84 "/usr/lib/avr/include/util/delay.h"
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/usr/lib/avr/include/util/delay.h"
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((16000000) / 1e3) * __ms;
# 161 "/usr/lib/avr/include/util/delay.h"
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/usr/lib/avr/include/util/delay.h"
}
# 223 "/usr/lib/avr/include/util/delay.h"
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((16000000) / 1e6) * __us;
# 243 "/usr/lib/avr/include/util/delay.h"
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 261 "/usr/lib/avr/include/util/delay.h"
}
# 6 "led.c" 2


int main(void){

    (*(volatile uint8_t *)((0x04) + 0x20)) |= (1 << (5));

    while(1){

        (*(volatile uint8_t *)((0x05) + 0x20)) |= (1 << (5));
        _delay_ms(1000) ;


        (*(volatile uint8_t *)((0x05) + 0x20)) &= ~(1 << (5));
        _delay_ms(1000);
    }
 }
