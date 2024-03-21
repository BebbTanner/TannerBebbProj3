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

main endp
end main