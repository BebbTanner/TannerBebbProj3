;Tanner Bebb ASM project 3
;First MASM program
;Initial setup test

.386
.model flat,stdcall
.stack 4096
include irvine32.inc
ExitProcess proto, dwExitCode:dword

.data

.code

main proc 
	mov eax, 5											;eax = 5
	add eax, 6											;eax = 11
	call WriteInt										;Writes the value stored in the eax register to the screen.

	INVOKE ExitProcess, 0

main ENDP
END main