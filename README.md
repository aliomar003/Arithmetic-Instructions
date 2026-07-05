# Arithmetic Instructions Lab

## Objective

The objective of this lab was to learn how to perform arithmetic instructions in Assembly language using NASM on a Linux operating system. The lab involved creating separate Assembly programs for four arithmetic equations, storing initialized variables in the `.data` section, storing the result in the `.bss` section, and debugging the programs using GDB.

---

# Flowchart

```text
          +-------+
          | Start |
          +-------+
               |
               v
 +------------------------+
 | Load initialized data  |
 +------------------------+
               |
               v
 +------------------------+
 | Perform calculation    |
 +------------------------+
               |
               v
 +------------------------+
 | Store value in result  |
 +------------------------+
               |
               v
 +------------------------+
 | Exit program           |
 +------------------------+
```

---

# Challenges

One challenge during this lab was learning how Assembly uses registers instead of variables for arithmetic operations. Another challenge was understanding signed multiplication and division using the `imul`, `cdq`, and `idiv` instructions. Debugging with GDB helped verify that each instruction produced the correct value before storing it in the `result` variable.

---

# Equation 1

### Formula

```text
result = -var1 * 10
```

### equation1.asm

```asm
section .text
global _start

_start:
    mov eax, [var1]
    neg eax
    imul eax, 10
    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 5
```

### Result

```text
result = -5 × 10 = -50
```

---

# Equation 2

### Formula

```text
result = var1 + var2 + var3 + var4
```

### equation2.asm

```asm
section .text
global _start

_start:
    mov eax, [var1]
    add eax, [var2]
    add eax, [var3]
    add eax, [var4]
    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 5
var2 dd 10
var3 dd 15
var4 dd 20
```

### Result

```text
5 + 10 + 15 + 20 = 50
```

---

# Equation 3

### Formula

```text
result = (-var1 * var2) + var3
```

### equation3.asm

```asm
section .text
global _start

_start:
    mov eax, [var1]
    neg eax
    imul eax, [var2]
    add eax, [var3]
    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 4
var2 dd 5
var3 dd 6
```

### Result

```text
(-4 × 5) + 6 = -14
```

---

# Equation 4

### Formula

```text
result = (var1 * 2) / (var2 - 3)
```

### equation4.asm

```asm
section .text
global _start

_start:
    mov eax, [var1]
    imul eax, 2

    mov ebx, [var2]
    sub ebx, 3

    cdq
    idiv ebx

    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 10
var2 dd 5
```

### Result

```text
(10 × 2) ÷ (5 − 3)

20 ÷ 2 = 10
```

---

# Compiling

For each file:

```bash
nasm -f elf32 equation1.asm -o equation1.o
ld -m elf_i386 equation1.o -o equation1
./equation1
```

Repeat the commands for:

* equation2.asm
* equation3.asm
* equation4.asm

---

# Debugging

Start GDB:

```bash
gdb ./equation1
```

Inside GDB:

```gdb
layout asm
layout regs
watch (int) result
break _start
run
stepi
```

Repeat for each Assembly program.

---

# Files Included

```
Arithmetic-Instructions/
│── README.md
│── equation1.asm
│── equation2.asm
│── equation3.asm
│── equation4.asm
```

---

# GitHub Repository

Upload all five files to GitHub:

* README.md
* equation1.asm
* equation2.asm
* equation3.asm
* equation4.asm

Copy the repository link and submit it in Canvas.
