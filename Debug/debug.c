#include "debug.h"

#include <stdarg.h>
#include <string.h>
#include <stdio.h>

#include "main.h"

static char dtx_buffer[64];
extern UART_HandleTypeDef huart3;

#ifdef DBG_ENABLE_PRINTF
PUTCHAR_PROTOTYPE
{
  HAL_UART_Transmit(&huart3, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
  return ch;
}
#endif

void DBG_PrintI(char * message,...) {
    #ifdef DBG_ENABLE_PRINTI
        va_list args;

        va_start(args, message);
        vsprintf(dtx_buffer, message, args);
        va_end (args);

        //transmit the message over UART3
        HAL_UART_Transmit(&huart3,(uint8_t*)dtx_buffer, strlen(dtx_buffer), DBG_TIMEOUT);
    #endif
}
