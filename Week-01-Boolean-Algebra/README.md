# Boolean Algebra
### Assignment Solution
#### Sections
1. [Flowchart](#Flowchart)
2. [Code](#Code)
3. [Output](#Output)
4. [Challenges](#Challenges)
5. [Resources](#Resources)
### Task
1. Simplify the following Boolean expression:
    
    **F = A'B'C' + A'B'C + A'BC + AB'C + ABC'**
    
2. Simplify a Boolean expression using Boolean algebra properties for a motion-sensing light system.
    
    - **Inputs:** m = motion sensed, t = test mode
    - **Output:** i = illuminate lamp
    - **Goal:** Illuminate the lamp if:
        - Motion is sensed and test mode is off.
        - Test mode is on and no motion is sensed.
        - Test mode is on and motion is sensed.
    
	Write the original Boolean expression and then simplify it using Boolean algebra properties.
# Flowchart
### Problem 1
Simplify the following Boolean expression:
$$F = A'B'C' + A'B'C + A'BC + AB'C + ABC'$$

$$A'B'(C'+C)+A'BC+AB'C+ABC'$$
$$A'B'+A'BC+AB'C+ABC'$$
$$A'B'+A'BC+A(B'C+BC')$$
$$A'B'+A'BC+AB'C+ABC'$$
$$A'(B'+BC)+AB'C+ABC'$$
$$A'(B+C)+AB'C+ABC'$$
$$A'B'+A'C+AB'C+ABC'$$
$$A'B'+C(A'+AB')+ABBC'$$
$$F=A'B'+CA'+CB'+ABC'$$
### Problem 2
- **Inputs:** 
	- m = motion sensed, 
	- t = test mode
- **Output:** 
	- i = illuminate lamp

**Goal:** Illuminate the lamp if:
- Motion is sensed and test mode is off.
	- m=1, t=0 -> mt'
- Test mode is on and no motion is sensed.
	- m=0, t=1 -> m't
- Test mode is on and motion is sensed.
	- m=1, t=1 -> mt

Formula:

$$i=mt'+m't+mt$$
$$mt'+m't(m'+m)$$
$$mt'+t$$
$$i=m+t$$
# Code
```
section .text
	global _start
	
_start:
	
	
section .data 
	
	
```
# Output
Text
```

```

Screenshot
![Assembly program output](./w#output#.png)
# Challenges

# Resources
Additional
1.  
