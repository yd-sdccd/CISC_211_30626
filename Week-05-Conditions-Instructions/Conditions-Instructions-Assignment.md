## Conditional Instructions

### Objective

Learn how to perform conditional instructions in Assembly language.

### Prerequisites

- Review the lecture material before completing this activity.
- This lab will only work on a Linux platform using an Intel x86 architecture.
- The online assembler will not work because it does not provide the required debugging features.
- Understand how to run Assembly code using the NASM assembler in Linux OS.
- Understand how to debug Assembly code using `gdb`.

### Task

Perform the following tasks:

1. Generate a sequence of either even or odd numbers up to 20.
2. Find the largest number among **five integer values**. Use initialized variables for the input values and store the result in an uninitialized variable named `largest`.

### Debugging Parameters

I recommend using the following debugging parameters to display the results. See the lecture materials for additional explanations.

```
layout asm
layout regs
watch (int) largest
break _start
run
stepi
```

### What to Submit

1. Draw a flowchart illustrating your thought process. You may either use an online flowchart tool or create a handwritten flowchart. No other formats will be accepted. (**1 mark**)
2. Describe the challenges you encountered while completing the activity from design through implementation. (**1 mark**)
3. Submit working and error-free Assembly code. (**8 marks**)

### How to Submit

- Upload your work to GitHub.
- Clearly document all responses.
- Submit the GitHub repository link in Canvas.

### Deadline

The deadlines are posted in the syllabus and on Canvas.

### Rubric

- All questions are answered and working code is submitted. (**Grade: 100%**)
- Questions are partially answered, or the code contains errors or incorrect output. (**Grade: 50%**)
