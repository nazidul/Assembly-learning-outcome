    ;program to find largest of 2 number failed 
    
    .model small
    .stack 100h
    .data
    
    largest db ?
    num1 db 06h
    num2 db 02h
    
    .code 
    
    main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,num1
    
    ;load data to al
    cmp al,num2
    ;if num1>num2 then cf=0,zf=0,sf=0
    ;if num1<num2 then cf=1,zf=0,sf=1
    ;if num1=num2 then cf=0,zf=1,sf=0
    
    jnc next: 
    mov bl,num2
    mov 1arge,bl
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
    end main