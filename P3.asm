.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	l DWORD ?
	w DWORD ?
	a BYTE "enter the length and width",0
	b BYTE " the premiter is ",0
	d BYTE 40 DUP(?)
	f BYTE 11 DUP(?),0
.CODE
	MainProc PROC
		input a,d,40
		atod d
		mov l,eax 
		input a,d,40
		atod d
		mov w,eax 
		imul eax,2
		mov ebx ,l
		imul ebx,2
		add eax,ebx
		dtoa f,eax
		output b,f
		mov eax,0
	MainProc ENDP
END