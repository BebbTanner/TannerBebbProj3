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

;Start 1.)
	mov eax, 5											;eax = 5
	mov ebx, 5											;ebx = 5
	add eax, ebx										;(A + B)

	mov ecx, 3											;ecx = 3
	mov edx, 2											;edx = 2
	add ecx, edx										;(C + D)

	sub eax, ecx										;(A + B) - (C + D)
	call WriteInt										;Used this to be sure that I was getting the right result.
;End 1.)

	

	INVOKE ExitProcess, 0

main ENDP
END main