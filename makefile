
#-include ../makefile.init
#
#RM := rm -rf
#
###ifeq ($(PLATFORM,PC))
###{
###CC=gcc
###CC_OPTIONS=
###OBJ=main.o
##SRC=main.c
##Temp=main.d
##LL_OPTIONS=
##}
#
##else ifeq ($(PLATFORM,KL25Z))
##{
##CC=arm-none-eabi-gcc
##CC_OPTIONS=KL25Z_cc_flags
##OBJ=SDK_object
##SRC=SDK_files
##Temp=SDK_Tempfile
##LL_OPTIONS=KL25Z_ll_flags
##}
#
#
## All of the sources participating in the build are defined here
#-include sources.mk
#-include utilities/subdir.mk
#-include startup/subdir.mk
#-include source/subdir.mk
#-include drivers/subdir.mk
#-include board/subdir.mk
#-include CMSIS/subdir.mk
#-include subdir.mk
#-include objects.mk
#
#ifneq ($(MAKECMDGOALS),clean)
#ifneq ($(strip $(C_DEPS)),)
#-include $(C_DEPS)
#endif
#endif
#
#-include ../makefile.defs
#
## Add inputs and outputs from these tool invocations to the build variables 
#	
## All Target
#all: MyMakeProject.axf
##gcc main.o -o main
## Tool invocations
##ifeq ($(PLATFORM,KL25Z))
#MyMakeProject.axf: $(OBJS) $(USER_OBJS)
#	@echo 'Building target: $@'
#	@echo 'Invoking: MCU Linker'
#	arm-none-eabi-gcc -nostdlib -Xlinker -Map="MyMakeProject.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T MyMakeProject_debug.ld -o "MyMakeProject.axf" $(OBJS) $(USER_OBJS) $(LIBS)
#	@echo 'Finished building target: $@'
#	@echo ' '
##else ($(PLATFORM,PC))	
##MyMakeProject.exe: $(OBJS) $(USER_OBJS)
##	@echo 'Building target: $@'
##	@echo 'Invoking: MCU Linker'
##	gcc -o "main.exe" $(OBJS) $(USER_OBJS) $(LIBS)
##	@echo 'Finished building target: $@'
##	@echo ' '
##endif	
#	$(MAKE) --no-print-directory post-build
##.axf
##gcc -o MyMakeProject.exe $(OBJS)
## Other Targets
#clean:
#	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) MyMakeProject.axf
#	-@echo 'hi'
#
#post-build:
#	-@echo 'Performing post-build steps'
#	-arm-none-eabi-size "MyMakeProject.axf"; # arm-none-eabi-objcopy -v -O binary "pes_project_2.axf" "pes_project_2.bin" ; # checksum -p MKL25Z128xxx4 -d "pes_project_2.bin";
#	-@echo ' '
#
#.PHONY: all clean dependents post-build
#
##ifeq ($(PLATFORM,KL25Z))
##{
##CC=gcc
##CC_OPTIONS=
##OBJ=main.o
##SRC=main.c
##Temp=main.d
##LL_OPTIONS=
##}
#
##else ifeq ($(PLATFORM,KL25Z))
##{
##CC=arm-none-eabi-gcc
##CC_OPTIONS=KL25Z_cc_flags
##OBJ=SDK_object
##SRC=SDK_files
##Temp=SDK_Tempfile
##LL_OPTIONS=KL25Z_ll_flags
##}
#
#
#-include ../makefile.targets

################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include drivers/subdir.mk
-include board/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ifeq ($(PLATFORM),KL25Z)
EXE := ./debug/MyMakeProject.axf
C_DEPS = \
	./debug/main.d \
	./debug/startup_MKL25Z4.d \
	./debug/system_MKL25Z4.d \
	./debug/board.d \
	./debug/clock_config.d \
	./debug/peripherals.d \
	./debug/pin_mux.d \
	./debug/fsl_clock.d \
	./debug/fsl_common.d \
	./debug/fsl_flash.d \
	./debug/fsl_gpio.d \
	./debug/fsl_lpsci.d \
	./debug/fsl_smc.d \
	./debug/fsl_uart.d \
	./debug/fsl_debug_console.d
LL := arm-none-eabi-gcc
LL_OPTIONS := -nostdlib -Xlinker -Map="MyMakeProject.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T MyMakeProject_Debug.ld -o "MyMakeProject.axf"
endif
ifeq ($(PLATFORM),KL25Z_DEBUG)
EXE := ./debug/MyMakeProject.axf
C_DEPS = \
	./debug/main.d \
	./debug/startup_MKL25Z4.d \
	./debug/system_MKL25Z4.d \
	./debug/board.d \
	./debug/clock_config.d \
	./debug/peripherals.d \
	./debug/pin_mux.d \
	./debug/fsl_clock.d \
	./debug/fsl_common.d \
	./debug/fsl_flash.d \
	./debug/fsl_gpio.d \
	./debug/fsl_lpsci.d \
	./debug/fsl_smc.d \
	./debug/fsl_uart.d \
	./debug/fsl_debug_console.d
LL := arm-none-eabi-gcc
LL_OPTIONS := -nostdlib -Xlinker -Map="MyMakeProject.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T MyMakeProject_Debug.ld -o "MyMakeProject.axf"
endif
ifeq ($(PLATFORM),PC)
OBJS := ./source/main.o 
CC := gcc
CC_OPTIONS := -Wall -Werror -c
EXE := ./debug/MyMakeProject.obj
C_DEPS := ./debug/main.d
LL := gcc
LL_OPTIONS :=
C_SRCS = ../source/main.c  
endif
ifeq ($(PLATFORM),PC_DEBUG)
OBJS :=  ./source/main.o 
CC := gcc
CC_OPTIONS := -Wall -Werror -c
EXE := ./debug/MyMakeProject.obj
C_DEPS := ./debug/main.d
LL := gcc
LL_OPTIONS := 
C_SRCS = ./source/main.c

endif
# All Target
all: $(EXE)

#$(OBJS): $(C_SRCS)
#	$(CC) $(CC_OPTIONS) $(C_SRCS)
# Tool invocations
$(EXE): $(OBJS) 
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
		$(LL) $(LL_OPTIONS) $(OBJS)
	@echo 'Finished building target: $@'
	@echo ' '
#	$(MAKE) --no-print-directory post-build

#board/%.o: ../board/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#	$(CC) $(CC_OPTIONS) $(B_OPTIONS) $(INCLUDES) $(FLAG) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
#	@echo 'Finished building: $<'
#	@echo ' '

#source/%.o: ../source/%.c
#	@echo 'Building file: $<'
#	@echo 'Invoking: MCU C Compiler'
#		$(CC) $(CC_OPTIONS) $(B_OPTIONS) $(INCLUDES) $(FLAG) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<" 
#	@echo 'Finished building: $<'
#	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS) $(C_DEPS) $(EXE)
	-@echo ' '

#post-build:
#	-@echo 'Performing post-build steps'
#	$(CC) $(EXE)
#	 # arm-none-eabi-objcopy -v -O binary "test1.axf" "test1.bin" ; # checksum -p MKL25Z128xxx4 -d "test1.bin";
#	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets

