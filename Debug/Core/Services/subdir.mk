################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Services/serviceBaseDeTemps.c 

C_DEPS += \
./Core/Services/serviceBaseDeTemps.d 

OBJS += \
./Core/Services/serviceBaseDeTemps.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Services/%.o Core/Services/%.su Core/Services/%.cyclo: ../Core/Services/%.c Core/Services/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Services

clean-Core-2f-Services:
	-$(RM) ./Core/Services/serviceBaseDeTemps.cyclo ./Core/Services/serviceBaseDeTemps.d ./Core/Services/serviceBaseDeTemps.o ./Core/Services/serviceBaseDeTemps.su

.PHONY: clean-Core-2f-Services

