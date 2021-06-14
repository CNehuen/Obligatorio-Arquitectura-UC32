.globl dibujarString

dibujarString:
	# Max caracteres por linea : 14
	# $a0 -> string para dibujar
	# $a1 -> coordenada X del String en la pantalla
	# $a2 -> coordenada Y del String en la pantalla
	# PROLOGO
	# Guardo $ra en sp para no perderlo
	addi $sp, $sp, -4 
	sw $ra, ($sp)
	
	
	
	# CUERPO
	la $t6, img				
	li $t1,128 
	mul $t7, $a2, $t1  # calculo la posicion del rectangulo de posicion (x,y) en la memoria
	addu $t7, $t7, $a1
	addu $t6, $t6, $t7
	sub  $t6, $t6, $t1   
	add $t9, $a0, $zero # Copiar a0 en t9
	li $t0,0  # Contador para recorrer el string
	loopString:
		lb $a0, ($t9)
		beqz $a0, finLoopString
		la $t2, font8x8
		jal getFont8x8
		li $t3, 8 # Recorre las 8 filas 
		addi  $t6, $t6, 8 # ancho del font para moverme a la siguiente letra 
		addi $t2, $t2, -1
		LoopFontRow: 
		    beqz $t3, finLoopFont
		    li $t4, 8                 # Para la matriz que contiene la letra
			addi $t3, $t3, -1 
		    addi  $t6, $t6, 128       # Avanzo una fila hacia abajo
		    addi  $t6, $t6, -8			# Vuelvo 8 pixeles para atras 
			lb $t1, ($t2)
			addiu $t2, $t2, 1
			LoopFontColumn: 
			    beqz $t4, LoopFontRow
			    sub $t4, $t4, 1
		 		andi $t7, $t1, 0x00000001 	 # 1000 0000 -> 0x80
	            beqz $t7, PintoNegro
	            PintoBlanco:
	            li $t8, 0xFF
	            sb $t8, ($t6) 
	            j TerminoPintar 
				
				PintoNegro:            
	            li $t8, 0x00
	            sb $t8, ($t6)
	            
	            TerminoPintar:   	
	            srl $t1, $t1, 1
	            addiu $t6, $t6, 1 
	               
	            j LoopFontColumn
	          
	 
		finLoopFont: 
		sub $t6, $t6, 1024   # Vuelvo 8 filas para arriba
		addi $t6, $t6, 1     # Avanzo un pixel a la derecha para siguiente letra
		addi $t9, $t9, 1     # Avanzo una letra del string
		j loopString
	            	        
		
		finLoopString:     # Va al epilogo  
	
	
		# EPILOGO
		lw $ra , ($sp) 	
		addi $sp, $sp, 4 
	
		jr $ra 
    


