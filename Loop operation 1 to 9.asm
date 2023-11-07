;print from 1 to 9 loop operation

.model small 
.stack 100h
.data 

a db "loop operation $"

.code 

main proc 
    
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a
    
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov cx,9
    mov ah,2
    
    mov dl,"1"
    
    level1:
    
    int 21h
    inc dl 
    loop level1
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main