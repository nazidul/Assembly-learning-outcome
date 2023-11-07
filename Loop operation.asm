
;loop opration 

.model small 
.stack 100h
.data

a db "loop operation $"
b db "I love my creator $"

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
    
    mov cx,20
    mov ah,2
    mov ah,9
    lea dx,b
    
    level1:
    
    int 21h
    loop level1
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main