  
 ;string print failed 
  
  
 .model small 
  .stack 100h 
  .data 
  
  ;the string to be printed 
  
  string db 'this is a sample string $'
  
  .code 
  
  main proc far
    
    mov ax,@data 
    mov ds,ax
    
    ;call revenue function 
    
    call reverse 
    
    ;load address of the string 
    
    lea dx,string 
    
    ;output of the string located in dx
    
    mov ah,09h
    int 21h  
    
    reverse proc
        ;load the offset of the string 
        
        mov sl,0h
        
        
        ;offset string count of characters of the string 
        
        mov cx,0h  
        
        loop1:
        
        ;compare if this is the last character
          
          mov ax,[si]
          cmp al,'$'
          
          je labbl1
          
          ;else push it in the stack
    
    ;interrupt to exit 
    
    mov ah,4ch
    int 21h
    
    main endp
  end main
  
    
     
      
      
  