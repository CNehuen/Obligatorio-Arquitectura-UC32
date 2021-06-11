/*Obligatorio Sistemas Digitales y Microcontroladores*/
/*Agustin Abo - 193196 */
/*Nehuen Carol - 225459*/

/*Version UC32*/
.globl main
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
/*la imagen desparece porque se manda la informacion directamente al display img: .space 32768 #espacio de memoria para la imagen */
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
main:
	/*
	CONFIGURACION DEL PIC
	 -> seleccionar pins I/O para botones
	 -> seleccionar pines SPI
	 -> setear temporizador
	*/
	li $t0, 0xf
	sw $t0, TRISF # Configuro puerto F como entrada para botones
	
	
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