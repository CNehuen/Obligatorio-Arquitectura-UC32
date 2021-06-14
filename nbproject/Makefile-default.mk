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
SOURCEFILES_QUOTED_IF_SPACED=main.s newAsmTemplate.s flappyBird.s update_bird.s update_column.s columnasVerticales.s update_score.s getFont8x8.s flappy_new_game.s dibujarString.s perdio.s clean_screen.s menu.s creoArchivo.s dibujar_display.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/newAsmTemplate.o ${OBJECTDIR}/flappyBird.o ${OBJECTDIR}/update_bird.o ${OBJECTDIR}/update_column.o ${OBJECTDIR}/columnasVerticales.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/getFont8x8.o ${OBJECTDIR}/flappy_new_game.o ${OBJECTDIR}/dibujarString.o ${OBJECTDIR}/perdio.o ${OBJECTDIR}/clean_screen.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/creoArchivo.o ${OBJECTDIR}/dibujar_display.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/newAsmTemplate.o.d ${OBJECTDIR}/flappyBird.o.d ${OBJECTDIR}/update_bird.o.d ${OBJECTDIR}/update_column.o.d ${OBJECTDIR}/columnasVerticales.o.d ${OBJECTDIR}/update_score.o.d ${OBJECTDIR}/getFont8x8.o.d ${OBJECTDIR}/flappy_new_game.o.d ${OBJECTDIR}/dibujarString.o.d ${OBJECTDIR}/perdio.o.d ${OBJECTDIR}/clean_screen.o.d ${OBJECTDIR}/menu.o.d ${OBJECTDIR}/creoArchivo.o.d ${OBJECTDIR}/dibujar_display.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/newAsmTemplate.o ${OBJECTDIR}/flappyBird.o ${OBJECTDIR}/update_bird.o ${OBJECTDIR}/update_column.o ${OBJECTDIR}/columnasVerticales.o ${OBJECTDIR}/update_score.o ${OBJECTDIR}/getFont8x8.o ${OBJECTDIR}/flappy_new_game.o ${OBJECTDIR}/dibujarString.o ${OBJECTDIR}/perdio.o ${OBJECTDIR}/clean_screen.o ${OBJECTDIR}/menu.o ${OBJECTDIR}/creoArchivo.o ${OBJECTDIR}/dibujar_display.o

# Source Files
SOURCEFILES=main.s newAsmTemplate.s flappyBird.s update_bird.s update_column.s columnasVerticales.s update_score.s getFont8x8.s flappy_new_game.s dibujarString.s perdio.s clean_screen.s menu.s creoArchivo.s dibujar_display.s



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
${OBJECTDIR}/main.o: main.s  .generated_files/flags/default/2e17c8afad678e0bbe1cb913c0d239b6c229eb1d .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/main.o main.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/main.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/newAsmTemplate.o: newAsmTemplate.s  .generated_files/flags/default/d7d97c6ed6234c3285aeeda2452d176307d87f30 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newAsmTemplate.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/newAsmTemplate.o newAsmTemplate.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/newAsmTemplate.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappyBird.o: flappyBird.s  .generated_files/flags/default/6ce8326a0796e2434d1d174d243aa83e8d9c9708 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappyBird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappyBird.o flappyBird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/flappyBird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_bird.o: update_bird.s  .generated_files/flags/default/1d632de6faa9093533fe63d0665959dc1f5e7c83 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_bird.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_bird.o update_bird.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/update_bird.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_column.o: update_column.s  .generated_files/flags/default/796c247c4f0790d7f99eac4d0091ae538307c1f6 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_column.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_column.o update_column.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/update_column.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/columnasVerticales.o: columnasVerticales.s  .generated_files/flags/default/bc58a1579d8a345c8b1b0b55fecd859996d075a0 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/columnasVerticales.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/columnasVerticales.o columnasVerticales.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/columnasVerticales.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/update_score.o: update_score.s  .generated_files/flags/default/d5db49d274b0e6dec2c635989f946dc0e3937848 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/update_score.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/update_score.o update_score.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/update_score.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/getFont8x8.o: getFont8x8.s  .generated_files/flags/default/493d754d0bb0aa7c49b36c1d1cdc884773e45a7b .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/getFont8x8.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/getFont8x8.o getFont8x8.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/getFont8x8.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/flappy_new_game.o: flappy_new_game.s  .generated_files/flags/default/843175ce89de532c822911b57e7b54a1d9cacd70 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/flappy_new_game.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/flappy_new_game.o flappy_new_game.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/flappy_new_game.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujarString.o: dibujarString.s  .generated_files/flags/default/d7397ff49f84122545f3d78426e0dcd91d350e2f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujarString.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujarString.o dibujarString.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/dibujarString.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/perdio.o: perdio.s  .generated_files/flags/default/a7e4203adc1571f28a7a5681d004a72fd3c71068 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/perdio.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/perdio.o perdio.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/perdio.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/clean_screen.o: clean_screen.s  .generated_files/flags/default/223aa6cf5209724676d5adc3150ce35f2fefb89a .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/clean_screen.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/clean_screen.o clean_screen.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/clean_screen.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/menu.o: menu.s  .generated_files/flags/default/5c7f72f70c04da5faaa418b898610e0f4c700727 .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/menu.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/menu.o menu.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/menu.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/creoArchivo.o: creoArchivo.s  .generated_files/flags/default/f925782cc5106b4b8131bdbd2d76cb4eb847d36f .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/creoArchivo.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/creoArchivo.o creoArchivo.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/creoArchivo.o.d" -mdfp="${DFP_DIR}"
	
${OBJECTDIR}/dibujar_display.o: dibujar_display.s  .generated_files/flags/default/91c213431c4227ee752f8a032cb16851c82554eb .generated_files/flags/default/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/dibujar_display.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_SIMULATOR=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/dibujar_display.o dibujar_display.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--gdwarf-2,-MD="${OBJECTDIR}/dibujar_display.o.d" -mdfp="${DFP_DIR}"
	
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
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Obligatorio-Arquitectura-UC32.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
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
