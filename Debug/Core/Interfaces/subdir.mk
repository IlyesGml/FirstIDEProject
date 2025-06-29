################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Interfaces/interfaceB1.c \
../Core/Interfaces/interfaceT1.c \
../Core/Interfaces/interfaceT2.c \
../Core/Interfaces/interfaceT3.c \
../Core/Interfaces/interfaceT4.c 

C_DEPS += \
./Core/Interfaces/interfaceB1.d \
./Core/Interfaces/interfaceT1.d \
./Core/Interfaces/interfaceT2.d \
./Core/Interfaces/interfaceT3.d \
./Core/Interfaces/interfaceT4.d 

OBJS += \
./Core/Interfaces/interfaceB1.o \
./Core/Interfaces/interfaceT1.o \
./Core/Interfaces/interfaceT2.o \
./Core/Interfaces/interfaceT3.o \
./Core/Interfaces/interfaceT4.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Interfaces/%.o Core/Interfaces/%.su Core/Interfaces/%.cyclo: ../Core/Interfaces/%.c Core/Interfaces/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Interfaces

clean-Core-2f-Interfaces:
	-$(RM) ./Core/Interfaces/interfaceB1.cyclo ./Core/Interfaces/interfaceB1.d ./Core/Interfaces/interfaceB1.o ./Core/Interfaces/interfaceB1.su ./Core/Interfaces/interfaceT1.cyclo ./Core/Interfaces/interfaceT1.d ./Core/Interfaces/interfaceT1.o ./Core/Interfaces/interfaceT1.su ./Core/Interfaces/interfaceT2.cyclo ./Core/Interfaces/interfaceT2.d ./Core/Interfaces/interfaceT2.o ./Core/Interfaces/interfaceT2.su ./Core/Interfaces/interfaceT3.cyclo ./Core/Interfaces/interfaceT3.d ./Core/Interfaces/interfaceT3.o ./Core/Interfaces/interfaceT3.su ./Core/Interfaces/interfaceT4.cyclo ./Core/Interfaces/interfaceT4.d ./Core/Interfaces/interfaceT4.o ./Core/Interfaces/interfaceT4.su

.PHONY: clean-Core-2f-Interfaces

