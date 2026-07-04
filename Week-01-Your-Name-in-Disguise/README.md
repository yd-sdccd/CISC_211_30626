## Assignment solution
### Sections
1. Task
2. Process
3. Summary Results
4. Decimal to Binary Work
5. Year to Binary Work

---
# Task
First day task at ACME: Create codename

Convert name (in lowercase) to hexadecimal format and birth year to binary.

---
# Process
1. My plaintext codename is jasmine1999
2. To convert my code name to hexadecimal
	1. Convert plaintext to decimal with he ASCII table.
	2. Then from decimal to binary
		1. To concert a decimal value to binary we continually divide the decimal value and it's quotients until we reach the lowest quotient. 
		2. Round up the remainder, to get 0 or 1.
		3. The binary is written starting with the remainder of the lowest quotient.
	3. And finally from binary to hexadecimal
		1. Once we have the 8 bit binary value, we convert the binary digits to hexadecimal. Add a leading 0 to the left of the 7 digit binary in order to get 8 total digits. 
		2. Hexadecimal converts all 4 digit bit patterns into 16 possible values, the first half being represented by the values 1-9, and the second half being represented by A-F.
		3. I used a hexadecimal and 4 digit binary chart for quick conversion.
3. To convert plaintext to binary
	1. Convert plaintext numbers to binary, this is much easier, I just counted in binary to convert each digit of my birth year to binary.

Final result of converting plaintext codename to hexadecimal and binary:

6A 61 73 6D 69 6E 65 0001 1001 1001 1001

---
# Summary Results
Final result of converting plaintext codename to hexadecimal and binary:

6A 61 73 6D 69 6E 65 0001 1001 1001 1001


|               | Name     |          |          |          |          |          |          |
| ------------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| Plaintext chr | j        | a        | s        | m        | i        | n        | e        |
| Decimal       | 106      | 97       | 115      | 109      | 105      | 110      | 101      |
| Binary        | 01101010 | 01100001 | 01110011 | 01101101 | 01101001 | 01101110 | 01100101 |
| Hexadecimal   | 6A       | 61       | 73       | 6D       | 69       | 6E       | 65       |


|               | year |      |      |      |
| ------------- | ---- | ---- | ---- | ---- |
| Plaintext num | 1    | 9    | 9    | 9    |
| Binary        | 0001 | 1001 | 1001 | 1001 |


---
# Work for converting decimal to binary

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 106/2       | = 53       | 0         |
| 53/2        | = 26       | 1         |
| 26/2        | =13        | 0         |
| 13/2        | = 6.5      | 1         |
| 6/2         | = 3        | 0         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 97/2        | = 48       | 1         |
| 48/2        | = 24       | 0         |
| 24/2        | = 12       | 0         |
| 12/2        | = 6        | 0         |
| 6/2         | = 3        | 0         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 115/2       | = 57.5     | 1         |
| 57/2        | = 28.5     | 1         |
| 28/2        | = 14       | 0         |
| 14/2        | = 7        | 0         |
| 7/2         | = 3.5      | 1         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 109/2       | = 54.5     | 1         |
| 54/2        | = 27       | 0         |
| 27/2        | = 13.5     | 1         |
| 13/2        | = 6.5      | 1         |
| 6/2         | = 3        | 0         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 105/2       | = 52.5     | 1         |
| 52/2        | = 26       | 0         |
| 26/2        | = 13       | 0         |
| 13/2        | = 6.5      | 1         |
| 6/2         | = 3        | 0         |
| 3/1         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 110/2       | = 55       | 0         |
| 55/2        | = 27.5     | 1         |
| 27/2        | = 13.5     | 1         |
| 13/2        | = 6.5      | 1         |
| 6/2         | = 3        | 0         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

| Decimal / 2 | = Quotient | Remainder |
| ----------- | ---------- | --------- |
| 101/2       | = 50.5     | 1         |
| 50/2        | = 25       | 0         |
| 25/2        | = 12.5     | 1         |
| 12/2        | = 6        | 0         |
| 6/2         | = 3        | 0         |
| 3/2         | = 1.5      | 1         |
| 1/2         | = 0.5      | 1         |

---
# Work for converting year to Binary

|               | year |      |      |      |
| ------------- | ---- | ---- | ---- | ---- |
| Plaintext num | 1    | 9    | 9    | 9    |
| Binary        | 0001 | 1001 | 1001 | 1001 |
