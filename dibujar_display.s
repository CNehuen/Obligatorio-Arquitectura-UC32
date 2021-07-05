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
	
	
	li $s2, -1
	loop_pagina:
		la $t0, img
		addi $s2, $s2,1
		li $t1, 8
		beq $s2,$t1, end_loop_pagina
		li $t7, 1024
		mul $t7, $s2,$t7
		addu $t7, $t0, $t7 # me paro al inicio de cada pagina
		li $s1, -1
		
		loop_columnas_pagina:
			addi $s1, $s1, 1
			li $t1, 128
			beq $t1,$s1, loop_pagina
			li $t3,-1
			li $t8, 0x01
			addu $s3, $t7, $s1  # me paro al inicio de cada columna
			li $a0,0
			loop_columna_pagina:
				addi $t3, $t3, 1
				li $t4, 8
				beq $t3,$t4, end_columna_pagina # cuando termino los 8 bits tengo que escribit el buffer
				li $t4, 128
				mul $t4, $t4, $t3
				add $t4,$s3, $t4
				lb $t9, ($t4)
				beqz $t9, set_bit_negro
					# set_bit_blanco
					or $a0, $t8, $a0
				set_bit_negro:
				sll $t8, $t8, 1
				j loop_columna_pagina
				end_columna_pagina:
					jal cargar_buffer
					j loop_columnas_pagina
	end_loop_pagina:
	/*EPILOGO*/
	# wait 4 ms
	
	lw $ra , ($sp) 	
	addi $sp, $sp, 4 
	jr $ra