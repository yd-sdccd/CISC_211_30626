https://d-khan.github.io/cisc-courses/assembly/lectures/functions/
### Functions
When a function is called, a stack frame is created to support the function's execution. 

The stack frame contain the function's local variables and the arguments. 

`push` place value into stack.
`pop` retrieve value from stack.

`ebp` base pointer (bottom).
`esp` stack pointer (top).

Intel architecture:
1. Item added -> stack grows downwards (from high memory).
2. Item removed -> stack shrinks upwards (from low memory).
3. Value push -> memory address `esp` - 2 bytes
4. Value pop -> memory address `esp` + 2 bytes
5. Double word -> +- 4 bytes
