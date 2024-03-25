;Tanner Bebb ASM project 3
;First MASM program
;Initial setup test

.386
.model flat,stdcall
.stack 4096
include irvine32.inc
ExitProcess proto, dwExitCode:dword

.data

;4.) Write code defines symbolic names for several string literals. Use each symbolic name in a variable definition.
	myMessage EQU 'Hello, World!'						;
	myVar db myMessage									;
;End 4.)

;2.) Write code that defines symbolic constants for all seven days of the week. Create an array variable that uses the symbols as initializers.
	Sun = 0												;
	Mon = 1												;
	Tue = 2												;
	Wed = 3												;
	Thu = 4												;
	Fri = 5												;
	Sat = 6												;

	warray BYTE Sun, Mon, Tue, Wed, Thu, Fri, Sat		;
;End 2.)

;3.) The program must contain a definition of each data type listed in Table 3.2 in Section 3.4 of the textbook.
;Initialize each variable to a value that is consistent with its data type.

	var1 BYTE 9h										;
	var2 SBYTE -20										;
	var3 WORD 800										;
	var4 SWORD -1600									;
	var5 DWORD 12345678h								;
	var6 SDWORD -12345678h								;
	var7 FWORD 0										;
	var8 QWORD 1234567887654321h						;
	var9 TBYTE 1000000000123456789h						;
	var10 REAL4 -3.14									;
	var11 REAL8 -3.1E+100								;
	var12 REAL10 -3.1E+100								;

;End 3.)

.code

main proc

;1.) Using the AddTwo program from Section 3.2 as a reference, write code to calculate the following expression, using registers: A = (A+B)-(C+D). 
;Assign integer values to the EAX, EBX, ECX, and EDX registers
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