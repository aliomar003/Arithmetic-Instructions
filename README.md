# Arithmetic Instructions Lab

## Objective

The purpose of this lab was to practice performing arithmetic operations in Assembly language using NASM on a Linux system. Four separate Assembly programs were created to solve different arithmetic equations using initialized variables and an uninitialized result variable.

## Flowchart

1. Start the program.
2. Load the initialized variables into registers.
3. Perform the required arithmetic operation.
4. Store the answer in the `result` variable.
5. End the program.

## Challenges

The biggest challenge was learning how to use CPU registers to perform arithmetic operations instead of regular variables. I also had to understand how multiplication and division work in Assembly language and how to debug the programs using GDB to verify the results.

## Equations Completed

* `result = -var1 * 10`
* `result = var1 + var2 + var3 + var4`
* `result = (-var1 * var2) + var3`
* `result = (var1 * 2) / (var2 - 3)`

## Files Included

* `equation1.asm`
* `equation2.asm`
* `equation3.asm`
* `equation4.asm`
* `README.md`

## Compilation

Each program can be assembled using NASM, linked with the Linux linker, and executed on a Linux x86 system.

## Debugging

The programs were debugged using GDB with the recommended commands from the assignment:

* `layout asm`
* `layout regs`
* `watch (int) result`
* `break _start`
* `run`
* `stepi`
