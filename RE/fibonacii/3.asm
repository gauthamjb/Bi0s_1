BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d",0
	output: db "fibonacii = %d",10,0
	num1: times 4 db 0
	
section .text
	global main
	
	main:
		push ebp
		mov ebp, esp	
		sub esp, 0x10
		
		lea eax, [ebp-0x4]
		push eax
		push fmt
		call scanf
		
		mov eax,dword[ebp-0x4]
		mov ebx,0
		mov ecx,1
		mov edx,0
		
		cmp eax,1
		je exit
		mov edx,1

	Startloop:
		cmp eax,2
		je exit
		mov edx,0
		add edx,ecx
		add edx,ebx
		mov ebx,ecx
		mov ecx,edx
		dec eax
		jmp Startloop
	exit:
		mov dword[ebp-0x8], edx
		push dword[ebp-0x8]
		push output
		call printf
		leave
		ret

