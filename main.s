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
	*/
	li $t0, 0xf
	sw $t0, TRISF # Configuro puerto F como entrada para botones
	/*configuracion del SPI
	SPIxCON: 0000 0000 0000 0000 1000 0010 0011 0000 -> 0x00008230
	SPIxCON2: 0000 0000 0000 0000 0000 0011 0000 0000 -> 0x00000300
	SPIxBRG:  
	*/
	li $t0, 0x00008230
	sw $t0, SPI1CON
	
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