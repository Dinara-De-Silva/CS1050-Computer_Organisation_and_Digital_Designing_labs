# CS 1050 Lab Activities Repository

Welcome to the repository containing the lab activities I completed for the **CS 1050: Program Construction and Digital Designing** module. In this module, we developed various fundamental components of a processor using Vivado software. Below is an overview of each lab and its objectives.

---

## **Lab 3**
- **Objective**: To build basic adder circuits.
- **Tasks**:
  1. Develop a **Half Adder (HA)**.
  2. Create a **Full Adder (FA)**.
  3. Combine them to design a **4-bit Ripple Carry Adder (RCA)**.

---

## **Lab 4**
- **Objective**: To design key components of a microprocessor: decoders and multiplexers.
- **Tasks**:
  1. Design a **2-to-4 Decoder** and a **3-to-8 Decoder**.
     - A decoder is a multi-input, multi-output logic circuit that decodes `n` inputs into `2^n` possible outputs.
  2. Design an **8-to-1 Multiplexer** using previously created decoders.
     - A multiplexer is a digital device that selects one of several input signals and forwards it to a single output.

---

## **Lab 5**
- **Objective**: To design sequential circuits.
- **Tasks**:
  1. Develop a **3-bit counter** using a slowdown clock and D flip-flops.
     - The counter operates in both clockwise and anti-clockwise directions based on an external input.
  2. Design a **slowdown clock**.
  3. Implement a **D flip-flop**.

---

## **Lab 6**
- **Objective**: To design registers and an arithmetic unit.
- **Tasks**:
  1. Create a **4-bit register** using D flip-flops.
  2. Develop a **4-bit arithmetic unit** capable of adding two numbers stored in separate registers.
     - Reuse the slowdown clock and Ripple Carry Adder (RCA) developed in previous labs.
  3. Verify the functionality of the arithmetic unit through simulation.

---

## **Lab 7**
- **Objective**: To design a **7-Segment Display** for displaying hexadecimal numbers.
- **Tasks**:
  1. Develop a lookup table using ROM to map 4-bit sums to 7-segment display outputs.
  2. Integrate the 7-segment display with the 4-bit arithmetic unit (from Lab 6) to display results in hexadecimal.
  3. Verify functionality through simulation and implementation on a development board.

---

## **Lab 8**
- **Objective**: To learn **assembly programming** and interface simple output devices.
- **Tasks**:
  1. Use the **Microprocessor Simulator V5.0 (smz32)** to develop and simulate assembly programs.
     - The smz32 simulator emulates an 8-bit CPU.
  2. Understand the basics of assembly language programming.

---

## **Lab 9 & 10**: **4-bit Nanoprocessor**
- **Objective**: To design a simple 4-bit processor capable of executing basic instructions.
- **Tasks**:
  1. Design and develop a **4-bit arithmetic unit** that can:
     - Add and subtract signed integers.
  2. Decode instructions to activate necessary processor components.
  3. Design and develop **k-way b-bit multiplexers** or tri-state buses.
  4. Verify the processor functionality via simulation and implementation on the development board.

---

## **lab-Multiplexer**
- **Objective**: To implement multipliers for binary numbers.
- **Tasks**:
  1. Design and implement a **2x2 multiplier** using two full adders.
  2. Design and implement a **4x4 multiplier** using twelve full adders.

---

## Tools Used
- **Vivado Software**: For designing and simulating digital circuits.
- **Microprocessor Simulator V5.0 (smz32)**: For assembly programming and CPU simulation.

---

## Acknowledgment
This repository demonstrates my learning progress in digital designing and processor development. It highlights my ability to implement foundational concepts in digital logic and assembly programming.

---

Feel free to explore the code and simulations for each lab.
