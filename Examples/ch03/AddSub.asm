COMMENT!
Student:  Jason Jones
Class : cis11
extra credit2

Create a new programand include the following :

1.   Declare two 4 byte signed integer variables named : num1 and num2
2.   Prompt the user to enter two numbers.   (See output)

3.   Read and assign the inputs to num1 and num2.

4.   Use the ADD instruction to add num1 and num2.

5.   Display the result.   (See output)

6.   Use the SUB instruction to subtract num1 and num2.

7.   Display the result.   (See output)

8.   Use the IMUL instruction to multiply num1 and num2.

9.   Display the result.   (See output)

!


INCLUDE Irvine32.inc

.data

num1 SDWORD ?
num2 SDWORD ?
total SDWORD ?
prompt BYTE "Enter a number ", 0
showEqual BYTE " = ", 0
showPlus BYTE "num1 + num2", 0
showMinus BYTE "num1 - num2", 0
showMul BYTE "num1 * num2", 0
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

mov edx, OFFSET showPlus
call WriteString

mov eax, num2

mov edx, OFFSET showEqual
call WriteString

mov eax, total
call WriteInt
call Crlf

mov eax, num1
mov eax, num2

sub eax, num2

mov total, eax
call WriteInt


mov edx, OFFSET showMinus
call WriteString

mov eax, num2

mov edx, OFFSET showEqual
call WriteString

mov eax, total
call WriteInt
call Crlf



exit
main ENDP
END main





















COMMENT!
Student:  Jason Jones
Class : cis11
extra credit 

Declare a 4 byte signed integer variable named : num1

2.   Initialize num1 with a value of 4.

3.   Display the value in num1.   (See output)

4.   Use the INC instruction to add one to the value in num1.

5.   Display the value in num1 after it has been incremented.   (See output)

6.   Use the DEC instruction to decrement the value in num1.

7.   Display the value in num1 after it has been decremented.   (See output)

8.   Use the NEG instruction to negate the value in num1.

9.   Display the value in num1 after it has been negated.   (See output




TITLE Addand Subtract(AddSub.asm)

; This program uses the inc dec and neg Mnemonic operands

INCLUDE Irvine32.inc

.data
num1 SBYTE 4

.code

main PROC

movzx	eax, num1

call WriteInt
call Crlf
inc eax
call WriteInt
call Crlf
dec eax
call WriteInt
call Crlf
neg eax 
call WriteInt
call Crlf


exit
main ENDP
END main
!


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