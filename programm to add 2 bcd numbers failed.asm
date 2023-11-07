                         
    
    ;program to add 2 bcd number failed 
    
    .model small
    .stack 100h
    .code 
    
    main proc 
        
        mov al,09h
        mov bl,06h
        
        add al,bl
        
        daa
        ;it converts the result of addition of 2 packet bcd numbers into a packet bcd numbers 
        ;if lower nibble of a>9 or af=1 then al=al+06 if higher nibble of al>0 oe of=1 then al=al+06
        
        ;then al=al+06 if both conditions are satisfied then al=al+66
        
        mov dl,al
        mov ah,2
        int 21h
        
        exit:
        
        mov ah,4ch
        int 21h
        
        end 
        
                                 