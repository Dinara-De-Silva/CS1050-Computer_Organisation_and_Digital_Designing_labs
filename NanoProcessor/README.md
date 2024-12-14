# Group Project: 4-Bit Processor Components

This repository contains the components I developed as part of a group project to build a 4-bit processor. Below is an overview of the components I contributed to the project, detailing their design and implementation.

---

## **Components I Developed**

### **1. 4-Bit Add/Subtract Unit**
- **Description**: This unit is capable of performing addition and subtraction on numbers represented using 2's complement.
- **Implementation**:
  - Modified the **4-bit Ripple Carry Adder (RCA)** from Lab 3 to include subtraction functionality.

---

### **2. 3-Bit Adder**
- **Description**: This unit is used to increment the **Program Counter (PC)**.
- **Implementation**:
  - Adapted the **4-bit RCA** from Lab 3 to implement a 3-bit adder.

---

### **3. 3-Bit Program Counter (PC)**
- **Description**: The Program Counter tracks the current instruction in the program and can be reset to 0 when required.
- **Features**:
  - Built using **D Flip-Flops** with a clear/reset input.
  - Utilized the **D Flip-Flop** developed in Lab 5.

---

### **4. k-Way b-Bit Multiplexers**
- **Description**: Multiplexers that take in `k` inputs, each with `b` bits, and output one selected group of `b` bits. The selection is controlled by `log2(k)` control bits.
- **Components Developed**:
  1. **2-Way 3-Bit Multiplexer**
  2. **2-Way 4-Bit Multiplexer**
  3. **8-Way 4-Bit Multiplexer**
- **Implementation**:
  - Built using the **8-to-1 multiplexer** developed in Lab 4.
  - Alternatively, explored using tri-state buffers for multiplexing. Researched and implemented tri-state buffers in VHDL.

---

### **5. Program ROM**
- **Description**: A Read-Only Memory (ROM) module to store the assembly program for the processor.
- **Implementation**:
  - Extended the **ROM-based Look-Up Table (LUT)** developed in Lab 7 to create the Program ROM.

---

## **Tools and Techniques Used**
- **Vivado Software**: For designing and simulating digital circuits.
- **VHDL**: For implementing and simulating the tri-state buffer-based multiplexers.
- **Team Collaboration**: Worked alongside my group to integrate these components into the overall 4-bit processor design.

---

## **Acknowledgment**
This repository showcases my contributions to the group project, demonstrating my understanding of digital design principles and my ability to adapt existing designs to meet new requirements.

---

Feel free to explore the components and their implementations in this repository.
