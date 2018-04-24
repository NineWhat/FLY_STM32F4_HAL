################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/freertos.c \
../Src/gpio.c \
../Src/i2c.c \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_hal_timebase_TIM.c \
../Src/stm32f4xx_it.c \
../Src/system_stm32f4xx.c \
../Src/tim.c \
../Src/usart.c 

OBJS += \
./Src/freertos.o \
./Src/gpio.o \
./Src/i2c.o \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_hal_timebase_TIM.o \
./Src/stm32f4xx_it.o \
./Src/system_stm32f4xx.o \
./Src/tim.o \
./Src/usart.o 

C_DEPS += \
./Src/freertos.d \
./Src/gpio.d \
./Src/i2c.d \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_hal_timebase_TIM.d \
./Src/stm32f4xx_it.d \
./Src/system_stm32f4xx.d \
./Src/tim.d \
./Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F407xx -I"D:/Github/FLY_STM32F4_HAL/Inc" -I"D:/Github/FLY_STM32F4_HAL/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Github/FLY_STM32F4_HAL/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"D:/Github/FLY_STM32F4_HAL/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/include" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"D:/Github/FLY_STM32F4_HAL/Drivers/CMSIS/Include" -I"D:/Github/FLY_STM32F4_HAL/module"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/main.o: ../Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F407xx -I"D:/Github/FLY_STM32F4_HAL/Inc" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/driver/eMPL" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/driver/include" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/driver/stm32L" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/eMPL-hal" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/mllite" -I"D:/Github/FLY_STM32F4_HAL/module/DMP/mpl" -I"D:/Github/FLY_STM32F4_HAL/module/mpu9250" -I"D:/Github/FLY_STM32F4_HAL/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/Github/FLY_STM32F4_HAL/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"D:/Github/FLY_STM32F4_HAL/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/include" -I"D:/Github/FLY_STM32F4_HAL/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"D:/Github/FLY_STM32F4_HAL/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


