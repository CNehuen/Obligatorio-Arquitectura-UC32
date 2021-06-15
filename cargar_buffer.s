.globl cargar_buffer

cargar_buffer:
	/*
	Se encarga de cargar el buffer cuando este disponible y mandar data
	Parametros:
	 a0 -> dato a mandar
	*/
	li $t0, 0x00000008
	lw $t1, SPI2STAT
	buffer_no_vacio:
		lw $t1, SPI2STAT # verifico y espero a que el buffer este vacio
		beqz $t1, buffer_no_vacio
	sb $a0, SPI2BUF # cuando se vacia el buffer le cargo un nuevo byte
	jr $ra
