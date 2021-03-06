.globl flappy_new_game

flappy_new_game:
	# Definiciones:
	# Coordenadas del string del puntaje : [x($a1) = 47 ; y($a2) = 2]
	# Coordnadas iniciales del pajaro: [x($a1) = ; y($a2) = ]
	# Cantidad maxima de columnas en el display = 2
	# Ancho de las columnas = 10
	
	# PROLOGO	
	# Guardo $ra en sp para no perderlo
	addi $sp, $sp, -4 
	sw $ra, ($sp)
	
	la $t0, coordenadaenY
	li $t1, 20
	sb $t1,($t0) 
	sb $zero, 1($t0)	
	la $t0, column_coord
	sb $zero, ($t0)
	sb $zero, 1($t0)
	li $t1, 10
	sb $t1, 2($t0)
	la $t0, scores
	sb $zero, ($t0)
	# Defino valores que simulen la funcion random
	# Defino 12 valores y la posicion 0 del vector actua de indice
	# Avanzo como si fuera un array circular y avanzo de a 7 posiciones por vez,
	# por lo tanto los valores vuelven a repetirse cada 7*12 = 84 repeticiones
	la $t0, pseudorandom_values
	lb $t1, ($t0)
	bltz $t1,start_circular_array
	li $t2,12
	sub $t2, $t2, $t1
	bgtz $t2, start_circular_array
	j load_circular_array
	start_circular_array:
		sb $zero, ($t0)
	load_circular_array:
		li $t1, 10
		sb $t1, 1($t0)
		li $t1, 40
		sb $t1, 2($t0)
		li $t1, 32
		sb $t1, 3($t0)
		li $t1, 3
		sb $t1, 4($t0)
		li $t1, 13
		sb $t1, 5($t0)
		li $t1, 21
		sb $t1, 6($t0)
		li $t1, 28
		sb $t1, 7($t0)
		li $t1, 8
		sb $t1, 8($t0)
		li $t1, 16
		sb $t1, 9($t0)
		li $t1, 24
		sb $t1, 10($t0)
		li $t1, 23
		sb $t1, 11($t0)
		li $t1, 36
		sb $t1, 12($t0)	
	jal clean_screen
	jal dibujar_display
	loop_flappy_game:
		
		la $t3, PORTF
		lb $t4, ($t3)
		# los botones estan en rf4 y rf5. las resistencias estan conectadas como pull-up
		li $t5,  0x10
		and $t5, $t4, $t5
		beq $t5, $zero, salto
	    li $t5,  0x20
		and $t5, $t4, $t5
		beq $t5, $zero, salto
		j continuar_salto
		salto:
			la $t3, coordenadaenY
			lb $t4, 1($t3)
			addiu $t4, $t4, 5
			sb $t4, 1($t3)
			
		continuar_salto:
		
		jal update_bird		# actualizo la posicion del pajaro y verifico si choca contra la columna
		jal update_column	# actualizo columnas y las creo si es necesario
		jal perdio			# En caso de que choque, retorno por parametro un booleano True para notificar que se perdio y terminar la partida
		
		bne $v0,$zero, end_flappy_game
		jal update_score
		jal dibujar_display
		j loop_flappy_game
		
	end_flappy_game:
	li $t1, 0
	li $t2, 200000
	wait5:
		addi $t1, $t1,1
		bne $t1, $t2, wait5
	# 1,5 seg
	jal clean_screen
	jal update_score
	
	la $a0, your_score
	li $a1, 23
	li $a2, 30
	jal dibujarString
	jal dibujar_display
	li $t1, 0
	li $t2, 200000
	wait6:
		addi $t1, $t1,1
		bne $t1, $t2, wait6
	# EPILOGO
	li $v0,1
    lw $ra , ($sp) 	
	addi $sp, $sp, 4
	jr $ra