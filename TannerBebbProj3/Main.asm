;Tanner Bebb ASM project 3
;First MASM program
;Initial setup test

;1.)X = (A + B) - (C + D)

.386
.model flat,stdcall
.stack 4096
include irvine32.inc
ExitProcess proto, dwExitCode:dword

.data

.code

main proc 
	mov eax, 5											;eax = 5
	mov ebx, 6											;ebx = 6
	call WriteInt										;Writes the value stored in the eax register to the screen.

	INVOKE ExitProcess, 0

main ENDP
END main