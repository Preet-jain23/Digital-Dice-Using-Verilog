This code implements a Digital Dice using a 4-bit Linear Feedback Shift Register (LFSR). The LFSR generates pseudo-random sequences, and based on the output, the system simulates a dice roll. The code consists of three main modules:

LFSR Module:

The LFSR is a 4-bit shift register that uses a feedback mechanism to generate pseudo-random numbers.
The feedback is calculated as the XOR of two specific bits from the register, which ensures randomness.
The LFSR outputs a 4-bit number that will serve as the input for determining the dice value.
LFSR Testbench (lfsr_tb):

This module simulates the LFSR for verification purposes. It generates a clock signal (clk_tb) and a reset signal (rst_tb) to test the functionality of the LFSR.
Digital Dice Module (Digital_dice):

This module uses the output from the LFSR to simulate a dice roll.
The 4-bit value from the LFSR is mapped to a 7-segment display code, representing the corresponding face of a dice.
The output is mapped based on the LFSR's generated value, ensuring the dice has six faces with random numbers between 1 and 6.
