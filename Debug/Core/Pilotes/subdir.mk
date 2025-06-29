################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Pilotes/PiloteIO_SPI_EPAPER.c \
../Core/Pilotes/PïloteTimer6Up.c \
../Core/Pilotes/piloteIOB1.c \
../Core/Pilotes/piloteIOT1.c \
../Core/Pilotes/piloteIOT2.c \
../Core/Pilotes/piloteIOT3.c \
../Core/Pilotes/piloteIOT4.c 

C_DEPS += \
./Core/Pilotes/PiloteIO_SPI_EPAPER.d \
./Core/Pilotes/PïloteTimer6Up.d \
./Core/Pilotes/piloteIOB1.d \
./Core/Pilotes/piloteIOT1.d \
./Core/Pilotes/piloteIOT2.d \
./Core/Pilotes/piloteIOT3.d \
./Core/Pilotes/piloteIOT4.d 

OBJS += \
./Core/Pilotes/PiloteIO_SPI_EPAPER.o \
./Core/Pilotes/PïloteTimer6Up.o \
./Core/Pilotes/piloteIOB1.o \
./Core/Pilotes/piloteIOT1.o \
./Core/Pilotes/piloteIOT2.o \
./Core/Pilotes/piloteIOT3.o \
./Core/Pilotes/piloteIOT4.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Pilotes/%.o Core/Pilotes/%.su Core/Pilotes/%.cyclo: ../Core/Pilotes/%.c Core/Pilotes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Pilotes

clean-Core-2f-Pilotes:
	-$(RM) ./Core/Pilotes/PiloteIO_SPI_EPAPER.cyclo ./Core/Pilotes/PiloteIO_SPI_EPAPER.d ./Core/Pilotes/PiloteIO_SPI_EPAPER.o ./Core/Pilotes/PiloteIO_SPI_EPAPER.su ./Core/Pilotes/PïloteTimer6Up.cyclo ./Core/Pilotes/PïloteTimer6Up.d ./Core/Pilotes/PïloteTimer6Up.o ./Core/Pilotes/PïloteTimer6Up.su ./Core/Pilotes/piloteIOB1.cyclo ./Core/Pilotes/piloteIOB1.d ./Core/Pilotes/piloteIOB1.o ./Core/Pilotes/piloteIOB1.su ./Core/Pilotes/piloteIOT1.cyclo ./Core/Pilotes/piloteIOT1.d ./Core/Pilotes/piloteIOT1.o ./Core/Pilotes/piloteIOT1.su ./Core/Pilotes/piloteIOT2.cyclo ./Core/Pilotes/piloteIOT2.d ./Core/Pilotes/piloteIOT2.o ./Core/Pilotes/piloteIOT2.su ./Core/Pilotes/piloteIOT3.cyclo ./Core/Pilotes/piloteIOT3.d ./Core/Pilotes/piloteIOT3.o ./Core/Pilotes/piloteIOT3.su ./Core/Pilotes/piloteIOT4.cyclo ./Core/Pilotes/piloteIOT4.d ./Core/Pilotes/piloteIOT4.o ./Core/Pilotes/piloteIOT4.su

.PHONY: clean-Core-2f-Pilotes

