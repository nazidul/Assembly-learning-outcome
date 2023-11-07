
;reverse triangle 


.model small
.stack 100h
main proc
    mov cx,4
    level1:
    mov bx,cx
    
    level2:
    mov ah,2
    mov dl,"*"
    int 21h
    loop level2
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,bx
    loop level1
    
    exit:
    mov ah,4ch
    main endp

end main

