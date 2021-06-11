.globl perdio

perdio: 
	# PROLOGO
	# Guardo $ra en sp para no perderlo
	addi $sp, $sp, -4 
	sw $ra, ($sp)

	la $t1, column_coord # Vector que tiene 3 posicions de columna
	la $t0, img 		 # Cargo la imagen
	lb $t2, ($t1)		 # En t2 tengo la parte derecha de la primer Col	
	li $t4, 0		# CONTADOR DE FILAS	 						
	li $t3, 20
	sub $t3, $t2, $t3
	blez $t3, Sobrevivio
	li $t3, 39
	sub $t3, $t3, $t2
	bgez $t3, Sobrevivio
	li $t3, 4
	mul $t2, $t2, $t3
	addu $t8, $t0, $t2   # Se lo sumo a la imagen y lo asigno a t8 	
	li $t3, 40
	sub $t8, $t8, $t3	 # Le resto 40 posiciones para estar en la parte izq	

	# Si mi posicion en x de la columna SUPERIOR
	# Toca con un blanco PERDIO
	# Columna de arriba
	la $t5, column_heigh			# Tiene la altura de la columna sup
	lb $t3, ($t5)
	
	RepetirBusqueda:				# Entro en un loop	
		beq $t4, $t3, TodaviaSigueConVida			
		lw $t2, ($t8)
		bne $t2, $zero, perdioLaPartida # Si no es 0, osea no es negro perdio
		addi $t8, $t8, 512 # Si es negro que sume 512
		addi $t4, $t4, 1   # Que sume uno al contador hasta $t5
		j RepetirBusqueda

	# Si mi posicion en x de la columna INFERIOR
	# Toca con un blanco PERDIO 
	# Columna de abajo
	TodaviaSigueConVida:
		addi $t3, $t3, 20 				# Sumo 20 que es la distancia
		li $t4, 0					# Inicializo t4 en cero 
		addu $t4, $t4, $t3				# t4 es la altura mas la diferencia
		li $t7, 10240     				# 512x20=10240
		addu $t8, $t8, $t7				# En t8 sumo 4096 
		RepBusqueda:
			li $t9, 63
			beq $t4, $t9, Sobrevivio			
			lw $t2, ($t8)
			bne $t2, 0, perdioLaPartida
			addi $t8, $t8, 512
			addi $t4, $t4, 1
			j RepBusqueda


	perdioLaPartida: 
		li $v0, 1
		j terminarVerificacion

	Sobrevivio:
		li $v0, 0

	terminarVerificacion:
	jr $ra 



		
    	


