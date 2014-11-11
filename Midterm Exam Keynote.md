## Microcontrollers:
- __Microprocessors__, such as __8086__ family, have only __CCU__ and __ALU__ in them. External RAM, ROM, and I/O are required.
- __Microcontrollers__, such as __8051__ family, encompass __CCU__, __ALU__, __RAM__, __ROM__, and __I/O__ in a single chip.
- Microcontrollers have __limited__ computational __power__, but their __low-cost__ make them prevalent in comsumer products and small-scale control systems.

## Features:
- __8-bit__ CPU optimized for control applications
- __128 bytes__ of on-chip Data __RAM__, __4K bytes__ of on-chip Program Memory (__Flash Memory/ROM__)
- __64K Program Memory__ address space, __64K Data Memory__ address space
- __32__ bidirectional and individually addressable __I/O__ lines
- __Two 16-bit timer/counters__
- Full duplex programmable __UART__
- __6-source/5-vector interrupt__ structure with __two priority__ levels

## Pin Configurations:
- [Pin Configurations](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Pin_Configurations.gif)
- Vcc, GND: supply voltage (5V), ground
- __XTAL1, XTAL2__: crystal connections for system clock
- RST: reset input
- _EA_: External Access, _EA_=5V to enable internal ROM.
- P0.0~P0.7: Port 0, bidirectional bit-addressable with open drain
- P1.0~P1.7: Port 1, bidirectional bit-addressable with internal pullups
- P2.0~P2.7: Port 2, bidirectional bit-addressable with internal pullups
- P3.0~P3.7: Port 3, bidirectional bit-addressable with internal pullups
- [Alternative Functions of Port 3](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Alternative_Function_of_Port3.gif)
- _PSEN_: Program Store Enable, read strobe for external program memory
- ALE: Address Latch Enable, for multiplexing AD0~AD7
- A8~A15(P2.0~P2.7): high-byte address bus for external addressing
- AD0~AD7(P0.0~P0.7): multiplexed low-byte address bus and data bus for external addressing

## Special Function Registers:
- ACC: Accumulator
- B: B Register
- SP: Stack Pointer
- __DPTR__(DPH,DPL): Data Pointer
- P0: Port 0
- P1: Port 1
- P2: Port 2
- P3: Port 3
- __TH0__: Timer/Counter 0 High Byte
- __TL0__: Timer/Counter 0 Low Byte
- __TH1__: Timer/Counter 1 High Byte
- __TL1__: Timer/Counter 1 Low Byte
- __SBUF__: Serial Data Buffer
- PWS: Program Status Word
- __PCON__: Power Control Register
- __IE__: Interrupt Enable Register
- __IP__: Interrupt Priority Register
- __TCON__: Timer/Counter Control Register
- __TMOD__: Timer/Counter Mode Control Register
- __SCON__: Serial Port Control Register
- PC: Program Counter

## Interrupt Mechanism:
- [Interrupt Control System](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Interrupt_Control_System.gif)
- [__Interrupt Vector Address__](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Interrupt_Vector_Address.gif)
- [__Interrupt Flag Bits__](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Interrupt_Flag_Bits.gif)

## __Addressing Mode:__
- Immediate: MOV A,#20h
- Register: MOV A,R0
- Direct: MOV A,30h
- __Indirect__: MOV A,@R0
- External Data Indirect: MOVX A,@DPTR
- __Code Indirect__: MOVC A,@A+DPTR

## 8051 Development Tools:
- Assembler (ASEM-51)
	- An assembler is a program which creates object code by translating combinations of mnemonics and syntax for operations and addressing modes into their numerical equivalents.
- Simulator (JSIM-51, Emulator 8051, Emily 8051/8052)
	- 8051 Microcontroller Simulator is one such application which through a simple and well organized interface offers the necessary tools and functions for emulating a physical microprocessor at work.
- Programmer
	- USB programmer to burn AT89S series 8051 microcontroller through USBasp.
- In-Circuit-Debugger (NoICE Remote Debugger)
	- With NoICE Remote Debugger, a monitor "MON8051.HEX" is programmed into ROM, which is controlled by "NoICE51.EXE" (running on PC) via RS232 to debug user program loaded into RAM.
- Disassembler (DIS8051 Cross-Disassembler)
	- A disassembler is a computer program that translates machine language into assembly language—the inverse operation to that of an assembler. 
- Editor (MIDE-51 Studio, Crimson Editor, MCU 8051 IDE)
	- MCU 8051 IDE is a free software integrated development environment for microcontrollers based on 8051. MCU 8051 IDE has its own simulator and assembler (support for some external assemblers is also available). This IDE supports 2 programming languages: C and Assembly language. For C language it uses SDCC.
	- Advanced text editor with syntax highlighting and validation.
- Terminal Emulator (Tera Term Pro)
	- RS232 Emulator

## Alphabetical List of Instructions ([OPcodes](https://github.com/hearsilent/8051-asm/blob/master/Opcodes.md)):
- ACALL - Absolute Call
- __ADD, ADDC__ - Add Accumulator (With Carry)
- AJMP - Absolute Jump
- ANL - Bitwise AND
- CJNE - Compare and Jump if Not Equal
- __CLR__ - Clear Register
- __CPL__ - Complement Register
- DA - Decimal Adjust
- __DEC__ - Decrement Register
- DIV - Divide Accumulator by B
- __DJNZ__ - Decrement Register and Jump if Not Zero
- __INC__ - Increment Register
- __JB__ - Jump if Bit Set
- JBC - Jump if Bit Set and Clear Bit
- JC - Jump if Carry Set
- __JMP__ - Jump to Address
- __JNB__ - Jump if Bit Not Set
- JNC - Jump if Carry Not Set
- JNZ - Jump if Accumulator Not Zero
- JZ - Jump if Accumulator Zero
- __LCALL__ - Long Call
- __LJMP__ - Long Jump
- __MOV__ - Move Memory
- __MOVC__ - Move Code Memory
- MOVX - Move Extended Memory
- MUL - Multiply Accumulator by B
- __NOP__ - No Operation
- ORL - Bitwise OR
- POP - Pop Value From Stack
- PUSH - Push Value Onto Stack
- __RET__ - Return From Subroutine
- __RETI__ - Return From Interrupt
- __RL__ - Rotate Accumulator Left
- RLC - Rotate Accumulator Left Through Carry
- __RR__ - Rotate Accumulator Right
- RRC - Rotate Accumulator Right Through Carry
- __SETB__ - Set Bit
- __SJMP__ - Short Jump
- SUBB - Subtract From Accumulator With Borrow
- SWAP - Swap Accumulator Nibbles
- XCH - Exchange Bytes
- XCHD - Exchange Digits
- XRL - Bitwise Exclusive OR