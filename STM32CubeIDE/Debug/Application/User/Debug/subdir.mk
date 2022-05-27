################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tilie/Documents/bobi/board-g0b1/NiamaGO-G0B1/Debug/debug.c 

OBJS += \
./Application/User/Debug/debug.o 

C_DEPS += \
./Application/User/Debug/debug.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Debug/debug.o: C:/Users/tilie/Documents/bobi/board-g0b1/NiamaGO-G0B1/Debug/debug.c Application/User/Debug/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx -c -I../../Core/Inc -I../../Debug/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Debug

clean-Application-2f-User-2f-Debug:
	-$(RM) ./Application/User/Debug/debug.d ./Application/User/Debug/debug.o ./Application/User/Debug/debug.su

.PHONY: clean-Application-2f-User-2f-Debug

