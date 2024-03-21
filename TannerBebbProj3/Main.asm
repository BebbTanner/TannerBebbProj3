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
	mov ebx, 5											;ebx = 5
	add eax, ebx										;(A + B)

	mov ecx, 3											;ecx = 3
	mov edx, 2											;edx = 2
	add ecx, edx										;(C + D)

	INVOKE ExitProcess, 0

main ENDP
END main