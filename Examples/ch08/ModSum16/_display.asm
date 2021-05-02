TITLE DisplaySum Procedure		(_display.asm)

INCLUDE Sum.inc

.code
;-----------------------------------------------------
DisplaySum PROC,
	ptrPrompt:PTR BYTE,	; prompt string
	theSum:DWORD		; the array sum
;
; Displays the sum on the console.
; Returns:  nothing
;-----------------------------------------------------
	push eax
	push edx

	mov  dx,ptrPrompt	; changed 3/29/04
	call WriteString
	mov  eax,theSum
	call WriteInt	; display EAX
	call Crlf

	pop  edx
	pop  eax
	ret
DisplaySum ENDP

END