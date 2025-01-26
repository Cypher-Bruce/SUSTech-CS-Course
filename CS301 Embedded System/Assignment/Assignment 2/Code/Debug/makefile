################################################################################
# 自动生成的文件。不要编辑！
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Hamming Code Calculator
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Hamming\ Code\ Calculator.elf \

MAP_FILES += \
Hamming\ Code\ Calculator.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Hamming\ Code\ Calculator.list \

OBJCOPY_HEX += \
Hamming\ Code\ Calculator.hex \


# 所有目标
all: main-build

# 主构建目标
main-build: Hamming\ Code\ Calculator.elf secondary-outputs

# 工具调用
Hamming\ Code\ Calculator.elf Hamming\ Code\ Calculator.map: $(OBJS) $(USER_OBJS) C:\Users\Cyphe\Documents\SUSTech\ Assignment\Term\ 5\Embedded\ System\Assignment\Assignment\ 2\Code\STM32F103RCTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Hamming Code Calculator.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Cyphe\Documents\SUSTech Assignment\Term 5\Embedded System\Assignment\Assignment 2\Code\STM32F103RCTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Hamming Code Calculator.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo '已结束构建目标： $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo '已结束构建： $@'
	@echo ' '

Hamming\ Code\ Calculator.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Hamming Code Calculator.list"
	@echo '已结束构建： $@'
	@echo ' '

Hamming\ Code\ Calculator.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "Hamming Code Calculator.hex"
	@echo '已结束构建： $@'
	@echo ' '

# 其他目标
clean:
	-$(RM) Hamming\ Code\ Calculator.elf Hamming\ Code\ Calculator.hex Hamming\ Code\ Calculator.list Hamming\ Code\ Calculator.map Hamming\\ Code\\ Calculator.elf default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
