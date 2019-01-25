Unit 1.1 Boolean Logic

    Commutative Law
        x AND y = y AND x
        x OR y = y OR x

    Associative Law
        x AND (y AND z) = (x AND y) AND z
        x OR (y OR z) = (x OR y) OR z

    Distributive Law
        x AND (y OR z) = (x AND y) OR (x AND z)
        x OR (y AND z) = (x OR y) AND (x OR z)

    De Morgan Law
        NOT(x AND y) = NOT(x) OR NOT(y)
        NOT(x OR y) = NOT(x) AND NOT(y)

Unit 1.7 Project 1

    Elementary Logic gates
        Not, And, Or, Xor, Mux (Multiplexor), DMux (Demultiplexor).

    16-bit vatiants
        Not16, And16, Or16, Mux16.

    Multi-way variants
        Or8Way, Mux4Way16, Mux8Way16, DMux4Way, DMux8Way.

    NB
        Multi-bit busses (unit 1.6) are indexed right to left:
        If A if a 16-bit bus, then A[0] is the right-most bit, and A[15] is the
        left-most bit

Unit 2.2 Binary Addition

    Half Adder, Full Adder, Multi-bit Adder (16-bit Adder)

Unit 2.3 Negative Numbers

    Computing -x
        1) take all 1-s, and subtract our x from it (just flip the bits)
        2) add 1

Unit 3
    Project 3:
        1) Bit
        2) Register
        3) RAM8
        4) RAM64
        5) RAM512
        6) RAM4K
        7) RAM16K
        8) PC

    https://www.nand2tetris.org/hdl-survival-guide

    The Hack chip-set API

    Add16(a= ,b= ,out= );
    ALU(x= ,y= ,zx= ,nx= ,zy= ,ny= ,f= ,no= ,out= ,zr= ,ng= );
    And16(a= ,b= ,out= );
    And(a= ,b= ,out= );
    ARegister(in= ,load= ,out= );
    Bit(in= ,load= ,out= );
    CPU(inM= ,instruction= ,reset= ,outM= ,writeM= ,addressM= c= );
    DFF(in= ,out= );
    DMux4Way(in= ,sel= ,a= ,b= ,c= ,d= );
    DMux8Way(in= ,sel= ,a= ,b= ,c= ,d= ,e= ,f= ,g= ,h= );
    DMux(in= ,sel= ,a= ,b= );
    DRegister(in= ,load= ,out= );
    FullAdder(a= ,b= ,c= ,sum= ,carry= );
    HalfAdder(a= ,b= ,sum= , carry= );
    Inc16(in= ,out= );
    Keyboard(out= );
    Memory(in= ,load= ,address= ,out= );
    Mux16(a= ,b= ,sel= ,out= );
    Mux4Way16(a= ,b= ,c= ,d= ,sel= ,out= );
    Mux8Way16(a= ,b= ,c= ,d= ,e= ,f= ,g= ,h= ,sel= ,out= );
    Mux(a= ,b= ,sel= ,out= );
    Nand(a= ,b= ,out= );
    Not16(in= ,out= );
    Not(in= ,out= );
    Or16(a= ,b= ,out= );
    Or8Way(in= ,out= );
    Or(a= ,b= ,out= );
    PC(in= ,load= ,inc= ,reset= ,out= );
    RAM16K(in= ,load= ,address= ,out= );
    RAM4K(in= ,load= ,address= ,out= );
    RAM512(in= ,load= ,address= ,out= );
    RAM64(in= ,load= ,address= ,out= );
    RAM8(in= ,load= ,address= ,out= );
    Register(in= ,load= ,out= );
    ROM32K(address= ,out= );
    Screen(in= ,load= ,address= ,out= );
    Xor(a= ,b= ,out= );


    RAM64:
	Sub-busing can only be used on buses that are named in the IN and OUT statements of an HDL file, or inputs and outputs of the chip-parts used in the PARTS section. If you need a sub-bus of an internal  bus, you must create the narrower bus as an output from a chip-part. For example:
	CHIP Foo {
	   IN in[16];
	   OUT out;
	PARTS:
	   Something16 (in=in, out=notIn);
	   Or8Way (in=notIn[4..11], out=out);
	}

	This implementation causes an error on the Or8Way statement. This needs to be coded as:
	   Something16 (in=in, out[4..11]=notIn);
	   Or8Way (in=notIn, out=out);

