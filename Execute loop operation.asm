.model small 
.stack 100h
.data 

a db "loop operation $" ;string sign $
b db "bangladesh $"

.code 

main proc 
    ;call for print registar 
    
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a 
    int 21h
    
    ;new line 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,100
    int 21h 
    
    ;print and show 
    
    mov cx,20 
    mov ah ,2 
    mov ah,9
    lea dx,b
    
    ;loop 
    
    
    level1:
    int 21h ;call and execute 
    
    loop level1 
    
    
    
    exit:
    mov ah,4ch  ;execute the code 
    int 21h 
    main endp
end main 