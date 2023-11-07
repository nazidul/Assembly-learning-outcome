include 'emu8086.inc'
org 100h
.model small]
.data
arr db 8,5,3,6,2
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,5
    mov bl,[si]
    
    loopa:
    cmp [si],bl
    jge small   
    ;jle small
    
    compare:   
    inc si
    loop loopa  
    print 'biggest value in array $'
    ;print 'small value in array $'
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    
    small:
    mov bl,[si] 
    jmp compare
    main endp
ret
    
    



