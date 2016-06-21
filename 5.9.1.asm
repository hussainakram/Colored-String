; Testing Colors	(colors.asm)

; Testing SetTextColor and GetTextColor.

INCLUDE Irvine32.inc

.data
str1 BYTE "Hi! I'm a colorful string",0
.code
main PROC
mov	eax, 1
mov ecx,4
SetColor:

	call	SetTextColor
	
	mov	edx,OFFSET str1
	call	WriteString
	call Crlf
	inc eax
	loop SetColor
	call waitmsg

	exit
main ENDP
END main
