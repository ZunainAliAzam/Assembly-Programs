DOSSEG
.MODEL SMALL    ;MODEL DIRECTIVE
.STACK 100H     ;STACK SEGMENT DIRECTIVE
.DATA           ;INSIDE THIS VARIABLES ARE DECLARED
.CODE          ;EXECUTABLE INSTRUCTIONS ARE WRITTEN HERE
MAIN PROC
MOV BL,3
MOV CL,4
ADD BL,CL
MOV DL,BL
ADD DL,48
MOV AH,2
INT 21H

MOV AH,4CH      ;TO EXIT THE REGISTER
INT 21H
MAIN ENDP
END MAIN        ;TO END MAIN PROGRAM
