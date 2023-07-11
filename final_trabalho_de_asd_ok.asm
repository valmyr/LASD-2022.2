.data
     fim:.asciiz "\n"
     nulo:.ascii "\0"

     msg: .asciiz "strings iguais\n"	
     msgAlunoEncontradop1: .asciiz "O(a) aluno(a) "
     msgAlunoEncontradop2: .asciiz " corresponde à matrícula "
     msgNao              : .asciiz " não foi encontrado(a)\n"
     ponto               : .asciiz "."
     espaco	         : .asciiz " "
     souEU               : .asciiz "Sou eu! Eu sou VALMIR FERREIRA DA SILVA, e tenho matrícula 119211110.\n"

    aluno0:.asciiz "ADSON  SANTOS"
    aluno1:.asciiz "ANA  AMENO"
    aluno2:.asciiz "ANA  SANTOS"
    aluno3:.asciiz "ANNA  LIMA"
    aluno4:.asciiz "ANTONIO  FILHO"
    aluno5:.asciiz "ARTENIO  CORREIA"
    aluno6:.asciiz "ARTHUR  ALVES"
    aluno7:.asciiz "ARTHUR  CUNHA"
    aluno8:.asciiz "BEATRIZ  SOUSA"
    aluno9:.asciiz "CAIO  ABRANTES"
    aluno10:.asciiz "CELTON  GAMA"
    aluno11:.asciiz "CICERO  SILVA"
    aluno12:.asciiz "DAVY  FERREIRA"
    aluno13:.asciiz "EDUARDO  BARBOSA"
    aluno14:.asciiz "EDVALDO  SANTOS"
    aluno15:.asciiz "EMMANUEL  LIRA"
    aluno16:.asciiz "ERICA  NASCIMENTO"
    aluno17:.asciiz "GABRIEL  MOTA"
    aluno18:.asciiz "GUSTAVO  QUEIROZ"
    aluno19:.asciiz "HIGOR  OLIVEIRA"
    aluno20:.asciiz "IAGO  TORRES"
    aluno21:.asciiz "IGOR  TORRES"
    aluno22:.asciiz "IZADORA  EUSTAQUEO"
    aluno23:.asciiz "JANIELE  BENICIO"
    aluno24:.asciiz "JEFFERSON  LOPES"
    aluno25:.asciiz "JESSYCA  BRANDAO"
    aluno26:.asciiz "JOAO  CARVALHO"
    aluno27:.asciiz "JOSE  CORDEIRO"
    aluno28:.asciiz "JOSE  NETO"
    aluno29:.asciiz "JULIANA  NUNES"
    aluno30:.asciiz "LUCAS  CAVALCANTE"
    aluno31:.asciiz "LUCAS  OLIVEIRA"
    aluno32:.asciiz "LUIZ  SANTOS"
    aluno33:.asciiz "LUIZ  NASCIMENTO"
    aluno34:.asciiz "MARCIO  FERNANDES"
    aluno35:.asciiz "MATEUS  LOPES"
    aluno36:.asciiz "MATHEUS  SOBRINHO"
    aluno37:.asciiz "MATHEUS  SILVA"
    aluno38:.asciiz "MICHELLE  DELAZARI"
    aluno39:.asciiz "NADHIA  SILVA"
    aluno40:.asciiz "NATHAN  FERNANDES"
    aluno41:.asciiz "NATHAN  BRITO"
    aluno42:.asciiz "PEDRO  MELO"
    aluno43:.asciiz "RAFAEL  SANTOS"
    aluno44:.asciiz "RAFAEL  LIMA"
    aluno45:.asciiz "RAISSA  FERREIRA"
    aluno46:.asciiz "RAPHAEL  PACE"
    aluno47:.asciiz "ROGERIO  ALMEIDA"
    aluno48:.asciiz "SILAS  SOARES"
    aluno49:.asciiz "THAYONARA  TOMAZ"
    aluno50:.asciiz "TULIO  TAVARES"
    aluno51:.asciiz "VALMIR  SILVA"
    aluno52:.asciiz "VICTOR  BERNARDO"
    aluno53:.asciiz "VITOR  AMARO"
    aluno54:.asciiz "VITOR  TEIXEIRA"
    aluno55:.asciiz "WALISSON  MESSIAS"
    aluno56:.asciiz "WENDEL  MENEZES"
    
    aluno_ultimo0:.asciiz "SANTOS"
    aluno_ultimo1:.asciiz "AMENO"
    aluno_ultimo2:.asciiz "SANTOS"
    aluno_ultimo3:.asciiz "LIMA"
    aluno_ultimo4:.asciiz "FILHO"
    aluno_ultimo5:.asciiz "CORREIA"
    aluno_ultimo6:.asciiz "ALVES"
    aluno_ultimo7:.asciiz "CUNHA"
    aluno_ultimo8:.asciiz "SOUSA"
    aluno_ultimo9:.asciiz "ABRANTES"
    aluno_ultimo10:.asciiz "GAMA"
    aluno_ultimo11:.asciiz "SILVA"
    aluno_ultimo12:.asciiz "FERREIRA"
    aluno_ultimo13:.asciiz "BARBOSA"
    aluno_ultimo14:.asciiz "SANTOS"
    aluno_ultimo15:.asciiz "LIRA"
    aluno_ultimo16:.asciiz "NASCIMENTO"
    aluno_ultimo17:.asciiz "MOTA"
    aluno_ultimo18:.asciiz "QUEIROZ"
    aluno_ultimo19:.asciiz "OLIVEIRA"
    aluno_ultimo20:.asciiz "TORRES"
    aluno_ultimo21:.asciiz "TORRES"
    aluno_ultimo22:.asciiz "EUSTAQUEO"
    aluno_ultimo23:.asciiz "BENICIO"
    aluno_ultimo24:.asciiz "LOPES"
    aluno_ultimo25:.asciiz "BRANDAO"
    aluno_ultimo26:.asciiz "CARVALHO"
    aluno_ultimo27:.asciiz "CORDEIRO"
    aluno_ultimo28:.asciiz "NETO"
    aluno_ultimo29:.asciiz "NUNES"
    aluno_ultimo30:.asciiz "CAVALCANTE"
    aluno_ultimo31:.asciiz "OLIVEIRA"
    aluno_ultimo32:.asciiz "SANTOS"
    aluno_ultimo33:.asciiz "NASCIMENTO"
    aluno_ultimo34:.asciiz "FERNANDES"
    aluno_ultimo35:.asciiz "LOPES"
    aluno_ultimo36:.asciiz "SOBRINHO"
    aluno_ultimo37:.asciiz "SILVA"
    aluno_ultimo38:.asciiz "DELAZARI"
    aluno_ultimo39:.asciiz "SILVA"
    aluno_ultimo40:.asciiz "FERNANDES"
    aluno_ultimo41:.asciiz "BRITO"
    aluno_ultimo42:.asciiz "MELO"
    aluno_ultimo43:.asciiz "SANTOS"
    aluno_ultimo44:.asciiz "LIMA"
    aluno_ultimo45:.asciiz "FERREIRA"
    aluno_ultimo46:.asciiz "PACE"
    aluno_ultimo47:.asciiz "ALMEIDA"
    aluno_ultimo48:.asciiz "SOARES"
    aluno_ultimo49:.asciiz "TOMAZ"
    aluno_ultimo50:.asciiz "TAVARES"
    aluno_ultimo51:.asciiz "SILVA"
    aluno_ultimo52:.asciiz "BERNARDO"
    aluno_ultimo53:.asciiz "AMARO"
    aluno_ultimo54:.asciiz "TEIXEIRA"
    aluno_ultimo55:.asciiz "MESSIAS"
    aluno_ultimo56:.asciiz "MENEZES"
    matricula0:.asciiz "121110795"
    matricula1:.asciiz "121110149"
    matricula2:.asciiz "120210869"
    matricula3:.asciiz "121111063"
    matricula4:.asciiz "119210115"
    matricula5:.asciiz "119111105"
    matricula6:.asciiz "119211079"
    matricula7:.asciiz "119110991"
    matricula8:.asciiz "120111097"
    matricula9:.asciiz "118110269"
    matricula10:.asciiz "120111325"
    matricula11:.asciiz "118210875"
    matricula12:.asciiz "119210349"
    matricula13:.asciiz "118110318"
    matricula14:.asciiz "118210812"
    matricula15:.asciiz "119210159"
    matricula16:.asciiz "118210832"
    matricula17:.asciiz "119111545"
    matricula18:.asciiz "119210009"
    matricula19:.asciiz "119210570"
    matricula20:.asciiz "119110846"
    matricula21:.asciiz "118111455"
    matricula22:.asciiz "119210155"
    matricula23:.asciiz "122111275"
    matricula24:.asciiz "119110412"
    matricula25:.asciiz "118110402"
    matricula26:.asciiz "118110399"
    matricula27:.asciiz "119210609"
    matricula28:.asciiz "117210491"
    matricula29:.asciiz "119210420"
    matricula30:.asciiz "118110916"
    matricula31:.asciiz "119210619"
    matricula32:.asciiz "119210372"
    matricula33:.asciiz "119210814"
    matricula34:.asciiz "120210367"
    matricula35:.asciiz "121111448"
    matricula36:.asciiz "118210699"
    matricula37:.asciiz "120110237"
    matricula38:.asciiz "119210911"
    matricula39:.asciiz "121210556"
    matricula40:.asciiz "119110392"
    matricula41:.asciiz "119211078"
    matricula42:.asciiz "118110419"
    matricula43:.asciiz "118210706"
    matricula44:.asciiz "119210677"
    matricula45:.asciiz "119211105"
    matricula46:.asciiz "119210494"
    matricula47:.asciiz "121110599"
    matricula48:.asciiz "119210904"
    matricula49:.asciiz "121111361"
    matricula50:.asciiz "120110898"
    matricula51:.asciiz "119211110"
    matricula52:.asciiz "118110734"
    matricula53:.asciiz "121110351"
    matricula54:.asciiz "119110521"
    matricula55:.asciiz "121111274"
    matricula56:.asciiz "119111057"
    
        
    mensagem_primeiro_nome:  .asciiz "Digite seu primeiro nome:"
    mensagem_segundo_nome :  .asciiz "Digite seu último nome:"
    
    enderecamento_do_ultimos_nomes: .word aluno_ultimo0,aluno_ultimo1,aluno_ultimo2,aluno_ultimo3,aluno_ultimo4,aluno_ultimo5,aluno_ultimo6,aluno_ultimo7,aluno_ultimo8,aluno_ultimo9,aluno_ultimo10,aluno_ultimo11,aluno_ultimo12,aluno_ultimo13,aluno_ultimo14,aluno_ultimo15,aluno_ultimo16,aluno_ultimo17,aluno_ultimo18,aluno_ultimo19,aluno_ultimo20,aluno_ultimo21,aluno_ultimo22,aluno_ultimo23,aluno_ultimo24,aluno_ultimo25,aluno_ultimo26,aluno_ultimo27,aluno_ultimo28,aluno_ultimo29,aluno_ultimo30,aluno_ultimo31,aluno_ultimo32,aluno_ultimo33,aluno_ultimo34,aluno_ultimo35,aluno_ultimo36,aluno_ultimo37,aluno_ultimo38,aluno_ultimo39,aluno_ultimo40,aluno_ultimo41,aluno_ultimo42,aluno_ultimo43,aluno_ultimo44,aluno_ultimo45,aluno_ultimo46,aluno_ultimo47,aluno_ultimo48,aluno_ultimo49,aluno_ultimo50,aluno_ultimo51,aluno_ultimo52,aluno_ultimo53,aluno_ultimo54,aluno_ultimo55,aluno_ultimo56
    enderecamento_dos_nomes: .word aluno0,aluno1,aluno2,aluno3,aluno4,aluno5,aluno6,aluno7,aluno8,aluno9,aluno10,aluno11,aluno12,aluno13,aluno14,aluno15,aluno16,aluno17,aluno18,aluno19,aluno20,aluno21,aluno22,aluno23,aluno24,aluno25,aluno26,aluno27,aluno28,aluno29,aluno30,aluno31,aluno32,aluno33,aluno34,aluno35,aluno36,aluno37,aluno38,aluno39,aluno40,aluno41,aluno42,aluno43,aluno44,aluno45,aluno46,aluno47,aluno48,aluno49,aluno50,aluno51,aluno52,aluno53,aluno54,aluno55,aluno56
    enderecamento_das_matriculas: .word matricula0,matricula1,matricula2,matricula3,matricula4,matricula5,matricula6,matricula7,matricula8,matricula9,matricula10,matricula11,matricula12,matricula13,matricula14,matricula15,matricula16,matricula17,matricula18,matricula19,matricula20,matricula21,matricula22,matricula23,matricula24,matricula25,matricula26,matricula27,matricula28,matricula29,matricula30,matricula31,matricula32,matricula33,matricula34,matricula35,matricula36,matricula37,matricula38,matricula39,matricula40,matricula41,matricula42,matricula43,matricula44,matricula45,matricula46,matricula47,matricula48,matricula49,matricula50,matricula51,matricula52,matricula53,matricula54,matricula55,matricula56
    primeiro_nome         :  .space 12
    ultimo_nome         :  .space 12

.text
inicio:
	addi $s6,$zero,228 #4*57
        li $v0, 4
	la $a0, mensagem_primeiro_nome
	syscall
	li $v0, 8
	la $a0,primeiro_nome
	la $a1,45
	syscall
	addi $t1,$zero,1
	lb $t3, primeiro_nome
	lb $t4, fim
	beq $t3,$t4,exit
	
	addi $s5,$zero,0 #incremento_próximo_aluno
	loop_proximo_aluno:
	addi $s4,$zero,0 #incremento_próxima_carácter
	lw $s2, enderecamento_dos_nomes($s5)

	loop_comparar_strings_primeiro_nome:
		lb $t0,fim #fim do string
		beq $s1,$t0, compara_string_ultimo_nome
		li $v0,11
		lb $s0,($s2)
		lb $s1,primeiro_nome($s4)
		la $a0,($s0)
		#syscall
		#li $v0,11
		#la $a0,($s1)
		#syscall
		addi $s4,$s4,1
		bne $s0,$s1,diferentes
		add $s2,$s2,1 #proximo carácter
		j loop_comparar_strings_primeiro_nome

compara_string_ultimo_nome:
	li $v0, 4
	la $a0, mensagem_segundo_nome
	syscall
	li $v0, 8
	la $a0,ultimo_nome
	la $a1,45
	addi $t1,$zero,0
	addi $s5,$s5,-4
	syscall
	lb $t3, ultimo_nome
	lb $t4, fim
	beq $t3,$t4,exit
	#incremento_próximo_aluno
	loop_proximo_aluno_:
	addi $s4,$zero,0 #incremento_próxima_carácter
	lw $s2, enderecamento_do_ultimos_nomes($s5)
	lw $t7, enderecamento_dos_nomes($s5)
	lb $t8,primeiro_nome($s4)
	lb $s1,ultimo_nome($s4)
	addi $t1,$zero,0
	loop_comparar_strings_primeiro_nome_:
		lb $t9, ($t7) #verificar se o sobre nome encontrado de fato e do nome associado
		bne $t8, $t9,diferentes_
		lb $t0,fim #fim da string
		li $v0,11
		lb $s0,($s2)
		lb $s1,ultimo_nome($s4)
		beq $s1,$t0, iguais
		la $a0,($s0)
		#syscall
		#li $v0,11
		#la $a0,($s1)
		#syscall
		addi $s4,$s4,1
		bne $s0,$s1,diferentes_
		add $s2,$s2,1 #proximo carácter
		j loop_comparar_strings_primeiro_nome_
	
diferentes:
	beq $s5,$s6, sai
	addi $s5,$s5,4
	j loop_proximo_aluno
diferentes_:
	beq $s5,$s6, sai
	addi $s5,$s5,4
	j loop_proximo_aluno_
iguais:
	jal print_aluno_encontrado
	j fim_codigo
sou_eu:
	jal print_sou_eu
	j fim_codigo
sai:
	jal print_aluno_nao_encontrado
	j fim_codigo
fim_codigo:

	addi $s0,$zero,0
	addi $s1,$zero,0
	addi $s2,$zero,0
	addi $s4,$zero,0
	addi $s5,$zero,0
	li $v0, 8
	la $s0,primeiro_nome
	la $a1,45
	li $v0, 8
	la $s0,ultimo_nome
	la $a1,45
	j inicio
print_aluno_encontrado:
	addi $t7,$zero,204  # 51*4 -> VALMIR
	beq $s5,$t7,sou_eu
	li $v0, 4
	la $a0,msgAlunoEncontradop1
	syscall
	li $v0, 4
	#addi $s5,$s5,-4
	lw $s7,enderecamento_dos_nomes($s5)
	lw $t3, enderecamento_das_matriculas($s5)
	la $a0,($s7)
	syscall
	li $v0, 4
	la $a0,msgAlunoEncontradop2
	syscall
	li $v0, 4
	la $a0, ($t3)
	syscall
	li $v0, 4
	la $a0, fim
	syscall
	jr $ra
print_aluno_nao_encontrado:
	la $t6, primeiro_nome
	li $v0, 4
	la $a0,msgAlunoEncontradop1
	syscall

	addi $s1,$zero,0
	lb $s5,fim
#______________________RETIRANDO O NEWLINE_______________________________
	in:
	la $s0,primeiro_nome($s1)
	lb $s6,($s0)
	beq $s6,$s5,_fim
	lb $a0,($s0)
	li $v0, 11
	syscall
	addi $s1,$s1,1
	j in
#______________________RETIRANDO O NEWLINE_______________________________
	_fim:
	bne $t1,$zero,_fim_
	li $v0, 4
	la $a0, espaco
	syscall
	addi $s1,$zero,0
	lb $s5,fim
	in_:
	la $s0,ultimo_nome($s1)
	lb $s6,($s0)
	beq $s6,$s5,_fim_
	lb $a0,($s0)
	li $v0, 11
	syscall
	addi $s1,$s1,1
	j in_
#____________________________________NEWLINE_______________________________
	_fim_:
	
	li $v0, 4
	la $a0, msgNao 
	syscall
	jr $ra
print_sou_eu:
	
	li $v0, 4
	la $a0,souEU 
	syscall
	jr $ra
exit:


