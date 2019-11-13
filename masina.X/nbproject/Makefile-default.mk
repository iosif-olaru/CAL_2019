#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../CAL2019_MCAL/asw_com.c ../CAL2019_MCAL/hal_nRF.c ../CAL2019_MCAL/main.c ../CAL2019_MCAL/mcal_adc.c ../CAL2019_MCAL/mcal_encoder.c ../CAL2019_MCAL/mcal_gpio.c ../CAL2019_MCAL/mcal_init.c ../CAL2019_MCAL/mcal_interrupts.c ../CAL2019_MCAL/mcal_osc.c ../CAL2019_MCAL/mcal_pwm.c ../CAL2019_MCAL/mcal_spi.c ../CAL2019_MCAL/mcal_timers.c ../CAL2019_MCAL/sys_schedule.c ../CAL2019_MCAL/sys_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/755160069/asw_com.o ${OBJECTDIR}/_ext/755160069/hal_nRF.o ${OBJECTDIR}/_ext/755160069/main.o ${OBJECTDIR}/_ext/755160069/mcal_adc.o ${OBJECTDIR}/_ext/755160069/mcal_encoder.o ${OBJECTDIR}/_ext/755160069/mcal_gpio.o ${OBJECTDIR}/_ext/755160069/mcal_init.o ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o ${OBJECTDIR}/_ext/755160069/mcal_osc.o ${OBJECTDIR}/_ext/755160069/mcal_pwm.o ${OBJECTDIR}/_ext/755160069/mcal_spi.o ${OBJECTDIR}/_ext/755160069/mcal_timers.o ${OBJECTDIR}/_ext/755160069/sys_schedule.o ${OBJECTDIR}/_ext/755160069/sys_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/755160069/asw_com.o.d ${OBJECTDIR}/_ext/755160069/hal_nRF.o.d ${OBJECTDIR}/_ext/755160069/main.o.d ${OBJECTDIR}/_ext/755160069/mcal_adc.o.d ${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d ${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d ${OBJECTDIR}/_ext/755160069/mcal_init.o.d ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d ${OBJECTDIR}/_ext/755160069/mcal_osc.o.d ${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d ${OBJECTDIR}/_ext/755160069/mcal_spi.o.d ${OBJECTDIR}/_ext/755160069/mcal_timers.o.d ${OBJECTDIR}/_ext/755160069/sys_schedule.o.d ${OBJECTDIR}/_ext/755160069/sys_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/755160069/asw_com.o ${OBJECTDIR}/_ext/755160069/hal_nRF.o ${OBJECTDIR}/_ext/755160069/main.o ${OBJECTDIR}/_ext/755160069/mcal_adc.o ${OBJECTDIR}/_ext/755160069/mcal_encoder.o ${OBJECTDIR}/_ext/755160069/mcal_gpio.o ${OBJECTDIR}/_ext/755160069/mcal_init.o ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o ${OBJECTDIR}/_ext/755160069/mcal_osc.o ${OBJECTDIR}/_ext/755160069/mcal_pwm.o ${OBJECTDIR}/_ext/755160069/mcal_spi.o ${OBJECTDIR}/_ext/755160069/mcal_timers.o ${OBJECTDIR}/_ext/755160069/sys_schedule.o ${OBJECTDIR}/_ext/755160069/sys_tasks.o

# Source Files
SOURCEFILES=../CAL2019_MCAL/asw_com.c ../CAL2019_MCAL/hal_nRF.c ../CAL2019_MCAL/main.c ../CAL2019_MCAL/mcal_adc.c ../CAL2019_MCAL/mcal_encoder.c ../CAL2019_MCAL/mcal_gpio.c ../CAL2019_MCAL/mcal_init.c ../CAL2019_MCAL/mcal_interrupts.c ../CAL2019_MCAL/mcal_osc.c ../CAL2019_MCAL/mcal_pwm.c ../CAL2019_MCAL/mcal_spi.c ../CAL2019_MCAL/mcal_timers.c ../CAL2019_MCAL/sys_schedule.c ../CAL2019_MCAL/sys_tasks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC804
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC804.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/755160069/asw_com.o: ../CAL2019_MCAL/asw_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/asw_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/asw_com.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/asw_com.c  -o ${OBJECTDIR}/_ext/755160069/asw_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/asw_com.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/asw_com.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/hal_nRF.o: ../CAL2019_MCAL/hal_nRF.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/hal_nRF.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/hal_nRF.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/hal_nRF.c  -o ${OBJECTDIR}/_ext/755160069/hal_nRF.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/hal_nRF.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/hal_nRF.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/main.o: ../CAL2019_MCAL/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/main.c  -o ${OBJECTDIR}/_ext/755160069/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_adc.o: ../CAL2019_MCAL/mcal_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_adc.c  -o ${OBJECTDIR}/_ext/755160069/mcal_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_encoder.o: ../CAL2019_MCAL/mcal_encoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_encoder.c  -o ${OBJECTDIR}/_ext/755160069/mcal_encoder.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_gpio.o: ../CAL2019_MCAL/mcal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_gpio.c  -o ${OBJECTDIR}/_ext/755160069/mcal_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_init.o: ../CAL2019_MCAL/mcal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_init.c  -o ${OBJECTDIR}/_ext/755160069/mcal_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_init.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_interrupts.o: ../CAL2019_MCAL/mcal_interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_interrupts.c  -o ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_osc.o: ../CAL2019_MCAL/mcal_osc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_osc.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_osc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_osc.c  -o ${OBJECTDIR}/_ext/755160069/mcal_osc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_osc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_osc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_pwm.o: ../CAL2019_MCAL/mcal_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_pwm.c  -o ${OBJECTDIR}/_ext/755160069/mcal_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_spi.o: ../CAL2019_MCAL/mcal_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_spi.c  -o ${OBJECTDIR}/_ext/755160069/mcal_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_timers.o: ../CAL2019_MCAL/mcal_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_timers.c  -o ${OBJECTDIR}/_ext/755160069/mcal_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/sys_schedule.o: ../CAL2019_MCAL/sys_schedule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_schedule.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_schedule.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/sys_schedule.c  -o ${OBJECTDIR}/_ext/755160069/sys_schedule.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/sys_schedule.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/sys_schedule.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/sys_tasks.o: ../CAL2019_MCAL/sys_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/sys_tasks.c  -o ${OBJECTDIR}/_ext/755160069/sys_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/sys_tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/sys_tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/755160069/asw_com.o: ../CAL2019_MCAL/asw_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/asw_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/asw_com.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/asw_com.c  -o ${OBJECTDIR}/_ext/755160069/asw_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/asw_com.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/asw_com.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/hal_nRF.o: ../CAL2019_MCAL/hal_nRF.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/hal_nRF.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/hal_nRF.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/hal_nRF.c  -o ${OBJECTDIR}/_ext/755160069/hal_nRF.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/hal_nRF.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/hal_nRF.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/main.o: ../CAL2019_MCAL/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/main.c  -o ${OBJECTDIR}/_ext/755160069/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_adc.o: ../CAL2019_MCAL/mcal_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_adc.c  -o ${OBJECTDIR}/_ext/755160069/mcal_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_adc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_encoder.o: ../CAL2019_MCAL/mcal_encoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_encoder.c  -o ${OBJECTDIR}/_ext/755160069/mcal_encoder.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_encoder.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_gpio.o: ../CAL2019_MCAL/mcal_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_gpio.c  -o ${OBJECTDIR}/_ext/755160069/mcal_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_gpio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_init.o: ../CAL2019_MCAL/mcal_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_init.c  -o ${OBJECTDIR}/_ext/755160069/mcal_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_init.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_init.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_interrupts.o: ../CAL2019_MCAL/mcal_interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_interrupts.c  -o ${OBJECTDIR}/_ext/755160069/mcal_interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_interrupts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_osc.o: ../CAL2019_MCAL/mcal_osc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_osc.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_osc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_osc.c  -o ${OBJECTDIR}/_ext/755160069/mcal_osc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_osc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_osc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_pwm.o: ../CAL2019_MCAL/mcal_pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_pwm.c  -o ${OBJECTDIR}/_ext/755160069/mcal_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_spi.o: ../CAL2019_MCAL/mcal_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_spi.c  -o ${OBJECTDIR}/_ext/755160069/mcal_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_spi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/mcal_timers.o: ../CAL2019_MCAL/mcal_timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/mcal_timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/mcal_timers.c  -o ${OBJECTDIR}/_ext/755160069/mcal_timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/mcal_timers.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/mcal_timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/sys_schedule.o: ../CAL2019_MCAL/sys_schedule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_schedule.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_schedule.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/sys_schedule.c  -o ${OBJECTDIR}/_ext/755160069/sys_schedule.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/sys_schedule.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/sys_schedule.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/755160069/sys_tasks.o: ../CAL2019_MCAL/sys_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/755160069" 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/755160069/sys_tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CAL2019_MCAL/sys_tasks.c  -o ${OBJECTDIR}/_ext/755160069/sys_tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/755160069/sys_tasks.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/_ext/755160069/sys_tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/masina.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif