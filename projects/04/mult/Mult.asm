// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// for (i=0; i<R0; i++) {
//     R2 = R2 + R1
// }

// Init:
@R2
M=0

@i
M=0

// Body:

(LOOP)
    @i
    D=M

    @R0
    D=D-M

    @END
    D;JGE // if (i-R0 >= 0) GOTO END

    @R1
    D=M

    @R2
    M=D+M

    @i
    M=M+1 // i++

    @LOOP
    0;JMP

(END)
    @END
    0;JMP
