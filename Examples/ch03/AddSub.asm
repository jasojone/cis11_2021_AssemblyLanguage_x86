; ============================
; Attached:  	 HW 4bcd
; ============================
; Program: 	  HW_4b
; Class: cis11
; Programmer: Jason Jones

; ============================


TITLE Addand Subtract(AddSub.asm)

; This program addsand subtracts 32 - bit integers.

INCLUDE Irvine32.inc

.data
msg1 BYTE "Enter your Password: ", 0
msg2 BYTE "your logged in ", 0
msg3 BYTE "Invalid Password", 0

oPass DWORD 12345
iPass DWORD ?

.code

main PROC

mov edx, OFFSET msg1
call WriteString

call ReadInt
mov iPass, eax
mov ebx, oPass
.IF ebx == eax
mov edx, OFFSET msg2
call WriteString

.ELSE
mov edx, OFFSET msg3
call WriteString

.ENDIF
