DOSSEG
.MODEL SMALL           ;MODEL SEGMENT
.STACK 100H            ;STACK SEGMENT
.DATA                  ;VARIABLES ARE DEFINED HERE
game1 db "you win$"
game2 db "you lose$"
.CODE                  ;EXECUTABLE INSTRUCTIONS ARE WRITTEN HEREE
MAIN PROC
mov ax,@data           
mov ds,ax

mov dx,offset game1    
mov ah,9
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h


mov dx,offset game2
mov ah,9
int 21h

mov ah,4ch             ;TO EXIT REGISTER
int 21h

MAIN ENDP              
END MAIN               ;END MAIN PROGRAM
