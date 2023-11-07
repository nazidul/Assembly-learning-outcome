.model small
.stack 100h
.data 

msg db 3 ;default byte or data byte 
msg1 db ?

.code 

main proc
    mov ax ,@data 
    mov dx, ax 
    
    mov ah,2 
    add msg , 48
    mov dl,msg 
    int 21h 
    
    mov ah,1
    int 21h
    mov msg1,al
    
    ;new line 
    
    mov ah,2
    mov dl ,10
    int 21h  
    
    mov dl,13 
    int 21h
    
    mov ah,2 
    mov dl,msg1 
    int 21h
    
     
    