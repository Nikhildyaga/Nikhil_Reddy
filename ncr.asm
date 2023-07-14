include 'emu8086.inc'
print 'enter n'
printn
call scan_num
mov n,cx 
print 'print r'
printn
call scan_num
mov r,cx  
mov bx,n 
mov ax,1
n!:
    mul bx 
    dec bx
    cmp bx,00
    je retn
    jne n!
retn:        
     mov sum1,ax;
     call print_num 
     printn
     
mov bx,r 
mov ax,1  
      
r!:
    mul bx 
    dec bx
    cmp bx,00
    je retn1
    jne r!
retn1:        
     mov sum2,ax;
     call print_num
     printn

mov cx,r
sub n,cx
mov bx,n
mov ax,1
n_r!:
    mul bx 
    dec bx
    cmp bx,00
    je retn3
    jne n_r!
retn3:        
     mov sum3,ax;
     call print_num
     printn   
mov ax,sum2
mov cx,sum3 
mul cx
mov k,ax
mov ax,sum1
div k
call print_num

define_scan_num
define_print_num
define_print_num_uns
n dw 00
r dw 00
sum1 dw 01 
sum2 dw 01        
sum3 dw 01 
k dw 00
    