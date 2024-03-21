;Tanner Bebb ASM project 3
;First MASM program
;Initial setup test

;1.) X = (A + B) - (C + D)
;2.) Write code that defines symbolic constants for all seven days of the week. Create an array variable that uses the symbols as initializers
;3.) The program must contain a definition of each data type listed in Table 3.2 in Section 3.4 of the textbook. Initialize each variable to a value that is consistent with its data type

.386
.model flat,stdcall
.stack 4096
include irvine32.inc
ExitProcess proto, dwExitCode:dword

.data

;Start 2.)
	Sun = 0
	Mon = 1
	Tue = 2
	Wed = 3
	Thu = 4
	Fri = 5
	Sat = 6

	warray BYTE Sun, Mon, Tue, Wed, Thu, Fri, Sat
;End 2.)

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
;End 1.)

	INVOKE ExitProcess, 0

main ENDP
END main