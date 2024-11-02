<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->




```mermaid
graph TD
    %% Input Bits
    A3["A3 (Most Significant Bit of A)"]
    A2["A2"]
    A1["A1"]
    A0["A0 (Least Significant Bit of A)"]

    B3["B3 (Most Significant Bit of B)"]
    B2["B2"]
    B1["B1"]
    B0["B0 (Least Significant Bit of B)"]

    %% Partial Products (AND Gates labeled as M0, M1, M2, M3)
    A3 --> |"AND with B3"| M3_3["M3_3 (A3 * B3)"]
    A2 --> |"AND with B3"| M2_3["M2_3 (A2 * B3)"]
    A1 --> |"AND with B3"| M1_3["M1_3 (A1 * B3)"]
    A0 --> |"AND with B3"| M0_3["M0_3 (A0 * B3)"]

    A3 --> |"AND with B2"| M3_2["M3_2 (A3 * B2)"]
    A2 --> |"AND with B2"| M2_2["M2_2 (A2 * B2)"]
    A1 --> |"AND with B2"| M1_2["M1_2 (A1 * B2)"]
    A0 --> |"AND with B2"| M0_2["M0_2 (A0 * B2)"]

    A3 --> |"AND with B1"| M3_1["M3_1 (A3 * B1)"]
    A2 --> |"AND with B1"| M2_1["M2_1 (A2 * B1)"]
    A1 --> |"AND with B1"| M1_1["M1_1 (A1 * B1)"]
    A0 --> |"AND with B1"| M0_1["M0_1 (A0 * B1)"]

    A3 --> |"AND with B0"| M3_0["M3_0 (A3 * B0)"]
    A2 --> |"AND with B0"| M2_0["M2_0 (A2 * B0)"]
    A1 --> |"AND with B0"| M1_0["M1_0 (A1 * B0)"]
    A0 --> |"AND with B0"| M0_0["M0_0 (A0 * B0)"]

    %% Full Adders in Sum Stages
    M0_0 --> FA1["Full Adder Stage 1"]
    M1_0 --> FA1
    M0_1 --> FA1

    FA1 --> FA2["Full Adder Stage 2"]
    M2_0 --> FA2
    M1_1 --> FA2
    M0_2 --> FA2

    FA2 --> FA3["Full Adder Stage 3"]
    M3_0 --> FA3
    M2_1 --> FA3
    M1_2 --> FA3
    M0_3 --> FA3

    FA3 --> Output["Final Output (8 bits)"]

```























## How it works

Explain how your project works

## How to test

Explain how to use your project

## External hardware
N/A

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
