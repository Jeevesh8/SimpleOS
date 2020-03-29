
print_string :
    
    pusha                               ;SAVES ALL REGISTER VALUES TO BE RESTORED WHEN RETURNING.
    mov ah, 0x0e
    
    jmp print_loop

    print_loop :
        mov al, [bx]
        add bx, 1                       ;ADD 1, NOT 8, NOT 16.
        int 0x10
        cmp al, 0                       ;SETS A FLAG ACCORDING TO RESULT OF COMPARISON.
        jne print_loop                  ;CAUSES LOOP.
        jmp final_block                 ;CAN BE REPLACED BY THE STATEMENTS IN final_block, NO NEED FOR MAKING NEW LABEL.
    
    final_block :
        popa
        ret                             ;RETURNS TO THE POINT WHERE CALL HAPPENED.
    