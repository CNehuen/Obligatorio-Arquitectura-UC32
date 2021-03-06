.globl cargar_buffer

cargar_buffer:
	/*
	Se encarga de cargar el buffer cuando este disponible y mandar data
	Parametros:
	 a0 -> dato a mandar
	*/
	li $t0, 0x00000008 # mascara para recuperar el bit buffer empty flag
	buffer_no_vacio:
			la $t3, SPI2STAT

		lw $t1, ($t3) # verifico y espero a que el buffer este vacio
		and $t2,$t0, $t1
		beqz $t2, buffer_no_vacio
		la $t0,SPI2BUF
		sb $a0, ($t0) # cuando se vacia el buffer le cargo un nuevo byte
	jr $ra

