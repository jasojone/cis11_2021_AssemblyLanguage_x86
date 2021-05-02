
INCLUDE Irvine32.inc

.data
message BYTE "Here is the number: ", 0
number SBYTE 5

.code

main PROC

movzx eax, number;// eax = 5
sub eax, 10

mov edx, OFFSET message;// move the mem adress of message to the edx for printing

call WriteString;// displays what is in the edx

call WriteInt;//display the -5

call Crlf;//new line

exit
main ENDP
END main

