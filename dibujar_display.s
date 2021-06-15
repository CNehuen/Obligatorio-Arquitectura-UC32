.globl dibujar_display
	
dibujar_display:
	/* 
	Toma la representacion de la imagen guardada en la memoria y la 
	 envia al pisplay mediante SPI, siguiendo el formato de bytes del
	 display: la imagen se divide en 8 paginas horizontales, y la imagen se 
	 manda de a bytes verticales, siendo 128 bytes verticales por pagina
	 
	 Parametros:
	 - 
	*/
	/*Guardo $ra en sp para no perderlo*/
    addi $sp, $sp, -4 
    sw $ra, ($sp)
	
	la $t0, img
	li $t2, -1
	addi $t0, $t0, -897
	loop_pagina:
		addi $t2, $t2,1
		li $t1, 8
		beq $t2,$t1, end_loop_pagina
		addi $t0, $t0, 1
		li $t1, 128
		addi $t0, $t0, 897
		loop_columnas_pagina:
			addi $t1, $t1, -1
			beqz $t1, loop_pagina
			li $t3,-1
			li $t8, 0x01
			li $t7, 0
			addi $t0, $t0, 1
			loop_columna_pagina:
				addi $t3, $t3, 1
				li $t4, 8
				beq $t3,$t4, end_columna_pagina # cuando termino los 8 bits tengo que escribit el buffer
				li $t4, 128
				mul $t4, $t4, $t3
				add $t4,$t0, $t4
				lb $t9, ($t4)
				beqz $t9, set_bit_negro
					# set_bit_blanco
					or $t7, $t8, $t7
				set_bit_negro:
				sll $t8, $t8, 1
				j loop_columna_pagina
				end_columna_pagina:
					add $a0, $t7, $zero
					jal cargar_buffer
					j loop_columnas_pagina
	end_loop_pagina:
	/*EPILOGO*/
	lw $ra , ($sp) 	
	addi $sp, $sp, 4 
	jr $ra