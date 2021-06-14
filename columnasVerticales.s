.globl ColumnasVerticales                                       
                                                                                                                             
ColumnasVerticales:   
    /* Funcion que pinta rectangulos verticalemte desde la pisicion (x,y) 
    hacia abajo n veces, del color pasado por parametro
    Parametros:
    $a0 -> posicion en x
    $a1 -> posicion en y
    $a2 -> cantidad de rectangulos a pintar
    $a3 -> color*/
    la $t0, img
    addu $t3,$t0,8192
    li $t6, 128
	mul $t1,$a1,$t6   /*calculo la posicion del rectangulo de posicion (x,y) en la memoria*/
    addu $t1,$t1,$a0
    addu $t0, $t0,$t1   /*accedo a la posicion de memoria correspondiente al rectangulo a pintar*/
    pintar_rectangulos:
		beqz $a2, salir_funcion_rectangulos	/*si no hay rectangulos para pintar, salgo*/
		sub $t3, $t0, $t3
		bgtz $t3,salir_funcion_rectangulos   /*si trata pintar por fuera de la imagen, salgo*/
		sb $a3, ($t0)			/*pinto el rectangulo*/
		addiu $a2,$a2,-1							
		addiu $t0,$t0,128		/*accedo al siguiente rectangulo a pintar*/
		j pintar_rectangulos
    salir_funcion_rectangulos:
    jr $ra