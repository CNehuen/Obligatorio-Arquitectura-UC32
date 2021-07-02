.globl menu
.globl dibujar_subrayar
.data
MenuPrincipal: .asciiz "MENU PRINCIPAL"
StringRacing: .asciiz "CAR RACING"
StringFlappy: .asciiz "FLAPPY BIRD"
MenuJuego1: .asciiz "NUEVO JUEGO"
MenuJuego2: .asciiz "SALIR"
.text
menu:
    /*$a0 -> selector de manu para mostrar
	0 -> Menu principal de seleccion de juego
	1-> Menu de juego*/

    /*Guardo $ra en sp para no perderlo*/
    addi $sp, $sp, -4 
    sw $ra, ($sp)

    beqz $a0, menu_principal
	beq $a0, 2, car_racing_menu
		la $a0, StringFlappy
		li $a1, 2
		li $a2, 2
		jal dibujarString
		la $a0, MenuJuego1
		li $a1, 2
		li $a2, 22
		jal dibujarString
		la $a0, MenuJuego2
		li $a1, 2
		li $a2, 32
		jal dibujarString
		li $t9,2  # Cantidad de strings seleccionables
		addu $t8, $zero, $zero
		j subrayar_string
		
	menu_principal:
		la $a0, MenuPrincipal
		li $a1, 2
		li $a2, 2
		jal dibujarString
		la $a0, StringFlappy
		li $a1, 2
		li $a2, 22
		jal dibujarString
		la $a0, StringRacing
		li $a1, 2
		li $a2, 32
		jal dibujarString
		li $t9,2  # Cantidad de strings seleccionables
		add $t8, $zero, $zero
		jal subrayar_string
		
	car_racing_menu:
		la $a0, StringRacing
		li $a1, 2
		li $a2, 2
		jal dibujarString
		la $a0, MenuJuego1
		li $a1, 2
		li $a2, 22
		jal dibujarString
		la $a0, MenuJuego2
		li $a1, 2
		li $a2, 32
		jal dibujarString
		li $t9,2  # Cantidad de strings seleccionables
		add $t8, $zero, $zero
		j subrayar_string
		

	subrayar_string:
	    mul $a1, $t8, 10  
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0xff
	    jal dibujar_subrayar /*subrayo el primer item*/
	    # subi $t8, $t8, 1
		jal dibujar_display
		add $t8, $zero, $zero
	loop_seleccion_menu:
	    # verifico si presiona el boton de cambiar opcion o elegir opcion
		la $t3, PORTF
		lb $t4, ($t3)
		
		beqz $t4, loop_seleccion_menu
		li $t5,  2
		sub $t5, $t4,$t5
		bgez $t5, boton_enter
	    
		mul $a1, $t8, 10  
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0x00
	    jal dibujar_subrayar /*borro el subraye anterior*/
	    addiu $t8, $t8, 1
	    beq $t8, $t9, renuevo_t8
	sigo_subrayar:
	    /*calculo posicion Y de la linea a subrayar : y= 22(pos iniical del primer string) + t8*deltah(separacion entre strings) + 8(altura del string)*/
	    mul $a1, $t8, 10  
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0xff
	    jal dibujar_subrayar /*subrayo el item de menu actual*/
	    /*jal dibujar_display*/
		j loop_seleccion_menu
	    renuevo_t8:
		    add $t8,$zero, $zero
		    j sigo_subrayar

	boton_enter:
	    add $v0, $t8, $zero

	/*EPILOGO*/
	lw $ra , ($sp) 	
	addi $sp, $sp, 4 

	jr $ra

dibujar_subrayar:
    /*Funcion que pinta rectangulos horizaontalmente desde la pisicion (x,y), hasta el maximo de caracteres (14)
    Parametros:
    $a0 -> posicion en x
    $a1 -> posicion en y
    $a2 -> color*/
    la $t0, img
    addiu $t3,$t0,8192
    li $t6, 128 
	mul $t1,$a1,$t6 	/*calculo la posicion del rectangulo de posicion (x,y) en la memoria*/
    addu $t1,$t1,$a0
    addu $t0, $t0,$t1	/*accedo a la posicion de memoria correspondiente al rectangulo a pintar*/

    addi $t2,$zero, 112
    li $t1,2
    loop_subrayar:
		beqz $t2, salir_subrayar
		sb $a2, ($t0)		/*pinto el rectangulo*/
		li $t6, 1
		sub $t2,$t2,$t6
		sub $t1, $t1,$t6
		addiu $t0,$t0,1
		j loop_subrayar
    salir_subrayar:	
	li $t6, 1
    
    li $t2, 112
    addiu $t0, $t0, 16  /*avanzo para quedar al principio del subrayar, 1 pixel debajo*/
    beq $t1, $t6, loop_subrayar
    jr $ra	



