#ifndef DEBUG_H
#define DEBUG_H

void DBG_PrintI(char * message,...);

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

#define DBG_ENABLE_PRINTF
#define DBG_ENABLE_PRINTI

#define DBG_TIMEOUT         1000

#endif
