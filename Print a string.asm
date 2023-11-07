

;Print a string 

 .model small 
 .stack 100h 
 .data
 
 msg db 'I love my creator $'
 
 .code 
 
 main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg 
    int 21h  
    
    optional:
    
    ;for beep sound
    
    mov ah,2
    mov dl,07
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
 end main 
 