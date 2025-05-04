# Single and Dual Port RAM Design in Vivado

## Overview

This project demonstrates the design and implementation of single-port and dual-port RAM modules using Xilinx Vivado. Three different methods were explored to implement RAM efficiently and to utilize the internal Block RAM (BRAM) resources of the FPGA:

1. **IP Catalog Method** — using the BRAM Generator from Vivado's IP Catalog.
2. **Language Template Method** — using predefined language templates provided by Vivado.
3. **Recommended Coding Style Method** — based on Vivado documentation for efficient BRAM inference during synthesis.

A general-purpose RAM module was also written in Verilog to serve as a flexible and reusable design component.

## Tools & Technologies

- **Vivado Design Suite** – for simulation, synthesis, implementation, and analysis.
- **Verilog HDL** – for writing RTL code.
- **FPGA Target** – Designed to be compatible with Xilinx FPGAs.



