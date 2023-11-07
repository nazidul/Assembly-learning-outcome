  ; check if the number is positive or negative failed 
  
  .model small
  .stack 100h
  .data 
  
  num db 12h
  
  res db ?
  
  .code 
  
  main proc 
  
  mov ax,@data 
  
  ;initializing data segment 
  
  mov ds,ax
  
  mov al,num
  
  ;load number 
  
  rol al,01
  
  ;rotate by 01
  
  jc dn
  
  mov res,1
  
  ;positive
  
  jmp exit 
  
  dn:
  
  mov res,2 
  
  ;negative 
  
  exit:
  
  mov dl,res
  mov ah,4ch
  
  ;service routine for exit 
  
  int 21h
  
  main endp 
  end main
  