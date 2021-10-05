BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d",0
	output: db "sum = %d",10,0
	output1: db "Not prime",10,0
	output2: db "prime",10,0
	
section .text
	global main
	
	main:
		push ebp
		mov ebp, esp	
		sub esp, 0x10
		
		lea ebx, [ebp-0x8]
		push ebx
		push fmt
		call scanf
		mov eax, dword[ebp-0x8]
		mov ecx, dword[ebp-0x8]
		dec ecx
		cmp eax,2
		je l2
	l1:	
		mov eax, dword[ebp-0x8]	
		xor edx,edx
		div ecx
		cmp edx,0
		je l3
		cmp ecx,2
		je l2	 
		dec ecx 
		
		jmp l1
	l2:
		push output2;
		call printf
		leave
		ret
	l3:     	
		push output1
		call printf
		leave
		ret
		
