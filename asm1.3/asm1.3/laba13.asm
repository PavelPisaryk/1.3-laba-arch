.386
.model flat,stdcall
.stack 4096

.data
n DWORD 1111111111
result DWORD ?

ExitProcess proto, dwExitCode:dword

.code
main proc

mov eax, n
btr eax, 1
btr eax, 10
mov result, eax

invoke ExitProcess,0

main endp
end main