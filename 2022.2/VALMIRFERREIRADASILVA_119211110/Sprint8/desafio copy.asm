desafio 1

ADDi $1, $0, 7
SW   $3, FF($0)
ADDi $2, $0, FF
ADDi $2, $2, 1
SLT $7, $2, $3
LW $7,FF($0)
BEQ $1, $2, 1
J 3
J 2

desafio 2
()

addi $1,$0,1            ;registrador que fetuarei os deslocamentos
addi $3,$0,0            ;registrador com o número de 1s encontrados
LW $2, FF($0)           ;carregando em $2 o valor do endereço FF
addi $5,$0,4            ;resgistrador que contém o limite de deslocamentos de bits
inicio_loop:            
and $4,$2,$1            ;mascara de bits seleciona o bit 1 ou 0 deslocamento $1 (1101)&(0100) -> 1
BNE $4,$0,reloop        ;caso $4 != $0 terá modificações  
addi $3,$3,1            ;incrementa o número de 1s encontrados
STL $6,$2,$1            ;verifico se o número de deslocamentos é inferior ao número passado paralelamente
BNE $6,$0,final         ;caso for não será necessário fazer iterações
addi $1,$1,$1           ;deslocamentos do tipo x+x -> y=2x
j inicio_loop
reloop:                 ;diferentes
addi $1,$1,$1           ;deslocamentos
j inicio_loop
final: 
SW S3,FF($0)            ;carrega na memória
