   
   ;Sort a number in ascending order failed 
   
   .model small
   .stack 100h
   .data 
   
   arr db 2h,5h,0h,7h,3h
   
   .code 
   
   main proc 
    
    mov ax,@data 
    
    ;initializing data segment 
    
    mov ds,ax
    
    mov bx,5
    
    ;set pass counter 
    
    nextpass:
    
    mov cx,4
    
    mov si,offset arr
    
    ;intializing array base address
    
    next:
    
    mov al,[si]
    ;storing number 
    
    cmp al,[si+1]
    
    ;compare 1st and 2nd number 
    
    jump:
    
    xchg al,[si+1]
    xchg al,[si]
    
    up:
    
    inc si
    
    ;increment array index
    
    loop next 
    
    dec bx
    
    ;decrement pass counter 
    
    jnz next pass
    
    ;jump if not zero
    
    exit:
    
    mov ah,4ch
    ;service routine for exit
    
    int 21h
    
    main endp
   end main
    