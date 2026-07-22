https://d-khan.github.io/cisc-courses/assembly/lectures/procedures/

### Procedures
Procedures or subroutines are like functions that aren't expected to return a value.
```
proc_name:
	procedure body
	...
	ret
```
`call procedure` jumps to the procedure.
`ret` returns to the call location to continue the program.

### Stack
Stacks are an array-like data structure in the memory where data is stored and removed from the 'top' of the stack. 
```
push operand
pop address/register
```
- SS and ESP registers implement the stack. SS:ESP points to the top of the stack, SS points at the beginning and ESP gives the offset into the stack segment.
- Only words or double words are saved to the stack.
- Stack grows in the reverse direction, towards the lower memory address.
- Top of the stack points to the last item inserted, to the lower byte of the last word.
