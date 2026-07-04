## Logical Instructions

### Objective

Learn how to perform logical instructions in Assembly language.

### Prerequisites

- Review the lecture material before completing this activity.
- This lab will only work on a Linux platform using an Intel x86 architecture.
- The online assembler will not work because it does not provide the required debugging features.
- Understand how to run Assembly code using the NASM assembler in Linux OS.
- Understand how to debug Assembly code using `gdb`.

### Task

Perform the following logical operations using Assembly language.

1. Demonstrate that **XORing** an operand with itself changes the operand to **0**.
2. Create a practical example where a **TEST** instruction can be used. Explain the purpose of the instruction and demonstrate its use in your code.

### Debugging Parameters

I recommend using the following debugging parameters to display the results. See the lecture materials for additional explanations.

```
layout asm
layout regs
watch (int) result
break _start
run
stepi
```

### What to Submit

1. Draw a flowchart illustrating your thought process. You may use any application of your choice. (**1 mark**)
2. Describe the challenges you encountered while completing the activity from design through implementation. (**1 mark**)
3. Submit working and error-free Assembly code. (**3 marks**)

### How to Submit

- Upload your work to GitHub.
- Clearly document all responses.
- Submit the GitHub repository link in Canvas.
