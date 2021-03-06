.globl update_my_car
update_my_car: 
   			# -----PROLOGO-----#
			# Guardo $ra en sp para no perderlo
			addi $sp, $sp, -4 
			sw $ra, ($sp)	
				
				# #PARTE SEPARADA DEL METODO YA QUE ES RECURSIVA## 			
				# # Inicializar coordenadas en Yauto		
				# #Zona inicial es Zona 1  	
 				# y = 3 + t2 *22
 			 	# Lo que importa es lo que vale $t2
 			 	la $t1, coordenadaenYauto 	# Zona y Movimiento
				lb $t2, ($t1)				 				 	
 			 	bne $t2, -1, movimientoAuto 
 			 	li $t2, 0
 			 	j BajarAuto  		 	
 			 	
				movimientoAuto:					
				la $t3, PORTF
				lb $t4, ($t3)
				# los botones estan en rf4 y rf5. las resistencias estan conectadas como pull-up
				li $t5,  0x10
				and $t5, $t4, $t5
				beq $t5, $zero, limpio_mi_posicion
				li $t5,  0x20
				and $t5, $t4, $t5
				beq $t5, $zero, limpio_mi_posicion
				
				j finMovimientoAuto
				limpio_mi_posicion:
				la $t1, coordenadaenYauto 	# Zona y Movimiento
				lb $t2, ($t1) 			    # Zona actual 	
				mul $t4, $t2, 22 
				addi $a1, $t4,3					
				li $a0, 4 					# Posicion en x siempre es 4		
				li $a3, 0
				li $s3, 17			
				delete_my_car:
					addi $s3, $s3, -1
					beqz $s3, end_delete_my_car
					li $a2, 12
					jal ColumnasVerticales
					addiu $a0, $a0,1
					j delete_my_car
				end_delete_my_car:
				la $t1, coordenadaenYauto     				        				
				lb $t2, ($t1)  
				la $t3, PORTF
				lb $t4, ($t3)
				# los botones estan en rf4 y rf5. las resistencias estan conectadas como pull-up
				li $t5,  0x10
				and $t5, $t4, $t5
				beq $t5, $zero, SubirAuto
				li $t5,  0x20
				and $t5, $t4, $t5
				beq $t5, $zero, BajarAuto
				
				j finMovimientoAuto	
				
			 		
				
				SubirAuto:
				beqz $t2, no_subir  # La zona es 0 , la zona es 1 o 2  
				sub $t2, $t2, 1 				
				no_subir:
				li $a0, 4     # Recibe posicion en x 
				mul $t4, $t2, 22 
				addi $a1, $t4,3
				# move $a1, $t4	 # Recibe posicion en y 
				li $a3, 1 
				sb $t2, ($t1) 		   
				jal dibujar_auto																							 						 						
				j finMovimientoAuto
						
				BajarAuto:
				beq $t2, 2, no_bajar
				addi $t2, $t2, 1 
				no_bajar:
				li $a0, 4    # Recibe posicion en x 
				mul $t4, $t2, 22 
				addi $a1, $t4,3
				#move $a1, $t4	 # Recibe posicion en y 
				li $a3, 1
				sb $t2, ($t1)		   
				jal dibujar_auto																		 
				j finMovimientoAuto
						
			finMovimientoAuto:																									
						
			# -----EPILOGO-----#
    		lw $ra , ($sp) 	
			addi $sp, $sp, 4 
							
			jr $ra	
			



