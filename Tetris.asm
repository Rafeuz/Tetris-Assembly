.text


#--------------------------- colunas e base ----------------------------------------------#
main: 	lui $8, 0x1001
	addi $9, $0, 0x003f00
	
	addi $10, $0, 64
coluna1:beq $10, $0, coluna2
	
	sw $9,22104($8)
	sw $9,22108($8)
	sw $9,22112($8)
	addi $8,$8,512
	addi $10,$10,-1
	j coluna1
	
coluna2:lui $8, 0x1001
	
	addi $10, $0, 64
fimcol:	beq $10, $0, do_base
	
	sw $9,22244($8)
	sw $9,22248($8)
	sw $9,22252($8)
	addi $8,$8,512
	addi $10,$10,-1
	j fimcol
	
do_base:lui $8, 0x1001
	
	addi $10, $0, 38
base:	beq $10, $0, fimcen
	
	sw $9,54360($8)
	sw $9,54872($8)
	sw $9,55384($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j base

#---------------------------colunas e base----------------------------------------------#


#---------------------------bloco preview----------------------------------------------#	
fimcen:	lui $8, 0x1001
	addi $9, $0, 0x005f00
	
	addi $10, $0, 12
bloco:	beq $10, $0, score
	
	sw $9,56896($8)
	sw $9,57408($8)
	sw $9,57920($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j bloco	
#---------------------------bloco preview----------------------------------------------#

#---------------------------score e traço----------------------------------------------#		
score:	lui $8, 0x1001
	addi $9, $0, 0xffffff

	addi $10, $0, 3
scoreoito:beq $10, $0, coloito
	
	sw $9,57980($8)
	sw $9,60028($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j scoreoito
	
coloito:lui $8, 0x1001
	
	sw $9,58492($8)
	sw $9,59004($8)
	
 	addi $10, $0, 3
oito:	beq $10, $0, oitofim
	
	sw $9,58500($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j oito
	
oitofim:lui $8, 0x1001
	sw $9,59008($8)
 	addi $10, $0, 3
traço:	beq $10, $0, zerotraço
	
	sw $9,59020($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j traço
	sw $9,59008($8)
	
#---------------------------score e traço----------------------------------------------#			

#---------------------------zero e traço----------------------------------------------#				
zerotraço:lui $8, 0x1001
	addi $9, $0, 0xffffff
	sw $9,58016($8)
	sw $9,60064($8)
	sw $9,59052($8)
	sw $9,59056($8)
	sw $9,59060($8)
	
 	addi $10, $0, 5
zero:	beq $10, $0, lastscore
	
	sw $9,58012($8)
	sw $9,58020($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zero

#---------------------------zeros e traço----------------------------------------------#

#---------------------------SCORE----------------------------------------------#
lastscore:lui $8, 0x1001
	
	sw $9,58048($8)
	sw $9,60096($8)
	
 	addi $10, $0, 5
zerof:	beq $10, $0, fimscore
	
	sw $9,58044($8)
	sw $9,58052($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zerof
	
fimscore:lui $8, 0x1001
	
	sw $9,58064($8)
	sw $9,60112($8)
	
 	addi $10, $0, 5
zerof2:	beq $10, $0, fimscore2
	
	sw $9,58060($8)
	sw $9,58068($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zerof2
	
fimscore2:lui $8, 0x1001
	
	sw $9,58080($8)
	sw $9,60128($8)
	
 	addi $10, $0, 5
zerof3:	beq $10, $0, fimscore3
	
	sw $9,58076($8)
	sw $9,58084($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zerof3
	
fimscore3:lui $8, 0x1001
	
	sw $9,58096($8)
	sw $9,60144($8)
	
 	addi $10, $0, 5
zerof4:	beq $10, $0, fimscore4
	
	sw $9,58092($8)
	sw $9,58100($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zerof4
	
fimscore4:lui $8, 0x1001

	sw $9,58620($8)
	sw $9,59652($8)
	
	addi $10,$0,3
cinco:	beq $10,$0,fimcinco

	sw $9,58108($8)
	sw $9,59132($8)
	sw $9,60156($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j cinco	
	
fimcinco:lui $8, 0x1001
	
	sw $9,58128($8)
	sw $9,60176($8)
	
 	addi $10, $0, 5
zerof5:	beq $10, $0, fimscore5
	
	sw $9,58124($8)
	sw $9,58132($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j zerof5
	
#---------------------------FIM DO SCORE----------------------------------------------#	
	
fimscore5:lui $8, 0x1001
	addi $9, $0, 0x9f4f00
	
	addi $10, $0, 12
blocoI:	beq $10, $0, blocoI2
	
	sw $9,52836($8)
	sw $9,53348($8)
	sw $9,53860($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j blocoI
	
blocoI2:lui $8, 0x1001
	
	addi $10, $0, 9
blocoL:	beq $10, $0, bloco2
	
	sw $9,52928($8)
	sw $9,53440($8)
	sw $9,53952($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j blocoL
	
bloco2:lui $8, 0x1001
	
	addi $10, $0, 5
blocoL2:beq $10, $0, bloco3
	
	sw $9,51416($8)
	sw $9,51420($8)
	sw $9,51424($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL2
	
bloco3:	lui $8, 0x1001
	
	addi $10, $0, 5
blocoL3:beq $10, $0, bloco4
	
	sw $9,51416($8)
	sw $9,51420($8)
	sw $9,51424($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL3
	
bloco4:	lui $8, 0x1001
	
	addi $10, $0, 9
blocoL4:beq $10, $0, bloco5
	
	sw $9,51300($8)
	sw $9,51812($8)
	sw $9,52324($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j blocoL4

bloco5:lui $8, 0x1001
	
	addi $10, $0, 3
blocoL5:beq $10, $0, bloco6
	
	sw $9,49764($8)
	sw $9,49768($8)
	sw $9,49772($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL5

bloco6:lui $8, 0x1001
	
	addi $10, $0, 6
blocoL6:beq $10, $0, bloco6_2
	
	sw $9,49868($8)
	sw $9,49872($8)
	sw $9,49876($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL6
	
bloco6_2:lui $8, 0x1001
	
	addi $10, $0, 6
blocoL6_2:beq $10, $0, bloco7
	
	sw $9,48344($8)
	sw $9,48348($8)
	sw $9,48352($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL6_2	
	
bloco7:lui $8, 0x1001
	
	addi $10, $0, 3
blocoL7:beq $10, $0, bloco8
	
	sw $9,51404($8)
	sw $9,51408($8)
	sw $9,51412($8)
	
	addi $8,$8,512
	addi $10,$10,-1
	j blocoL7
	
bloco8:lui $8, 0x1001
	
	addi $10, $0, 6
blocoL8:beq $10, $0, mov
	
	sw $9,46692($8)
	sw $9,47204($8)
	sw $9,47716($8)
	sw $9,48228($8)
	sw $9,48740($8)
	sw $9,49252($8)
	
	addi $8,$8,4
	addi $10,$10,-1
	j blocoL8
	
mov:	lui $8, 0x1001
	addi $9, $0, 0x9f4f00
	addi $10, $0, 0x00
	addi $11, $0, 61
	j movinv

blocoreto:

sw $9, 23208($8)

jr $31	
	
movinv:	beq $11, $0, fim       
	sw $10, 21664($8)
	
	jal blocoreto
	
	addi $8, $8, 512
	addi $11, $11, -1
	j movinv
fim:   nop

