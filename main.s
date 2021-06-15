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
.globl coordenadaenY
.globl scores
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
scores: .space 1
.text
.ent main 
main:
	/*
	CONFIGURACION DEL PIC
	 -> seleccionar pins I/O para botones
	 -> seleccionar pines SPI
	 -> setear temporizador
	 Configuro puerto F: 1 1 1 0 0 0 1 1
	 RF0 -> Boton de cambio de opcion de menu
	 RF1 -> Boton de seleccion de opcion de menu
		* ambos botones sirven para hacer saltar el bicho del juego
	 RF2-> RES del display
	 RF3-> DC del display
	 RF4-> CS del display (creo que no lo uso)
	*/
	li $t0, 0xE3
	sw $t0, TRISF
	/*
	Dejo el pin RES en 0, espero un tiempo t> 3ms y lo pongo en 1 para que
	se inicie el display
	*/
	sw $zero, PORTF
	li $t0,0
	li $t1, 100000
	loop_enciendo_display 
		addi $t0, $t0, 1
		bne $t1, $t0,loop_enciendo_display
	# dejo habilitado el pin DC para carga de datos
	# PORTF -> 0 0 0 0 0 1 0 0 
	li $t0, 0x04
	lb $t1, PORTF
	or $t0, $t0,$t1
	sb $t0, PORTF 
	
	/*configuracion del SPI
	SPIxCON: 0000 0000 0000 0000 1000 0010 0011 0000 -> 0x00008230
	SPIxBRG:  0x00
	*/
	li $t0, 0x00000230  # apago bit ON y configuro el registro de configuracion
	sw $t0, SPI2CON 
	sw $zero, SPI2BRG # seteo el baud rate generator en 0
	sw $zero,SPI2STAT # limpio los flags
	li $t0, 0x00008230 # habilito el bit ON
	sw $t0, SPI2CON
	
	# El pin DC esta seteado en 0
	# envio comandos para configurar el display
	li $a0, 0x8D  # Enable charge pump setting
	jal cargar_buffer
	li $a0, 0x14
	jal cargar_buffer
	li $a0, 0x20  # Set Memory Addressing Mode
	jal cargar_buffer
	li $a0, 0x0 # set Horizontal addressing mode
	jal cargar_buffer
	li $a0, 0xAF # set display ON
	jal cargar_buffer
	
	# dejo habilitado el pin DC para carga de datos
	# PORTF -> 0 0 0 0 1 0 0 0 
	li $t0, 0x08
	lb $t1, PORTF
	or $t0, $t0,$t1
	sb $t0, PORTF 
	
	# inicio la logica de la consola de juegos
	li $a0, 0
	li $v0,0
	jal menu /*menu de seleccion de juego*/
	beqz $v0,inicio_flappy_bird
	li $t1,1
	beq $v0, $t1, inicio_otro_juego
	
	inicio_flappy_bird:
		jal flappy_bird
		j terminar_consola
	inicio_otro_juego:
	
terminar_consola:
.end main