.globl print_score
print_score:
	# Coordenadas del string del puntaje : [x($a1) = 95 ; y($a2) = 2]
	# -----PROLOGO-----#	
	# Guardo $ra en sp para no perderlo
	addi $sp, $sp, -4 
	sw $ra, ($sp)
	
	la $t2, scores
	lw $t3, ($t2) 
	convertir_score_2:
	# Debo convertir el int de score a string
	la $a0, Int8x8
	add $a1, $t3,$zero
	jal intToString
	li $a1, 95
	li $a2, 2
	jal dibujarString
	# -----EPILOGO-----#
    lw $ra , ($sp) 	
	addi $sp, $sp, 4 
	
	jr $ra

	


