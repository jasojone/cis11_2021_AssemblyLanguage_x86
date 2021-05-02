comment!
TITLE Addand Subtract(AddSub.asm)

INCLUDE Irvine32.inc

.data
num1 DWORD 3
num2 DWORD 2

.code
main PROC

mov ecx, num1
mov edx, num2
imul edx, ecx, 4
call dumpregs


call WriteInt




exit
main ENDP
END main
!



; comment!
TITLE Addand Subtract(AddSub.asm)

INCLUDE Irvine32.inc

.data

myString BYTE  "This is a long string, containing",
"any number of characters", 0
myString_len = ($ - myString)

.code

main PROC
mov eax, myString_len
call WriteInt

exit
main ENDP
END main
;




comment!
TITLE Addand Subtract(AddSub.asm)

INCLUDE Irvine32.inc

.data
COUNT = 10;// a constant 10
number DWORD 4


.code

main PROC

mov ebx, 2
mov eax, 3
add eax, ebx;//EAX = 5

call WriteInt
add eax, COUNT;// EAX = 15
call Crlf;//new line (carriage return line feed)
call WriteInt;
add eax, number;// EAX = 19
call Crlf;//new line
call WriteInt

exit
main ENDP
END main
!






comment !
TITLE Addand Subtract(AddSub.asm)

INCLUDE Irvine32.inc

.data
message BYTE "the total = ", 0
num1 sdword 3;// int number 3
num2 sdword 4;// int number 4
num3 sdword 5;// int number 5
total sdword ? ;// not initialized

.code

main PROC

mov	eax, num1;// eax = 3
add	eax, num2;// eax = 7
add	eax, num3;// eax = 12

mov total, eax;// copy 12 to total

mov edx, OFFSET message;// move the mem adress of message to the edx for printing
call WriteString;// displays what is in the edx

call WriteInt;//display the 12
; call WriteDec;//for unsinged ints only
call Crlf;//new line

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