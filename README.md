# Assembly Memory Access Violation

This repository demonstrates a potential memory access violation in assembly code due to an address calculation overflow.

The `bug.asm` file contains the problematic code.  The overflow occurs in the line `mov eax, [ebx + ecx*4]`, where a large value of `ecx` can cause an incorrect memory address to be calculated.

The `bugSolution.asm` file provides a corrected version of the code, incorporating checks to prevent the overflow.  This solution involves range checking or using a different addressing method that is less prone to overflow.

## Running the Code

You'll need an assembler (like NASM) and a linker (like LD) to compile and run the assembly code.  Detailed instructions will depend on your specific assembler and operating system.  You need to carefully test with different input values of `ecx` to understand the error and verify the solution.