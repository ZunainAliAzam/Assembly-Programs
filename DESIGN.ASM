DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'EVEN$'
MSG2 DB 'ODD$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV AH,1
INT 21H

MOV BL,2
DIV BL
CMP AH,0
JE ISEVEN

MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H

MOV DX, OFFSET MSG2
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H

ISEVEN:
MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H

MOV DX, OFFSET MSG1
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
