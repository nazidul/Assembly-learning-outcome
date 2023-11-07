  ;find the largest number from the 2 number  failed 
  
  .model small
  .stack 100h
  .data 
  
  a db 'input 2 number $'
  b db 10,13, 'largest number $'
  
  .code 
  
  main proc 
    
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a 
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    int 21h
    
    biggest:
    
    cmp bl,bh
    jg l1
    jmp l2
    
    l2:
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit
    
    l1:
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit 
    
    exit:
    
    mov ah,4ch
    int 21h
    
    main endp
  end main 
  