.globl clean_screen
clean_screen:
	la $t0, img
	li $t1,0
	loop_clean_screen:
		addiu $t1, $t1,1
		li $t2, 2048
		beq $t1, $t2, end_clean_screen   # 8192/4 = 2048 word para completar la imagen
		sw $zero, ($t0)
		addiu $t0, $t0, 4
		j loop_clean_screen
		
	end_clean_screen:
	jr $ra