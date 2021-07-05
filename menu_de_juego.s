# Este archivo se encarga de infromar al archivo menu el menu de que juego mostrar, y en base a lo obtenido
# ejecuta el juego correspondiente

.globl menu_de_juego

.text
menu_de_juego:
	# Se muestra el menu de la siguiente forma:
	# Titulo: Titulo del juego
	# Opciones de menu:
	# 	NUEVO JUEGO: comienza nueva partida
	# 	SALIR: retorna al menu de seleccion de juego
	# Parametros:
	# a0-> el juego: 0 = FLAPPY BIRD //// 1 = CAR RACING
	
	# -----PROLOGO-----#
	# Guardo $ra en sp para no perderlo
	addi $sp, $sp, -4 
	sw $ra, ($sp)
	addi $a0,$a0, 1
	add $s0, $a0, $zero
	gamemenu:
		jal clean_screen
		add $s0, $a0, $zero
		jal dibujar_display
		add $a0, $s0, $zero
		jal menu
		
		beqz $v0, nueva_partida 
		j salir_juego
		nueva_partida:
			li $t1, 2
			beq $s0, $t1, juego_car
				jal flappy_new_game
				add $a0, $v0, $zero
				j gamemenu
				juego_car:
				jal car_new_game
				add $a0, $v0, $zero
				j gamemenu
	salir_juego:
	jal clean_screen
	# -----EPILOGO-----#
    lw $ra , ($sp) 	
	addi $sp, $sp, 4 
	jr $ra