.globl getFont8x8



getFont8x8: 
	# a0 -> char que debe devolver en formato font8x8 para dibujar en el display
	la $t0, font8x8
	li $t1, ' '
	beq $a0, $t1, devuelvoEspacio
	li $t1,  'A'
	beq $a0, $t1 devuelvoA
	li $t1,  'B'
	beq $a0, $t1 devuelvoB
	li $t1,  'C'
	beq $a0, $t1 devuelvoC
	li $t1,  'D'
	beq $a0, $t1 devuelvoD
	li $t1,  'E'
	beq $a0, $t1 devuelvoE
	li $t1,  'F'
	beq $a0, $t1 devuelvoF
	li $t1,  'G'
	beq $a0, $t1 devuelvoG
	li $t1,  'H'
	beq $a0, $t1 devuelvoH
	li $t1,  'I'
	beq $a0, $t1 devuelvoI
	li $t1,  'J'
	beq $a0, $t1 devuelvoJ
	li $t1,  'K'
	beq $a0, $t1 devuelvoK
	li $t1,  'L'
	beq $a0, $t1 devuelvoL
	li $t1,  'M'
	beq $a0, $t1 devuelvoM
	li $t1,  'N'
	beq $a0, $t1 devuelvoN
	li $t1,  'O'
	beq $a0, $t1 devuelvoO
	li $t1,  'P'
	beq $a0, $t1 devuelvoP
	li $t1,  'Q'
	beq $a0, $t1 devuelvoQ
	li $t1,  'R'
	beq $a0, $t1 devuelvoR
	li $t1,  'S'
	beq $a0, $t1 devuelvoS
	li $t1,  'T'
	beq $a0, $t1 devuelvoT
	li $t1,  'U'
	beq $a0, $t1 devuelvoU
	li $t1,  'V'
	beq $a0, $t1 devuelvoV
	li $t1,  'W'
	beq $a0, $t1 devuelvoW
	li $t1,  'X'
	beq $a0, $t1 devuelvoX
	li $t1,  'Y'
	beq $a0, $t1 devuelvoY
	li $t1,  'Z'
	beq $a0, $t1 devuelvoZ
	li $t1,  ':'
	beq $a0, $t1 devuelvoDosPuntos
	li $t1,  '1'
	beq $a0, $t1 devuelvo1
	li $t1,  '2'
	beq $a0, $t1 devuelvo2
	li $t1,  '3'
	beq $a0, $t1 devuelvo3
	li $t1,  '4'
	beq $a0, $t1 devuelvo4
	li $t1,  '5'
	beq $a0, $t1 devuelvo5
	li $t1,  '6'
	beq $a0, $t1 devuelvo6
	li $t1,  '7'
	beq $a0, $t1 devuelvo7
	li $t1,  '8'
	beq $a0, $t1 devuelvo8
	li $t1,  '9'
	beq $a0, $t1 devuelvo9
	li $t1,  'p'
	beq $a0, $t1 devuelvoPajaro
	j fin

devuelvoEspacio:	
	# {0x0C, 0x1E, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x00} 
      li $t1, 0x00 
      sb $t1 , ($t0)
      li $t1, 0x00 
      sb $t1 , 1($t0)
      li $t1, 0x00
      sb $t1 , 2($t0)
      li $t1, 0x00 
      sb $t1 , 3($t0)
      li $t1, 0x00 
      sb $t1 , 4($t0)
      li $t1, 0x00 
      sb $t1 , 5($t0)
      li $t1, 0x00 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoA:	
	# {0x0C, 0x1E, 0x33, 0x33, 0x3F, 0x33, 0x33, 0x00} 
      li $t1, 0x0C 
      sb $t1 , ($t0)
      li $t1, 0x1E 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x33 
      sb $t1 , 3($t0)
      li $t1, 0x3F 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x33 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
         
devuelvoB:
      li $t1, 0x3F 
      sb $t1 , ($t0)
      li $t1, 0x66 
      sb $t1 , 1($t0)
      li $t1, 0x66
      sb $t1 , 2($t0)
      li $t1, 0x3E
      sb $t1 , 3($t0)
      li $t1, 0x66
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x3F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 

devuelvoC:
      li $t1, 0x3C
      sb $t1 , ($t0)
      li $t1, 0x66 
      sb $t1 , 1($t0)
      li $t1, 0x03
      sb $t1 , 2($t0)
      li $t1, 0x03 
      sb $t1 , 3($t0)
      li $t1, 0x03 
      sb $t1 , 4($t0)
      li $t1, 0x66
      sb $t1 , 5($t0)
      li $t1, 0x3C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)      
      j fin 
      
devuelvoD:
  	  li $t1, 0x1F 
      sb $t1 , ($t0)
      li $t1, 0x36
      sb $t1 , 1($t0)
      li $t1, 0x66
      sb $t1 , 2($t0)
      li $t1, 0x66 
      sb $t1 , 3($t0)
      li $t1, 0x66 
      sb $t1 , 4($t0)
      li $t1, 0x36
      sb $t1 , 5($t0)
      li $t1, 0x1F
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoE:
      li $t1, 0x7F
      sb $t1 , ($t0)
      li $t1, 0x46
      sb $t1 , 1($t0)
      li $t1, 0x16
      sb $t1 , 2($t0)
      li $t1, 0x1E 
      sb $t1 , 3($t0)
      li $t1, 0x16
      sb $t1 , 4($t0)
      li $t1, 0x46
      sb $t1 , 5($t0)
      li $t1, 0x7F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)      
      j fin 

devuelvoF:
      li $t1, 0x7F
      sb $t1 , ($t0)
      li $t1, 0x46 
      sb $t1 , 1($t0)
      li $t1, 0x16
      sb $t1 , 2($t0)
      li $t1, 0x1E
      sb $t1 , 3($t0)
      li $t1, 0x16
      sb $t1 , 4($t0)
      li $t1, 0x06		
      sb $t1 , 5($t0)
      li $t1, 0x0F
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoG:	
      li $t1, 0x3C 
      sb $t1 , ($t0)
      li $t1, 0x66
      sb $t1 , 1($t0)
      li $t1, 0x03
      sb $t1 , 2($t0)
      li $t1, 0x03 
      sb $t1 , 3($t0)
      li $t1, 0x73 
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x7C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)      
      j fin 

devuelvoH:
      li $t1, 0x33 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x3F 
      sb $t1 , 3($t0)
      li $t1, 0x33 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x33 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)      
      j fin 

devuelvoI:
      li $t1, 0x1E
      sb $t1 , ($t0)
      li $t1, 0x0C 
      sb $t1 , 1($t0)
      li $t1, 0x0C
      sb $t1 , 2($t0)
      li $t1, 0x0C 
      sb $t1 , 3($t0)
      li $t1, 0x0C 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 

devuelvoJ:
      li $t1, 0x78 
      sb $t1 , ($t0)
      li $t1, 0x30 
      sb $t1 , 1($t0)
      li $t1, 0x30 
      sb $t1 , 2($t0)
      li $t1, 0x30  
      sb $t1 , 3($t0)
      li $t1, 0x33 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 

devuelvoK:
      li $t1, 0x67 
      sb $t1 , ($t0)
      li $t1, 0x66 
      sb $t1 , 1($t0)
      li $t1, 0x36
      sb $t1 , 2($t0)
      li $t1, 0x1E 
      sb $t1 , 3($t0)
      li $t1, 0x36 
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x67 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoL:
      li $t1, 0x0F 
      sb $t1 , ($t0)
      li $t1, 0x06
      sb $t1 , 1($t0)
      li $t1, 0x06
      sb $t1 , 2($t0)
      li $t1, 0x06 
      sb $t1 , 3($t0)
      li $t1, 0x46 
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x7F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoM:	
      li $t1, 0x63
      sb $t1 , ($t0)
      li $t1, 0x77 
      sb $t1 , 1($t0)
      li $t1, 0x7F
      sb $t1 , 2($t0)
      li $t1, 0x7F 
      sb $t1 , 3($t0)
      li $t1, 0x6B 
      sb $t1 , 4($t0)
      li $t1, 0x63 
      sb $t1 , 5($t0)
      li $t1, 0x63 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoN:
      li $t1, 0x63 
      sb $t1 , ($t0)
      li $t1, 0x67 
      sb $t1 , 1($t0)
      li $t1, 0x6F
      sb $t1 , 2($t0)
      li $t1, 0x7B 
      sb $t1 , 3($t0)
      li $t1, 0x73
      sb $t1 , 4($t0)
      li $t1, 0x63 
      sb $t1 , 5($t0)
      li $t1, 0x63 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoO:
      li $t1, 0x1C 
      sb $t1 , ($t0)
      li $t1, 0x36 
      sb $t1 , 1($t0)
      li $t1, 0x63
      sb $t1 , 2($t0)
      li $t1, 0x63 
      sb $t1 , 3($t0)
      li $t1, 0x63 
      sb $t1 , 4($t0)
      li $t1, 0x36 
      sb $t1 , 5($t0)
      li $t1, 0x1C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoP:
      li $t1, 0x3F 
      sb $t1 , ($t0)
      li $t1, 0x66
      sb $t1 , 1($t0)
      li $t1, 0x66
      sb $t1 , 2($t0)
      li $t1, 0x3E 
      sb $t1 , 3($t0)
      li $t1, 0x06 
      sb $t1 , 4($t0)
      li $t1, 0x06 
      sb $t1 , 5($t0)
      li $t1, 0x0F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoQ:
      li $t1, 0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x33 
      sb $t1 , 3($t0)
      li $t1, 0x3B 
      sb $t1 , 4($t0)
      li $t1, 0x1E
      sb $t1 , 5($t0)
      li $t1, 0x38 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoR:
      li $t1, 0x3F
      sb $t1 , ($t0)
      li $t1, 0x66 
      sb $t1 , 1($t0)
      li $t1, 0x66
      sb $t1 , 2($t0)
      li $t1, 0x3E 
      sb $t1 , 3($t0)
      li $t1, 0x36 
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x67 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoS:	
      li $t1, 0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x07
      sb $t1 , 2($t0)
      li $t1, 0x0E 
      sb $t1 , 3($t0)
      li $t1, 0x38 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoT:
      li $t1, 0x3F 
      sb $t1 , ($t0)
      li $t1, 0x2D 
      sb $t1 , 1($t0)
      li $t1, 0x0C
      sb $t1 , 2($t0)
      li $t1, 0x0C 
      sb $t1 , 3($t0)
      li $t1, 0x0C 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoU:
      li $t1, 0x33 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x33 
      sb $t1 , 3($t0)
      li $t1, 0x33 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x3F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoV:
      li $t1, 0x33 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x33 
      sb $t1 , 3($t0)
      li $t1, 0x3F 
      sb $t1 , 4($t0)
      li $t1, 0x1E 
      sb $t1 , 5($t0)
      li $t1, 0x0C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoW:
      li $t1, 0x63 
      sb $t1 , ($t0)
      li $t1, 0x63 
      sb $t1 , 1($t0)
      li $t1, 0x63
      sb $t1 , 2($t0)
      li $t1, 0x6B 
      sb $t1 , 3($t0)
      li $t1, 0x7F 
      sb $t1 , 4($t0)
      li $t1, 0x77 
      sb $t1 , 5($t0)
      li $t1, 0x63 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoX:
      li $t1, 0x63 
      sb $t1 , ($t0)
      li $t1, 0x63 
      sb $t1 , 1($t0)
      li $t1, 0x36
      sb $t1 , 2($t0)
      li $t1, 0x1C 
      sb $t1 , 3($t0)
      li $t1, 0x1C 
      sb $t1 , 4($t0)
      li $t1, 0x36 
      sb $t1 , 5($t0)
      li $t1, 0x63 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoY:	
      li $t1, 0x33 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x1E 
      sb $t1 , 3($t0)
      li $t1, 0x0C 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoZ:
      li $t1, 0x7F 
      sb $t1 , ($t0)
      li $t1, 0x63 
      sb $t1 , 1($t0)
      li $t1, 0x31
      sb $t1 , 2($t0)
      li $t1, 0x18 
      sb $t1 , 3($t0)
      li $t1, 0x4C 
      sb $t1 , 4($t0)
      li $t1, 0x66 
      sb $t1 , 5($t0)
      li $t1, 0x7F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvoDosPuntos:
      li $t1, 0x00 
      sb $t1 , ($t0)
      li $t1, 0x0C 
      sb $t1 , 1($t0)
      li $t1, 0x0C
      sb $t1 , 2($t0)
      li $t1, 0x00 
      sb $t1 , 3($t0)
      li $t1, 0x00 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x0C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo0:
      li $t1, 0x3E 
      sb $t1 , ($t0)
      li $t1, 0x63 
      sb $t1 , 1($t0)
      li $t1, 0x73
      sb $t1 , 2($t0)
      li $t1, 0x7B 
      sb $t1 , 3($t0)
      li $t1, 0x6F 
      sb $t1 , 4($t0)
      li $t1, 0x67 
      sb $t1 , 5($t0)
      li $t1, 0x3E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo1:
      li $t1, 0x0C 
      sb $t1 , ($t0)
      li $t1, 0x0E 
      sb $t1 , 1($t0)
      li $t1, 0x0C
      sb $t1 , 2($t0)
      li $t1, 0x0C 
      sb $t1 , 3($t0)
      li $t1, 0x0C 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x3F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo2:
      li $t1, 0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x30
      sb $t1 , 2($t0)
      li $t1, 0x1C 
      sb $t1 , 3($t0)
      li $t1, 0x06 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x3F 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo3:	
      li $t1, 0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x30
      sb $t1 , 2($t0)
      li $t1, 0x1C 
      sb $t1 , 3($t0)
      li $t1, 0x30 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo4:
      li $t1, 0x38 
      sb $t1 , ($t0)
      li $t1, 0x3C 
      sb $t1 , 1($t0)
      li $t1, 0x36
      sb $t1 , 2($t0)
      li $t1, 0x33 
      sb $t1 , 3($t0)
      li $t1, 0x7F 
      sb $t1 , 4($t0)
      li $t1, 0x30 
      sb $t1 , 5($t0)
      li $t1, 0x78 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo5:
      li $t1, 0x3F 
      sb $t1 , ($t0)
      li $t1, 0x03 
      sb $t1 , 1($t0)
      li $t1, 0x1F
      sb $t1 , 2($t0)
      li $t1, 0x30 
      sb $t1 , 3($t0)
      li $t1, 0x30 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 

devuelvo6:
      li $t1, 0x1C 
      sb $t1 , ($t0)
      li $t1, 0x06 
      sb $t1 , 1($t0)
      li $t1, 0x03
      sb $t1 , 2($t0)
      li $t1, 0x1F 
      sb $t1 , 3($t0)
      li $t1, 0x33 
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)      
      j fin 
      
devuelvo7:
      li $t1, 0x3F 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x30
      sb $t1 , 2($t0)
      li $t1, 0x18 
      sb $t1 , 3($t0)
      li $t1, 0x0C 
      sb $t1 , 4($t0)
      li $t1, 0x0C 
      sb $t1 , 5($t0)
      li $t1, 0x0C 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo8:
      li $t1,  0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x1E 
      sb $t1 , 3($t0)
      li $t1, 0x33
      sb $t1 , 4($t0)
      li $t1, 0x33 
      sb $t1 , 5($t0)
      li $t1, 0x1E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 
      
devuelvo9:	
      li $t1, 0x1E 
      sb $t1 , ($t0)
      li $t1, 0x33 
      sb $t1 , 1($t0)
      li $t1, 0x33
      sb $t1 , 2($t0)
      li $t1, 0x3E 
      sb $t1 , 3($t0)
      li $t1, 0x30 
      sb $t1 , 4($t0)
      li $t1, 0x18 
      sb $t1 , 5($t0)
      li $t1, 0x0E 
      sb $t1 , 6($t0)
      li $t1, 0x00 
      sb $t1 , 7($t0)
      j fin 

devuelvoPajaro: 	
	li $t1, 0x1C 
	sb $t1 , ($t0)
	li $t1, 0x62 
	sb $t1 , 1($t0)
	li $t1, 0x85
	sb $t1 , 2($t0)
	li $t1, 0x85 
	sb $t1 , 3($t0)
	li $t1, 0x81 
	sb $t1 , 4($t0)
	li $t1, 0x4E 
	sb $t1 , 5($t0)
	li $t1, 0x51 
	sb $t1 , 6($t0)
	li $t1, 0x7E 
	sb $t1 , 7($t0)
	  j fin


	  fin:
      jr $ra 
  


