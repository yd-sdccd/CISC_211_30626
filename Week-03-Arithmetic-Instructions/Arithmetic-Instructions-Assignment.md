## Variables and Constants

### Objective

Learn how to declare and use initialized and uninitialized variables in Assembly language.

### Prerequisites

- Review the lecture material before completing this activity.
- Understand how to run Assembly language programs using the NASM assembler in a Linux operating system.

### Task

Write an Assembly language program that uses initialized and uninitialized variables.

Requirements:

- Assign **10** to the variable **var1**.
- Assign **15** to the variable **var2**.
- Add **var1** and **var2** and store the result in the variable **result**.

Use the following starter code:

```
section .text
        global _start

_start:
        ; use this space for the main body of your program
        ; ======== write your code below ===========







        ; ======== write your code above ===========

        mov eax,1      ; set eax register to 1 (do not remove this line)
        int 0x80       ; interrupt 0x80 (do not remove this line)

segment .bss
        ; use this space for uninitialized variable (result)

segment .data
        ; use this space for initialized variables (var1 and var2)
```

To complete this activity, review the lecture materials where the process of compiling, linking, and debugging Assembly programs using `gdb` is demonstrated. You may also watch the [instructional video](https://www.youtube.com/watch?v=4IZSh1WVyi8).

When you execute the program from the command line, no output will appear if the program runs successfully. To verify your result, you must debug the program using `gdb`.

**Note:** Set `result` as a watch variable in `gdb`. You should then be able to observe the sum of `var1` and `var2`.

### What to Submit

1. Draw a flowchart illustrating your thought process. You may use any application of your choice. (**1 mark**)
2. Describe the challenges you encountered while completing the activity from design through implementation. (**1 mark**)
3. Submit working and error-free Assembly code. (**3 marks**)
