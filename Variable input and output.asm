;input and ouput of variable

.model small
.stack 100h 
.code 
main proc
       ;we can not take default value so we changed it
    mov ah,1
    int 21h
    mov bl,al
    
    
    ;Input variable 
  mov ah,1
   int 21h
    mov bh,al
       ;tab program
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main