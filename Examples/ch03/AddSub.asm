
COMMENT!
Student:  Jason Jones
Class : cis11
hw2b v1, v2
!

TITLE Addand Subtract(AddSub.asm)

INCLUDE Irvine32.inc

.data
mathProb BYTE "-5 + 3 = ", 0
s1 BYTE 'Say "Goodnight" Gracie'
s2 BYTE "Say 'Goodnight' Gracie"


num1 SDWORD - 5
num2 SDWORD 3
num3 SDWORD 0


.code
main PROC

mov edx, OFFSET s1
call WriteString;// displays what is in the edx
mov edx, OFFSET s2
call WriteString;// displays what is in the edx
call WriteString
call crlf


exit
main ENDP
END main



comment!
INCLUDE Irvine32.inc

.data

num1 SDWORD ?
num2 SDWORD ?
total SDWORD ?
prompt BYTE "Enter a number ", 0
showEqual BYTE " = ", 0
showPlus BYTE " + ", 0
.code

main PROC
mov edx, OFFSET prompt
call WriteString
call ReadInt
mov num1, eax

call WriteString
call ReadInt
mov num2, eax

add eax, num1

mov total, eax

mov eax, num1
call WriteInt

mov edx, OFFSET showPlus
call WriteString

mov eax, num2
call WriteInt

mov edx, OFFSET showEqual
call WriteString

mov eax, total
call WriteInt
call Crlf



exit
main ENDP
END main

!















comment!
TITLE Addand Subtract(AddSub.asm)

; This program addsand subtracts 32 - bit integers.

INCLUDE Irvine32.inc

.code
main PROC

mov	eax, 10000h; EAX = 10000h
add	eax, 40000h; EAX = 50000h
sub	eax, 20000h; EAX = 30000h
call	DumpRegs

exit
main ENDP
END main
!