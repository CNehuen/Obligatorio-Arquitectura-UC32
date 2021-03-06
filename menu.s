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
	li $t4, 2
	beq $a0, $t4, car_racing_menu
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
		li $s7,2  # Cantidad de strings seleccionables
		addu $s6, $zero, $zero
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
		li $s7,2  # Cantidad de strings seleccionables
		add $s6, $zero, $zero
		j subrayar_string
		
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
		li $s7,2  # Cantidad de strings seleccionables
		add $s6, $zero, $zero
		j subrayar_string
		

	subrayar_string:
		li $t4, 10
	    mul $a1, $s6, $t4
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0xff
	    jal dibujar_subrayar /*subrayo el primer item*/
		jal dibujar_display
		add $s6, $zero, $zero
	loop_seleccion_menu:
		li $t4 ,0
		li $t5, 150
		wait3:
			addiu $t4, $t4, 1
			bne $t4, $t5,wait3
	    # verifico si presiona el boton de cambiar opcion o elegir opcion
		la $t3, PORTF
		lb $t4, ($t3)
		# los botones estan en rf4 y rf5. las resistencias estan conectadas como pull-up
		li $t5,  0x10
		and $t5, $t4, $t5
		beq $t5, $zero, boton_enter
	    li $t5,  0x20
		and $t5, $t4, $t5
		bne $t5, $zero, loop_seleccion_menu
		li $t4 ,0
		li $t5, 150
		wait4:
			addi $t4, $t4, 1
			bne $t4, $t5,wait4
		li $t4, 10
		mul $a1, $s6, $t4  
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0x00
	    jal dibujar_subrayar /*borro el subraye anterior*/
	    addiu $s6, $s6, 1
	    beq $s6, $s7, renuevo_t8
	sigo_subrayar:
	    /*calculo posicion Y de la linea a subrayar : y= 22(pos iniical del primer string) + t8*deltah(separacion entre strings) + 8(altura del string)*/
	    
		mul $a1, $s6, $t4  
	    addiu $a1, $a1, 30
	    li $a0, 2
	    li $a2, 0xff
	    jal dibujar_subrayar /*subrayo el item de menu actual*/
	    jal dibujar_display

		j loop_seleccion_menu
	    renuevo_t8:
		    add $s6,$zero, $zero
		    j sigo_subrayar

	boton_enter:
	    add $v0, $s6, $zero
		

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



