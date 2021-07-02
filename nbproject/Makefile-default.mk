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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.s newAsmTemplate.s flappyBird.s update_bird.s update_column.s columnasVerticales.s update_score.s getFont8x8.s flappy_new_game.s dibujarString.s perdio.s clean_screen.s menu.s creoArchivo.s dibujar_display.s cargar_buffer.s clock_configurtions.c menu_de_juego.s car_new_game.s dibujar_auto.s update_cars.s update_my_car.s print_score.s perdioAuto.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/newAsmTemplate.o ${OBJECTDIR}/flappyBird.o ${OBJECTDIR}/update_bird.o ${OBJECTDIR}/update_column.o ${OBJECTDIR}/columnasVerticales.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/getFont8x8.o ${OBJECTDIR}/flappy_new_game.o ${OBJECTDIR}/dibujarString.o ${OBJECTDIR}/perdio.o ${OBJECTDIR}/clean_screen.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/creoArchivo.o ${OBJECTDIR}/dibujar_display.o ${OBJECTDIR}/cargar_buffer.o ${OBJECTDIR}/clock_configurtions.o ${OBJECTDIR}/menu_de_juego.o ${OBJECTDIR}/car_new_game.o ${OBJECTDIR}/dibujar_auto.o ${OBJECTDIR}/update_cars.o ${OBJECTDIR}/update_my_car.o ${OBJECTDIR}/print_score.o ${OBJECTDIR}/perdioAuto.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/newAsmTemplate.o.d ${OBJECTDIR}/flappyBird.o.d ${OBJECTDIR}/update_bird.o.d ${OBJECTDIR}/update_column.o.d ${OBJECTDIR}/columnasVerticales.o.d ${OBJECTDIR}/update_score.o.d ${OBJECTDIR}/getFont8x8.o.d ${OBJECTDIR}/flappy_new_game.o.d ${OBJECTDIR}/dibujarString.o.d ${OBJECTDIR}/perdio.o.d ${OBJECTDIR}/clean_screen.o.d ${OBJECTDIR}/menu.o.d ${OBJECTDIR}/creoArchivo.o.d ${OBJECTDIR}/dibujar_display.o.d ${OBJECTDIR}/cargar_buffer.o.d ${OBJECTDIR}/clock_configurtions.o.d ${OBJECTDIR}/menu_de_juego.o.d ${OBJECTDIR}/car_new_game.o.d ${OBJECTDIR}/dibujar_auto.o.d ${OBJECTDIR}/update_cars.o.d ${OBJECTDIR}/update_my_car.o.d ${OBJECTDIR}/print_score.o.d ${OBJECTDIR}/perdioAuto.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/newAsmTemplate.o ${OBJECTDIR}/flappyBird.o ${OBJECTDIR}/update_bird.o ${OBJECTDIR}/update_column.o ${OBJECTDIR}/columnasVerticales.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/getFont8x8.o ${OBJECTDIR}/flappy_new_game.o ${OBJECTDIR}/dibujarString.o ${OBJECTDIR}/perdio.o ${OBJECTDIR}/clean_screen.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/creoArchivo.o ${OBJECTDIR}/dibujar_display.o ${OBJECTDIR}/cargar_buffer.o ${OBJECTDIR}/clock_configurtions.o ${OBJECTDIR}/menu_de_juego.o ${OBJECTDIR}/car_new_game.o ${OBJECTDIR}/dibujar_auto.o ${OBJECTDIR}/update_cars.o ${OBJECTDIR}/update_my_car.o ${OBJECTDIR}/print_score.o ${OBJECTDIR}/perdioAuto.o

# Source Files
SOURCEFILES=main.s newAsmTemplate.s flappyBird.s update_bird.s update_column.s columnasVerticales.s update_score.s getFont8x8.s flappy_new_game.s dibujarString.s perdio.s clean_screen.s menu.s creoArchivo.s dibujar_display.s cargar_buffer.s clock_configurtions.c menu_de_juego.s car_new_game.s dibujar_auto.s update_cars.s update_my_car.s print_score.s perdioAuto.s



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.s  .generated_files/flags/default/26823ec7c173970e03ce690cdf39098bf9604210 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/main.o main.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/main.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/newAsmTemplate.o: newAsmTemplate.s  .generated_files/flags/default/32501fb46413d687bfa9454c4f815cc766bd9180 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newAsmTemplate.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/newAsmTemplate.o newAsmTemplate.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/newAsmTemplate.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappyBird.o: flappyBird.s  .generated_files/flags/default/bea48af66c35cce872e754c8fe23ad1b07ad1027 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappyBird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappyBird.o flappyBird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/flappyBird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_bird.o: update_bird.s  .generated_files/flags/default/33a6641a4b104ce17148f9a4f16d8aaa9dea3415 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_bird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_bird.o update_bird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/update_bird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_column.o: update_column.s  .generated_files/flags/default/17c7c4934801af8cb0f0664a0a1db79ab5187ad2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_column.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_column.o update_column.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/update_column.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/columnasVerticales.o: columnasVerticales.s  .generated_files/flags/default/ee902466be78caec2b13295b5885ba8184230cd0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/columnasVerticales.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/columnasVerticales.o columnasVerticales.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/columnasVerticales.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_score.o: update_score.s  .generated_files/flags/default/d2f1b34dd4d539e8b9e3fc984d9147756ca19966 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_score.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_score.o update_score.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/update_score.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/getFont8x8.o: getFont8x8.s  .generated_files/flags/default/c46227d5a8c9f24098749a853aace150d3999574 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/getFont8x8.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/getFont8x8.o getFont8x8.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/getFont8x8.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappy_new_game.o: flappy_new_game.s  .generated_files/flags/default/2853fd45194cbca5504bc49d067398f76afe13c6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappy_new_game.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappy_new_game.o flappy_new_game.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/flappy_new_game.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujarString.o: dibujarString.s  .generated_files/flags/default/12b8a85064793ebb1242525126d52bdcaf16752d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujarString.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujarString.o dibujarString.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/dibujarString.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/perdio.o: perdio.s  .generated_files/flags/default/ec4c55cfb947df4393f64a8c064fe3d0b0c4081c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/perdio.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/perdio.o perdio.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/perdio.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/clean_screen.o: clean_screen.s  .generated_files/flags/default/d913f10ffca6e7112254cee1670d4672a2512f17 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clean_screen.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/clean_screen.o clean_screen.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/clean_screen.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/menu.o: menu.s  .generated_files/flags/default/e36ce1790cafb68a705f7ade60430c4496fa7c65 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/menu.o menu.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/menu.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/creoArchivo.o: creoArchivo.s  .generated_files/flags/default/ce1e6a8837d3c3785c65bc3b98c1c179895f5776 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/creoArchivo.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/creoArchivo.o creoArchivo.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/creoArchivo.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujar_display.o: dibujar_display.s  .generated_files/flags/default/bfef8bac3304064523241b2d89ae9cd023dfab8a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujar_display.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujar_display.o dibujar_display.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/dibujar_display.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/cargar_buffer.o: cargar_buffer.s  .generated_files/flags/default/493588bcc50adbd2fd1317c1d11a0fdc3406ad37 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cargar_buffer.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/cargar_buffer.o cargar_buffer.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/cargar_buffer.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/menu_de_juego.o: menu_de_juego.s  .generated_files/flags/default/dfcbf9731ff3f09cf121c24a7b6edeb018acbc28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu_de_juego.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/menu_de_juego.o menu_de_juego.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/menu_de_juego.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/car_new_game.o: car_new_game.s  .generated_files/flags/default/89499bdf8ad0b5106828dda6497084b88a56ef6a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/car_new_game.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/car_new_game.o car_new_game.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/car_new_game.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujar_auto.o: dibujar_auto.s  .generated_files/flags/default/7add3475af492621f66c9877e3bc0437e2e7f35 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujar_auto.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujar_auto.o dibujar_auto.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/dibujar_auto.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_cars.o: update_cars.s  .generated_files/flags/default/e54dcaf51670d0dd6dc4c212e55d47e26a99ca03 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_cars.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_cars.o update_cars.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/update_cars.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_my_car.o: update_my_car.s  .generated_files/flags/default/2f624162a8c4a0a5e91208a17270f26dc9007fa8 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_my_car.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_my_car.o update_my_car.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/update_my_car.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/print_score.o: print_score.s  .generated_files/flags/default/1aeea86a0e70b68e0d51b569c7b06f69449c40df .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_score.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/print_score.o print_score.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/print_score.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/perdioAuto.o: perdioAuto.s  .generated_files/flags/default/42da2886fa3e2183ce60c05655ae27260af16d28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/perdioAuto.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/perdioAuto.o perdioAuto.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/perdioAuto.o.d" -mdfp="${DFP_DIR}"
	
else
${OBJECTDIR}/main.o: main.s  .generated_files/flags/default/962c7c9553da9a568aa17b089bafc76dd59beaa5 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/main.o main.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/main.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/newAsmTemplate.o: newAsmTemplate.s  .generated_files/flags/default/8483a7da6fd1c8b6cae264d5303b33ae9ba5580c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newAsmTemplate.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/newAsmTemplate.o newAsmTemplate.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/newAsmTemplate.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappyBird.o: flappyBird.s  .generated_files/flags/default/fe4c936327f9bbebdcc360b0a65ecceb9d469439 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappyBird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappyBird.o flappyBird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/flappyBird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_bird.o: update_bird.s  .generated_files/flags/default/eacf139e20ae0e7421cb6608146c259b94818b28 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_bird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_bird.o update_bird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/update_bird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_column.o: update_column.s  .generated_files/flags/default/f52d3807e82f42c73905f972ea6ae3d1971bdd79 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_column.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_column.o update_column.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/update_column.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/columnasVerticales.o: columnasVerticales.s  .generated_files/flags/default/964c7f4b8a89e65c7fc67a3427c2d678e4b412a4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/columnasVerticales.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/columnasVerticales.o columnasVerticales.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/columnasVerticales.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_score.o: update_score.s  .generated_files/flags/default/a5f64b7433653eccb59895ab61a0c1da5dca776f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_score.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_score.o update_score.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/update_score.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/getFont8x8.o: getFont8x8.s  .generated_files/flags/default/a353cc3f5ce59d92f9cdee556853e3c576fe0a1c .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/getFont8x8.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/getFont8x8.o getFont8x8.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/getFont8x8.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappy_new_game.o: flappy_new_game.s  .generated_files/flags/default/f479e670634271da9e91e3af8512608167411cc3 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappy_new_game.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappy_new_game.o flappy_new_game.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/flappy_new_game.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujarString.o: dibujarString.s  .generated_files/flags/default/309e1f9a627e65255e951deecd6d7ad39bd5db47 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujarString.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujarString.o dibujarString.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/dibujarString.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/perdio.o: perdio.s  .generated_files/flags/default/6a4894a36571014408c31b173684e15c60122ff4 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/perdio.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/perdio.o perdio.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/perdio.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/clean_screen.o: clean_screen.s  .generated_files/flags/default/4a0fb0d7c1dc14af3a50b032af0cfd7426fb3af6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clean_screen.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/clean_screen.o clean_screen.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/clean_screen.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/menu.o: menu.s  .generated_files/flags/default/d7b2f96af4dbbf25bc6cabb34f0ce0e9e35a103f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/menu.o menu.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/menu.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/creoArchivo.o: creoArchivo.s  .generated_files/flags/default/59430586149e5f69ca9fd307c496ab98172af9a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/creoArchivo.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/creoArchivo.o creoArchivo.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/creoArchivo.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujar_display.o: dibujar_display.s  .generated_files/flags/default/f897c2e7d45d03c2fc81da606f54098e2915f2b2 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujar_display.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujar_display.o dibujar_display.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/dibujar_display.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/cargar_buffer.o: cargar_buffer.s  .generated_files/flags/default/28962de267e63f2b8e178f2480066da465dc8801 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cargar_buffer.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/cargar_buffer.o cargar_buffer.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/cargar_buffer.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/menu_de_juego.o: menu_de_juego.s  .generated_files/flags/default/37cdd68616034b2f4d8affcb4cb7b5edaadaaa41 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu_de_juego.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/menu_de_juego.o menu_de_juego.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/menu_de_juego.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/car_new_game.o: car_new_game.s  .generated_files/flags/default/4bc21d6aa08ff1bc1eb4fd73bc3d76e7d57c95aa .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/car_new_game.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/car_new_game.o car_new_game.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/car_new_game.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujar_auto.o: dibujar_auto.s  .generated_files/flags/default/66ac43560ffb8008679aa8b62f6a3a54a84f0d9d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujar_auto.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujar_auto.o dibujar_auto.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/dibujar_auto.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_cars.o: update_cars.s  .generated_files/flags/default/37beb52ed60f9dc394dac6edf5c3316a3c7c8ac7 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_cars.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_cars.o update_cars.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/update_cars.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_my_car.o: update_my_car.s  .generated_files/flags/default/5e09cc54c293357b28861a169c1596ea7f3e3f81 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_my_car.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_my_car.o update_my_car.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/update_my_car.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/print_score.o: print_score.s  .generated_files/flags/default/6162a94904020fbab4b09b7f905ae3465f730ec0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/print_score.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/print_score.o print_score.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/print_score.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/perdioAuto.o: perdioAuto.s  .generated_files/flags/default/7c6b0372dfa89b610df7a1b657da4c33111b0a6d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/perdioAuto.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/perdioAuto.o perdioAuto.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/perdioAuto.o.d" -mdfp="${DFP_DIR}"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/clock_configurtions.o: clock_configurtions.c  .generated_files/flags/default/6da8308a43e87c38bf12aa16f90e7f0b5124ea50 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clock_configurtions.o.d 
	@${RM} ${OBJECTDIR}/clock_configurtions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/clock_configurtions.o.d" -o ${OBJECTDIR}/clock_configurtions.o clock_configurtions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/clock_configurtions.o: clock_configurtions.c  .generated_files/flags/default/64121954a07a8d5b461e5ccba5ff7affdbb4767e .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clock_configurtions.o.d 
	@${RM} ${OBJECTDIR}/clock_configurtions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/clock_configurtions.o.d" -o ${OBJECTDIR}/clock_configurtions.o clock_configurtions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
