.globl update_bird

update_bird:
# PROLOGO
# Guardo $ra en sp para no perderlo
addi $sp, $sp, -4 
sw $ra, ($sp)		

movimientoPajaro: 
	la $t1, coordenadaenY # Vector que tiene Yactual y alpha
	lb $t2, ($t1) 			# Posicion actual #Aca tengo el 20
	lb $t3, 1($t1) 			# Alpha #Aca tengo un 0 #T3 asociado al boton

	la $a0, limpiarPajaro # Es para que borre  
	li $a1, 20 	# Posicion en x siempre es 20
	addi $a2, $t2,0 # Voy a tener mi posicion en y 
	jal dibujarString   
	la $t1, coordenadaenY     				        				
	lb $t2, ($t1) 
	lb $t3, 1($t1) 
	bltz $t3, BajarPajaro   	# Imagino que me apretan el boton
	bgez $t3, SubiendoPajaro  # El boton hace que suba 2 pixeles


	SubiendoPajaro: 					
		addi $t2, $t2, -1 	# Sube 1 pixel 
		la $a0, bird8x8     # Dibuja el pajaro
		li $a1, 20 			# Posicion en x
		addi $a2, $t2,0		# Nueva posicion en y 19 
		addi $t3, $t3, -1     # Vuelvo mi boton a 0   
		sb $t3, 1($t1)  	# Lo guardo					   
		sb $t2, ($t1)    	# Guardo mi nueva posicion actual 
		jal dibujarString		# Dibujo el pajaro
		li $v0, 0
		j finMovimientoPajaro  


	BajarPajaro:				
		addi $t2, $t2, 1		 # Baja un pixel
		beq $t2, 54, partidaPerdida                 
		la $a0, bird8x8
		li $a1, 20 
		addi $a2, $t2,0
		addi $t3, $t3, -1 					
		bgez $t3, ContinuarBajando	
		addi $t3, $t3, 1
		ContinuarBajando:				
			sb $t3, 1($t1)					 
			sb $t2, ($t1)							
			jal dibujarString		# Dibujo el pajaro
			li $v0, 0

		j finMovimientoPajaro



	partidaPerdida: 
		li $v0, 1

	finMovimientoPajaro:																									
	# EPILOGO
	lw $ra , ($sp) 	
	addi $sp, $sp, 4 

	jr $ra	




