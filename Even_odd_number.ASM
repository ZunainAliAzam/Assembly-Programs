DOSSEG              ;DOS SEGMENT
.MODEL SMALL        ;MODEL DIRECTIVE
.STACK 100H         ;STACK SEGMENT DIRECTIVE
.DATA               ;VARIABLES ARE DECLARED HERE
VAR1 DB 10,13, 'EVEN NUMBER$'     ;INITIALIZING VARIABLE
VAR2 DB 10,13, 'ODD NUMBER$'
.CODE               ;EXECUTABLE INSTRUCTION AARE WRITTEN HERE
MAIN PROC
MOV AX,@DATA         ;MOVING DATA MEMORY LOCATION INTO DATA REGISTER
MOV DS,AX           ;MOVING ADDRESS TO DATA SEGMENT
MOV AH,1            ;TAKING INPUT
INT 21H
MOV BL,2            ;2 WILL BE MOVED TO BL
DIV BL              ;DIVIDE INPUT BY 2
CMP AH,0            ;COMPARING INPUT TO ZERO
JE L1               ;JUMP TO L1
MOV DX,OFFSET VAR2
MOV AH,9            ;SERVICE ROUTINE 9 IS USED TP PRINT STRING
INT 21H
JMP exit            ;JUMP TO EXIT OTHERWISE NEXT STATMENT RUN WITH IT
L1:
MOV DX,OFFSET VAR1
MOV AH,9            ;SERVICE ROUTINE 9 IS USED TO PRINT STRING
INT 21H
exit:
MOV AH,4CH          ;TO EXIT THE REGISTER
INT 21H
MAIN ENDP
END MAIN            ;TO END THE PROGRAM
