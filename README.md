8051 ASM
====================

## Software:
- [MIDE-51 Studio: IDE for MCS-51](http://www.opcube.com/software/midepack02518.exe) (Release 0.2.5.18)
- [89S51-ISP Driver](https://www.dropbox.com/s/ad67lrqpj0yhbqh/Driver.rar?dl=1)
- [ISP-Flash Programmer](https://www.dropbox.com/s/bnw50hy2odxwcvy/ISP-30a.zip?dl=1)

## List:
- [1.AT89S51 Programmer](https://raw.githubusercontent.com/hearsilent/8051-asm/master/1.AT89S51%20Programmer.jpg)
- [2.Flash LED](https://github.com/hearsilent/8051-asm/blob/master/2.Flash%20LED.asm)
- [3.DIP Switch/Button](https://github.com/hearsilent/8051-asm/blob/master/3.DIP%20Switch_Button.asm)
- [4.External Interrupt](https://github.com/hearsilent/8051-asm/blob/master/4.External%20Interrupt.asm)
- [5.Counter](https://github.com/hearsilent/8051-asm/blob/master/5.Counter.asm)
- [6.Timer](https://github.com/hearsilent/8051-asm/blob/master/6.Timer.asm)
- 7.UART
- 8.Flash LED with SDCC
- 9.Keypad
- 10.DC Motor
- 11.Stepper Motor
- 12.ADC
- 13.RS-232
- 14.CLCD
- 15.RF-Module
- 16.SEEPROM

## Addressing Mode:
- Immediate: MOV A,#20h
- Register: MOV A,R0
- Direct: MOV A,30h
- Indirect: MOV A,@R0
- External Data Indirect: MOVX A,@DPTR
- Code Indirect: MOVC A,@A+DPTR 

## Data Sheet:
- [Atmel AT89S51](http://www.keil.com/dd/docs/datashts/atmel/at89s51_ds.pdf)
    
## Others:
- [Pin Configurations](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Pin_Configurations.gif)
- [Special Function Register Map](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Special_Function_Register_Map.gif)
- [Interrupt Vector Address](https://raw.githubusercontent.com/hearsilent/8051-asm/master/Interrupt_Vector_Address.gif)
   
## Example:
- [zlargon/8051-ASM](https://github.com/zlargon/8051-ASM)
- [sjm126/8051](https://github.com/sjm126/8051)
- [praveendath92/8051Codes](https://github.com/praveendath92/8051Codes)
- [live5156go51/lab8051](https://github.com/live5156go51/lab8051)
      
## Registers:
The only register on an 8051 that is not memory-mapped is the 16-bit program counter PC. This specifies the address of the next instruction to execute. Relative branch instructions supply an 8-bit signed offset which is added to the PC.   
   
The following registers are memory-mapped into the special function register space:   

- (0x81) Stack pointer SP. This is an 8-bit register used by subroutine call and return instructions. The stack grows upward; the SP is incremented before pushing, and decremented after popping a value.
- (0x82–83) Data pointer DP. This is a 16-bit register that is used for accessing PMEM and XRAM.
- (0xD0) Program status word PSW. This contains important status flags:
	- PSW.0: P Parity. Gives the parity (modulo-2 sum of the bits of) the most recent ALU result.
	- PSW.1: UD User Defined. For general software use, not otherwise used by hardware.
	- PSW.2: OV Overflow flag. Set when addition produces a signed overflow.
	- PSW.3: RS0 Register select 0. The low-order bit of the register bank. Set when banks at 0x08 or 0x18 are in use.
	- PSW.4: RS1 Register select 1. The high-order bit of the register bank. Set when banks at 0x10 or 0x18 are in use.
	- PSW.5: F0 Flag 0. For general software use, not otherwise used by hardware.
	- PSW.6: AC auxiliary carry. Set when addition produces a carry from bit 3 to bit 4.
	- PSW.7: C Carry bit.
- (0xE0) Accumulator A. This register is used by most instructions.
- (0xF0) B register. This is used as an extension to the accumulator for multiply and divide instructions.
   
In addition, there are 8 general purpose registers R0–R7, mapped to IRAM between 0x00 and 0x1F. Only 8 bytes of that range are used at any given time, determined by the bank select bits in the PSW.   
   
256 single bits are directly addressable. These are the 16 IRAM locations from 0x20–0x2F, and the 16 special function registers 0x80, 0x88, 0x90, …, 0xF8.   

Note that the PSW does not contain the common N (negative) and Z (zero) flags. Instead, because the accumulator is a bit-addressible SFR, it is possible to branch on individual bits of it, including the msbit. There is also an instruction to jump if the accumulator is zero or non-zero.   
   
## Instruction set:
Instructions are all 1 to 3 bytes long, consisting of an initial opcode byte, followed by up to 2 bytes of operands.   
   
There are 16 basic ALU instructions that operate between the accumulator and a second operand, specified using one of the following addressing modes:   
   
Register direct, R0–R7 (opcodes x8–xF)   
Register indirect, @R0 or @R1 (opcodes x6 and x7)   
Memory direct, specifying an IRAM or SFR location (opcodes x5, followed by 1 byte of address)   
Immediate, specifying an 8-bit constant (opcodes x4, followed by 1 byte of data)   
The instructions are as follows. Not all support all addressing modes; the immediate mode in particular is sometimes nonsensical:   

- 0y INC operand: Increment the specified operand. Opcode 04 specifies "INC A"
- 1y DEC operand: Decrement the specified operand. Opcode 14 specifies "DEC A"
- 2y ADD A,operand: Add the operand to the accumulator A.
- 3y ADDC A,operand: Add the operand, plus the C bit, to the accumulator.
- 4y ORL A,operand: Logical OR the operand into the A register.
- 5y ANL A,operand: Logical AND the operand into the A register.
- 6y XRL A,operand: Logical exclusive-OR the operand into the A register.
- 7y MOV operand,#data: Move immediate data to the operand. Opcode 74 specifies "MOV A,#data.
- 8y MOV address,operand: Move data to an IRAM or SFR register.
- 9y SUBB A,operand: Subtract the operand from the accumulator, with borrow. Note there is no subtract without borrow.
- Ay MOV operand,address: Move data from an IRAM or SFR register. Opcodes A4 and A5 are not used.
- By CJNE operand,#data,offset: Compare operand to the immediate data, and branch to PC+address if not equal. Opcodes B4 and B5 perform CJNE A,operand,offset, for memory direct and immediate operands. Note there is no "compare and jump if equal" instruction.
- Cy XCH A,operand: Exchange (swap) the accumulator and the operand. Opcode C4 is not used.
- Dy DJNZ operand,offset: Decrement the operand, and branch to PC+offset if the result is non-zero. Opcodes D4, D6, and D7 are not used.
- Ey MOV A,operand: Move operand to the accumulator. Opcode E4 is not used. (Use opcode 74 instead.)
- Fy MOV operand,A: Move accumulator to the operand. Opcode F4 is not used.

Only the ADD, ADDC and SUBB instructions set PSW flags. The INC, DEC, and logical instructions do not. The CJNE instructions modify the C bit only, to the borrow that results from operand1−operand2.   
   
The 32 opcodes 0x00–0x3F, plus the few opcodes not used in the above range, are used for other instructions with more limited operand-specification capabilities.   
   
One of the reasons for the 8051's popularity is its range of operations on single bits. Bits are always specified by absolute addresses; there is no register-indirect or indexed addressing. Instructions that operate on single bits are:   
   
- SETB bit, CLR bit, CPL bit: Set, clear, or complement the specified bit   
- JB bit,offset: Jump if bit set   
- JNB bit,offset: Jump if bit clear   
- JBC bit,offset: Jump if bit set, and clear bit   
- MOV C,bit, MOV bit,C: Move the specified bit to the carry bit, or vice-versa   
- ORL C,bit, ORL C,/bit: OR the bit (or its complement) to the carry bit   
- ANL C,bit, ANL C,/bit: AND the bit (or its complement) to the carry bit   
- XRL C,bit, XRL C,/bit: Exclusive-OR the bit (or its complement) to the carry bit   

Although most instructions require that one operand is the accumulator or an immediate constant, it is possible to perform a MOV directly between two internal RAM locations.   
