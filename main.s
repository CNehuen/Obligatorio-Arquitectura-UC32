/*Obligatorio Sistemas Digitales y Microcontroladores*/
/*Agustin Abo - 193196 */
/*Nehuen Carol - 225459*/

/*Version UC32*/
.globl main
.globl img
.globl Int8x8 
.globl bird8x8
.globl font8x8
.globl column_coord
.globl column_heigh
.globl pseudorandom_values
.globl limpiarPajaro
.globl limpiarAuto
.globl coordenadaenY
.globl scores
.globl your_score
.globl car16x12
.globl car16x12Inv
.globl matriz_posiciones_autos
.globl coordenadaenYauto
.data 
.align 2
img: .space 8192 # ahora la imagen en vez de guardar de a un word/pixel, es 1 byte/pixel 
font8x8: .space 8 
bird8x8: .asciiz "p"  
.align 2
Int8x8: .asciiz "0000"  /*Para dibujar los numeros*/
column_coord: .space 3  /*coordenadas en x de cada una de las columnas. la 3ra coordenada es un auxiliar*/
column_heigh: .space 3  /*corrdenadas en y de los espacios de las columnas. la 3ra posicion es para la columna que se crea mientas se borra la de las a  la izq*/
pseudorandom_values: .space 13 /*13 valores que simulan aleatoriedad y un indice de seleccion:[0]-> indice; [1 -12]->numero */
coordenadaenY: .space 2 
limpiarPajaro: .asciiz " "
.align 2
scores: .space 4
your_score: .asciiz "TU PUNTAJE"
.align 1
car16x12: .space 24
.align 1
car16x12Inv: .space 24
matriz_posiciones_autos: .space 12
coordenadaenYauto: .space 1
.text
.ent main 
main:
	li $t0, 0x00000060  # apago bit ON y configuro el registro de configuracion
	la $t1, SPI2CON
	sw $t0, ($t1) 
	la $t1, SPI2BRG
	sw $zero, ($t1) # seteo el baud rate generator en 0
	la $t1, SPI2STAT
	sw $zero,($t1) # limpio los flags
	/*
	CONFIGURACION DEL PIC
	*/
	la $t1, TRISF
	li $t0, 0xFF
	sw $t0, ($t1)
	/*
	 Secuencia de prendido del display
	Dejo el pin RES en 0, espero un tiempo t> 3us y lo pongo en 1 para que
	se inicie el display
	*/
		
	
   # pin RES es output
   # defino puertos D, E, G como output (pin 26 (puertoE) = D/C#, pin 27 = RES)
   la $t0, TRISE
   li $t1, 0
   sw $t1, ($t0)
      
   # seteo D/C# como 0 y RES=0 para los comandos del ssd
   la $t0, PORTE
   li $t1, 0
   sw $t1, ($t0)
   
	li $t1, 150000
	li $t0, 0 
	loop_enciendo_display: 
		addi $t0, $t0, 1
		bne $t1, $t0,loop_enciendo_display
	# dejo habilitado el pin RES para dejar encendido el display
	# PORTF -> 0 0 0 0 0 1 0 0 
	/*li $t0, 0x04
	lb $t1, PORTF
	or $t0, $t0,$t1
	sb $t0, PORTF */
	
	
   # RES=1
   la $t0, PORTE
   li $t1, 2 # 010
   sw $t1, ($t0)
   
	/*configuracion del SPI
	SPIxCON: 0000 0000 0000 0000 1000 0010 0011 0000 -> 0x00008230
	SPIxBRG:  0x00
	*/
	la $t1, SPI2CON

	li $t0, 0x00008060 # habilito el bit ON
	sw $t0, ($t1)
	
	
	# El pin DC esta seteado en 0
	# envio comandos para configurar el display
	li $a0, 0x8D  # Enable charge pump setting
	jal cargar_buffer
	li $a0, 0x14
	jal cargar_buffer
	li $a0, 0xAF # set display ON
	jal cargar_buffer
	li $a0, 0x20  # Set Memory Addressing Mode
	jal cargar_buffer
	li $a0, 0x00 # set Horizontal addressing mode
	jal cargar_buffer
# 	li $a0, 0xA5 # fuerza al display a prenderse completo
# 	jal cargar_buffer
	
	li $t1, 150000
	li $t0, 0 
	loop_cambio_comando: 
		addi $t0, $t0, 1
		bne $t1, $t0,loop_cambio_comando
	
	
	# seteo D/C# como 1 para mandar datos para pintar
   la $t0, PORTE
   li $t1, 0xFF
   sw $t1, ($t0)
   
   
   main_loop:
	# inicio la logica de la consola de juegos
	jal clean_screen
	jal dibujar_display
	li $a0, 0
	jal menu # menu de seleccion de juego
	add $a0, $v0, $zero
	jal menu_de_juego
	j main_loop
terminar_consola:
.end main