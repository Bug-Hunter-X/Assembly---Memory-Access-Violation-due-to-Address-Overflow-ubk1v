mov ecx, [input_ecx]

;Check if ecx is within a safe range
mov edx, 100000 ; set range limit. Adjust as needed. 
cmp ecx, edx
jge handle_overflow

mov eax, [ebx + ecx*4]
; Continue with the program.
jmp end

handle_overflow:
;Handle the overflow condition
;Example : Set eax to a default value
mov eax, 0 ; Or some other error handling

end: