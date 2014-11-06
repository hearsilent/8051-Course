|Hex Code|Bytes|Mnemonic|Operands|Function|
| ------------- |:-------------:|:-------------:|:-------------:|:-------------:|
|00|1|NOP| |None, waste time|
|01|2|AJMP|addr11|Absolute Jump Within 2K Block|
|02|3|LJMP|addr16|Long Jump|
|03|1|RR|A|Rotate Accumulator Right|
|04|1|INC|A|Increment Register|
|05|2|INC|direct|Increment Register|
|06|1|INC|@R0|Increment Register|
|07|1|INC|@R1|Increment Register|
|08|1|INC|R0|Increment Register|
|09|1|INC|R1|Increment Register|
|0A|1|INC|R2|Increment Register|
|0B|1|INC|R3|Increment Register|
|0C|1|INC|R4|Increment Register|
|0D|1|INC|R5|Increment Register|
|0E|1|INC|R6|Increment Register|
|0F|1|INC|R7|Increment Register|
|10|3|JBC|bit, offset|Jump if Bit Set and Clear Bit|
|11|2|ACALL|addr11|Absolute Call|
|12|3|LCALL|addr16|Long Call|
|13|1|RRC|A|Rotate Accumulator Right Through Carry|
|14|1|DEC|A|Decrement Register|
|15|2|DEC|direct|Decrement Register|
|16|1|DEC|@R0|Decrement Register|
|17|1|DEC|@R1|Decrement Register|
|18|1|DEC|R0|Decrement Register|
|19|1|DEC|R1|Decrement Register|
|1A|1|DEC|R2|Decrement Register|
|1B|1|DEC|R3|Decrement Register|
|1C|1|DEC|R4|Decrement Register|
|1D|1|DEC|R5|Decrement Register|
|1E|1|DEC|R6|Decrement Register|
|1F|1|DEC|R7|Decrement Register|
|20|3|JB|bit, offset|Jump if Bit Set|
|21|2|AJMP|addr11|Absolute Jump Within 2K Block|
|22|1|RET|Return From Subroutine|
|23|1|RL|A|Rotate Accumulator Left|
|24|2|ADD|A, #immed|Add Accumulator|
|25|2|ADD|A, direct|Add Accumulator|
|26|1|ADD|A, @R0|Add Accumulator|
|27|1|ADD|A, @R1|Add Accumulator|
|28|1|ADD|A, R0|Add Accumulator|
|29|1|ADD|A, R1|Add Accumulator|
|2A|1|ADD|A, R2|Add Accumulator|
|2B|1|ADD|A, R3|Add Accumulator|
|2C|1|ADD|A, R4|Add Accumulator|
|2D|1|ADD|A, R5|Add Accumulator|
|2E|1|ADD|A, R6|Add Accumulator|
|2F|1|ADD|A, R7|Add Accumulator|
|30|3|JNB|bit, offset|Jump if Bit Not Set|
|31|2|ACALL|addr11|Absolute Call|
|32|1|RETI| |Return From Interrupt|
|33|1|RLC|A|Rotate Accumulator Left Through Carry|
|34|2|ADDC|A, #immed|Add Accumulator (With Carry)|
|35|2|ADDC|A, direct|Add Accumulator (With Carry)|
|36|1|ADDC|A, @R0|Add Accumulator (With Carry)|
|37|1|ADDC|A, @R1|Add Accumulator (With Carry)|
|38|1|ADDC|A, R0|Add Accumulator (With Carry)|
|39|1|ADDC|A, R1|Add Accumulator (With Carry)|
|3A|1|ADDC|A, R2|Add Accumulator (With Carry)|
|3B|1|ADDC|A, R3|Add Accumulator (With Carry)|
|3C|1|ADDC|A, R4|Add Accumulator (With Carry)|
|3D|1|ADDC|A, R5|Add Accumulator (With Carry)|
|3E|1|ADDC|A, R6|Add Accumulator (With Carry)|
|3F|1|ADDC|A, R7|Add Accumulator (With Carry)|
|40|2|JC|offset|Jump if Carry Set|
|41|2|AJMP|addr11|Absolute Jump Within 2K Block|
|42|2|ORL|direct, A|Bitwise OR|
|43|3|ORL|direct, #immed|Bitwise OR|
|44|2|ORL|A, #immed|Bitwise OR|
|45|2|ORL|A, direct|Bitwise OR|
|46|1|ORL|A, @R0|Bitwise OR|
|47|1|ORL|A, @R1|Bitwise OR|
|48|1|ORL|A, R0|Bitwise OR|
|49|1|ORL|A, R1|Bitwise OR|
|4A|1|ORL|A, R2|Bitwise OR|
|4B|1|ORL|A, R3|Bitwise OR|
|4C|1|ORL|A, R4|Bitwise OR|
|4D|1|ORL|A, R5|Bitwise OR|
|4E|1|ORL|A, R6|Bitwise OR|
|4F|1|ORL|A, R7|Bitwise OR|
|50|2|JNC|offset|Jump if Carry Not Set|
|51|2|ACALL|addr11|Absolute Call|
|52|2|ANL|direct, A|Bitwise AND|
|53|3|ANL|direct, #immed|Bitwise AND|
|54|2|ANL|A, #immed|Bitwise AND|
|55|2|ANL|A, direct|Bitwise AND|
|56|1|ANL|A, @R0|Bitwise AND|
|57|1|ANL|A, @R1|Bitwise AND|
|58|1|ANL|A, R0|Bitwise AND|
|59|1|ANL|A, R1|Bitwise AND|
|5A|1|ANL|A, R2|Bitwise AND|
|5B|1|ANL|A, R3|Bitwise AND|
|5C|1|ANL|A, R4|Bitwise AND|
|5D|1|ANL|A, R5|Bitwise AND|
|5E|1|ANL|A, R6|Bitwise AND|
|5F|1|ANL|A, R7|Bitwise AND|
|60|2|JZ|offset|Jump if Accumulator Zero|
|61|2|AJMP|addr11|Absolute Jump Within 2K Block|
|62|2|XRL|direct, A|Bitwise Exclusive OR|
|63|3|XRL|direct, #immed|Bitwise Exclusive OR|
|64|2|XRL|A, #immed|Bitwise Exclusive OR|
|65|2|XRL|A, direct|Bitwise Exclusive OR|
|66|1|XRL|A, @R0|Bitwise Exclusive OR|
|67|1|XRL|A, @R1|Bitwise Exclusive OR|
|68|1|XRL|A, R0|Bitwise Exclusive OR|
|69|1|XRL|A, R1|Bitwise Exclusive OR|
|6A|1|XRL|A, R2|Bitwise Exclusive OR|
|6B|1|XRL|A, R3|Bitwise Exclusive OR|
|6C|1|XRL|A, R4|Bitwise Exclusive OR|
|6D|1|XRL|A, R5|Bitwise Exclusive OR|
|6E|1|XRL|A, R6|Bitwise Exclusive OR|
|6F|1|XRL|A, R7|Bitwise Exclusive OR|
|70|2|JNZ|offset|Jump if Accumulator Not Zero|
|71|2|ACALL|addr11|Absolute Call|
|72|2|ORL|C, bit|Bitwise OR|
|73|1|JMP|@A+DPTR|Jump to Address|
|74|2|MOV|A, #immed|Move Memory|
|75|3|MOV|direct, #immed|Move Memory|
|76|2|MOV|@R0, #immed|Move Memory|
|77|2|MOV|@R1, #immed|Move Memory|
|78|2|MOV|R0, #immed|Move Memory|
|79|2|MOV|R1, #immed|Move Memory|
|7A|2|MOV|R2, #immed|Move Memory|
|7B|2|MOV|R3, #immed|Move Memory|
|7C|2|MOV|R4, #immed|Move Memory|
|7D|2|MOV|R5, #immed|Move Memory|
|7E|2|MOV|R6, #immed|Move Memory|
|7F|2|MOV|R7, #immed|Move Memory|
|80|2|SJMP|offset|Short Jump|
|81|2|AJMP|addr11|Absolute Jump Within 2K Block||
|82|2|ANL|C, bit|Bitwise AND|
|83|1|MOVC|A, @A+PC|Move Code Memory|
|84|1|DIV|AB|Divide Accumulator by B|
|85|3|MOV|direct, direct|Move Memory|
|86|2|MOV|direct, @R0|Move Memory|
|87|2|MOV|direct, @R1|Move Memory|
|88|2|MOV|direct, R0|Move Memory|
|89|2|MOV|direct, R1|Move Memory|
|8A|2|MOV|direct, R2|Move Memory|
|8B|2|MOV|direct, R3|Move Memory|
|8C|2|MOV|direct, R4|Move Memory|
|8D|2|MOV|direct, R5|Move Memory|
|8E|2|MOV|direct, R6|Move Memory|
|8F|2|MOV|direct, R7|Move Memory|
|90|3|MOV|DPTR, #immed|Move Memory|
|91|2|ACALL|addr11|Absolute Call|
|92|2|MOV|bit, C|Move Memory|
|93|1|MOVC|A, @A+DPTR|Move Code Memory|
|94|2|SUBB|A, #immed|Subtract From Accumulator With Borrow|
|95|2|SUBB|A, direct|Subtract From Accumulator With Borrow|
|96|1|SUBB|A, @R0|Subtract From Accumulator With Borrow|
|97|1|SUBB|A, @R1|Subtract From Accumulator With Borrow|
|98|1|SUBB|A, R0|Subtract From Accumulator With Borrow|
|99|1|SUBB|A, R1|Subtract From Accumulator With Borrow|
|9A|1|SUBB|A, R2|Subtract From Accumulator With Borrow|
|9B|1|SUBB|A, R3|Subtract From Accumulator With Borrow|
|9C|1|SUBB|A, R4|Subtract From Accumulator With Borrow|
|9D|1|SUBB|A, R5|Subtract From Accumulator With Borrow|
|9E|1|SUBB|A, R6|Subtract From Accumulator With Borrow|
|9F|1|SUBB|A, R7|Subtract From Accumulator With Borrow|
|A0|2|ORL|C, /bit|Bitwise OR|
|A1|2|AJMP|addr11|Absolute Jump Within 2K Block|
|A2|2|MOV|C, bit|Move Memory|
|A3|1|INC|DPTR|Increment Register|
|A4|1|MUL|AB|Multiply Accumulator by B|
|A5| |reserved| |Undefined|
|A6|2|MOV|@R0, direct|Move Memory|
|A7|2|MOV|@R1, direct|Move Memory|
|A8|2|MOV|R0, direct|Move Memory|
|A9|2|MOV|R1, direct|Move Memory|
|AA|2|MOV|R2, direct|Move Memory|
|AB|2|MOV|R3, direct|Move Memory|
|AC|2|MOV|R4, direct|Move Memory|
|AD|2|MOV|R5, direct|Move Memory|
|AE|2|MOV|R6, direct|Move Memory|
|AF|2|MOV|R7, direct|Move Memory|
|B0|2|ANL|C, /bit|Bitwise AND|
|B1|2|ACALL|addr11|Absolute Call|
|B2|2|CPL|bit|Complement Register|
|B3|1|CPL|C|Complement Register|
|B4|3|CJNE|A, #immed, offset|Compare and Jump if Not Equal|
|B5|3|CJNE|A, direct, offset|Compare and Jump if Not Equal|
|B6|3|CJNE|@R0, #immed, offset|Compare and Jump if Not Equal|
|B7|3|CJNE|@R1, #immed, offset|Compare and Jump if Not Equal|
|B8|3|CJNE|R0, #immed, offset|Compare and Jump if Not Equal|
|B9|3|CJNE|R1, #immed, offset|Compare and Jump if Not Equal|
|BA|3|CJNE|R2, #immed, offset|Compare and Jump if Not Equal|
|BB|3|CJNE|R3, #immed, offset|Compare and Jump if Not Equal|
|BC|3|CJNE|R4, #immed, offset|Compare and Jump if Not Equal|
|BD|3|CJNE|R5, #immed, offset|Compare and Jump if Not Equal|
|BE|3|CJNE|R6, #immed, offset|Compare and Jump if Not Equal|
|BF|3|CJNE|R7, #immed, offset|Compare and Jump if Not Equal|
|C0|2|PUSH|direct|Push Value Onto Stack|
|C1|2|AJMP|addr11|Absolute Jump Within 2K Block|
|C2|2|CLR|bit|Clear Register|
|C3|1|CLR|C|Clear Register|
|C4|1|SWAP|A|Swap Accumulator Nibbles|
|C5|2|XCH|A, direct|Exchange Bytes|
|C6|1|XCH|A, @R0|Exchange Bytes|
|C7|1|XCH|A, @R1|Exchange Bytes|
|C8|1|XCH|A, R0|Exchange Bytes|
|C9|1|XCH|A, R1|Exchange Bytes|
|CA|1|XCH|A, R2|Exchange Bytes|
|CB|1|XCH|A, R3|Exchange Bytes|
|CC|1|XCH|A, R4|Exchange Bytes|
|CD|1|XCH|A, R5|Exchange Bytes|
|CE|1|XCH|A, R6|Exchange Bytes|
|CF|1|XCH|A, R7|Exchange Bytes|
|D0|2|POP|direct|Pop Value From Stack|
|D1|2|ACALL|addr11|Absolute Call|
|D2|2|SETB|bit|Set Bit|
|D3|1|SETB|C|Set Bit|
|D4|1|DA|A|Decimal Adjust|
|D5|3|DJNZ|direct, offset|Decrement Register and Jump if Not Zero|
|D6|1|XCHD|A, @R0|Exchange Digits|
|D7|1|XCHD|A, @R1|Exchange Digits|
|D8|2|DJNZ|R0, offset|Decrement Register and Jump if Not Zero|
|D9|2|DJNZ|R1, offset|Decrement Register and Jump if Not Zero|
|DA|2|DJNZ|R2, offset|Decrement Register and Jump if Not Zero|
|DB|2|DJNZ|R3, offset|Decrement Register and Jump if Not Zero|
|DC|2|DJNZ|R4, offset|Decrement Register and Jump if Not Zero|
|DD|2|DJNZ|R5, offset|Decrement Register and Jump if Not Zero|
|DE|2|DJNZ|R6, offset|Decrement Register and Jump if Not Zero|
|DF|2|DJNZ|R7, offset|Decrement Register and Jump if Not Zero|
|E0|1|MOVX|A, @DPTR|Move Extended Memory|
|E1|2|AJMP|addr11|Absolute Jump Within 2K Block|
|E2|1|MOVX|A, @R0|Move Extended Memory|
|E3|1|MOVX|A, @R1|Move Extended Memory|
|E4|1|CLR|A|Clear Register|
|E5|2|MOV|A, direct|Move Memory|
|E6|1|MOV|A, @R0|Move Memory|
|E7|1|MOV|A, @R1|Move Memory|
|E8|1|MOV|A, R0|Move Memory|
|E9|1|MOV|A, R1|Move Memory|
|EA|1|MOV|A, R2|Move Memory|
|EB|1|MOV|A, R3|Move Memory|
|EC|1|MOV|A, R4|Move Memory|
|ED|1|MOV|A, R5|Move Memory|
|EE|1|MOV|A, R6|Move Memory|
|EF|1|MOV|A, R7|Move Memory|
|F0|1|MOVX|@DPTR, A|Move Extended Memory|
|F1|2|ACALL|addr11|Absolute Call|
|F2|1|MOVX|@R0, A|Move Extended Memory|
|F3|1|MOVX|@R1, A|Move Extended Memory|
|F4|1|CPL|A|Complement Register|
|F5|2|MOV|direct, A|Move Memory|
|F6|1|MOV|@R0, A|Move Memory|
|F7|1|MOV|@R1, A|Move Memory|
|F8|1|MOV|R0, A|Move Memory|
|F9|1|MOV|R1, A|Move Memory|
|FA|1|MOV|R2, A|Move Memory|
|FB|1|MOV|R3, A|Move Memory|
|FC|1|MOV|R4, A|Move Memory|
|FD|1|MOV|R5, A|Move Memory|
|FE|1|MOV|R6, A|Move Memory|
|FF|1|MOV|R7, A|Move Memory|
