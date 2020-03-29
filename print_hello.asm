mov ah, 0x0e                        ; METHOD TO BE CALLED WHEN interrupt occurs

mov al, 'H'
int 0x10                            ; PRINTS CONTENT OF al, IF ah=0x0e
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $

times 510-($-$$) db 0

dw 0xaa55