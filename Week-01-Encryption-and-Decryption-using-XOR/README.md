Assignment solution

Sections:
1. Encryption and Calculation (Process)
2. Decryption Process and Calculations (Process)
3. XOR Encryption and Different Length Plaintext and Key (Challenges)

---

# Encryption process and calculation

The chosen message for this exercise is `MIRA` and the key is `MESA`. 

In order to perform XOR encryption on the message, the message and key must be in binary form. We first convert the message characters to ASCII to then convert them to a binary number.

The following table shows the `chr`, `ASCII`, and `binary` values for the message and the key.

| Message Chr | Message ASCII | Message Binary | Key Chr | Key ASCII | Key Binary |
| ----------- | ------------- | -------------- | ------- | --------- | ---------- |
| M           | 77            | 01001101       | M       | 77        | 01001101   |
| I           | 73            | 01001001       | E       | 69        | 01000101   |
| R           | 82            | 01010010       | S       | 83        | 01010011   |
| A           | 65            | 01000001       | A       | 65        | 01000001   |

To perform XOR encryption, apply the XOR operation to the corresponding bits of the message and key binaries. This will return the encrypted message in binary form.

The XOR operation returns a 1 only if one input is 1. 

The following tables demonstrate the XOR operation on `MIRA` and `MESA`.

| Chr Input             |  |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| M                     | 0      | 1   | 0   | 0   | 1   | 1   | 0   | 1   |
| M                     | 0      | 1   | 0   | 0   | 1   | 1   | 0   | 1   |
| **XOR binary result** | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 0   |

| Chr Input             |  |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| I                     | 0      | 1   | 0   | 0   | 1   | 0   | 0   | 1   |
| E                     | 0      | 1   | 0   | 0   | 0   | 1   | 0   | 1   |
| **XOR binary result** | 0      | 0   | 0   | 0   | 1   | 1   | 0   | 0   |

| Chr Input             |  |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| R                     | 0      | 1   | 0   | 1   | 0   | 0   | 1   | 0   |
| S                     | 0      | 1   | 0   | 1   | 0   | 0   | 1   | 1   |
| **XOR binary result** | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 1   |

| Chr Input             |  |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| A                     | 0      | 1   | 0   | 0   | 0   | 0   | 0   | 1   |
| A                     | 0      | 1   | 0   | 0   | 0   | 0   | 0   | 1   |
| **XOR binary result** | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 0   |

| Message Binary | Secret Key Binary | New Encrypted XOR Binary | Hexadecimal form |
| -------------- | ----------------- | ------------------------ | ---------------- |
| 01001101       | 01001101          | 00000000                 | 00               |
| 01001001       | 01000101          | 00001100                 | 0C               |
| 01010010       | 01010011          | 00000001                 | 01               |
| 01000001       | 01000001          | 00000000                 | 00               |

The resulting binary encrypted message: 
00000000 00001100 00000001 00000000

Encrypted message in hexadecimal form:
00 0C 01 00

---
# Decryption process and calculations

To decrypt the message, apply the XOR operation to the binary key and the binary encrypted message to receive the resulting decrypted message in binary form.

| Input             | Binary |     |     |     |     |     |     |     |
| ----------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| Encrypted message | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| Key               | 0      | 1   | 0   | 0   | 1   | 1   | 0   | 1   |
| **XOR result**    | 0      | 1   | 0   | 0   | 1   | 1   | 0   | 1   |

| Input                 | Binary |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| Encrypted message     | 0      | 0   | 0   | 0   | 1   | 1   | 0   | 0   |
| Key                   | 0      | 1   | 0   | 0   | 0   | 1   | 0   | 1   |
| **XOR binary result** | 0      | 1   | 0   | 0   | 1   | 0   | 0   | 1   |

| Input                 | Binary |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| Encrypted message     | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 1   |
| Key                   | 0      | 1   | 0   | 1   | 0   | 0   | 1   | 1   |
| **XOR binary result** | 0      | 1   | 0   | 1   | 0   | 0   | 1   | 0   |

| Input                 | Binary |     |     |     |     |     |     |     |
| --------------------- | ------ | --- | --- | --- | --- | --- | --- | --- |
| Encrypted message     | 0      | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| Key                   | 0      | 1   | 0   | 0   | 0   | 0   | 0   | 1   |
| **XOR binary result** | 0      | 1   | 0   | 0   | 0   | 0   | 0   | 1   |

| Encrypted binary message | Binary key | XOR Decryption Result |
| ------------------------ | ---------- | --------------------- |
| 00000000                 | 01001101   | 01001101              |
| 00001100                 | 01000101   | 01001001              |
| 00000001                 | 01010011   | 01010010              |
| 00000000                 | 01000001   | 01000001              |

To verify if the decrypted binary matches the original plaintext, convert the binary result to plaintext via ASCII.

| XOR Decryption Result | Message ASCII | Message Chr |
| --------------------- | ------------- | ----------- |
| 01001101              | 77            | M           |
| 01001001              | 73            | I           |
| 01010010              | 82            | R           |
| 01000001              | 65            | A           |

---
# XOR Encryption and Different Length Plaintext and Key

XOR encryption is possible with different length plaintext message and key if a method is implemented to make up for the discrepancy. The XOR operation needs one key bit to compare each plaintext bit, so we must match the key length to the message.

This could be done one of two ways: 
1. Repeat the key characters
2. Generate random key bytes

The simplest method is for the user to repeat the key until it matches the length of the plaintext message. For example, say that we wanted to encrypt the message `MIRA` with the key `SD`. We would repeat the key once to make up for the missing key length. 

| Message Chr | Message Binary | Key Chr | Key Binary | XOR Encrypted Binary |
| ----------- | -------------- | ------- | ---------- | -------------------- |
| M           | 01001101       | S       | 01010011   | 00011110             |
| I           | 01001001       | D       | 01000100   | 00001101             |
| R           | 01010010       | S       | 01010011   | 00000001             |
| A           | 01000001       | D       | 01000100   | 00000101             |

The issue with repeating the key is that repeating keys creates patterns making it easier to decipher the key leaving a significant security gap.

The second method is to generate random bytes as the key. This method is more secure because there are 256 possible values per byte. The main challenge with randomly generating keys is key management, keys need to be stored and transmitted securely for the user to retrieve. If for whatever reason the key is lost then the user cannot decipher their data. 

