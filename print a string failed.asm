

.model small
.stack 100h
.data 

;the string to be printed 

string db 'this is a simple string, '$'  '

.code 

main proc
    
    mov ax,@data 
    mov ds,ax
    
    ;call reverse function 
    
    call reverse 
    
    ;load address of the string
    
    lea dx,string 
    
    ;output the string located in dx
    
    mov ah,09h
    int 21h
        
        
             
              reverse proc 
        
        ;load the offset of the string 
        
        mov si,offset string 
        
        ;offset string count of characters of the string 
        
        mov cx,0h
        
        loop1:
        
        ;compare if this is the last charcter 
        
        mov ax,[si] 
        
        cmp al,'$'
        ;je labbl1
        
        ;else push it in the stack
        push [si]
        
        ;increment the pointer count
        
        inc si
        inc cx
        jmp loop1
        
        labeli:
        
        ;again load the starting address of the string 
        
        mov si,offset string 
        
        loop2:
        
        ;if count not equal to zero
        
        cmp cx,0
        je exit 
        
        ;pop the top of stack
        
        pop dx
        
        ;make dh,0
        xor dh,dh
        
        ;put the character of the reversed string 
        
        mov [si],dx
        
        ;increment si and decrement count 
        
        inc si
        dec cx
        
        jmp loop2
        
        exit:
        
        ;add $ to the end of string 
        
        mov [si],'$'
        
        ret 
        
        reverse endp
              end main 
              
              ;interrupt to exit 
        
        exit:
        
        mov ah,4ch
        int 21h
        
        main endp
    end main
        