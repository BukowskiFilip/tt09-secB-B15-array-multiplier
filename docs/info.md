<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->




```mermaid
  info
```



# 4x4 Array Multiplier

```mermaid
graph TD
    A3["A3"] --> |"AND"| P3_3["P3_3 (A3 * B3)"]
    A2["A2"] --> |"AND"| P2_3["P2_3 (A2 * B3)"]
    A1["A1"] --> |"AND"| P1_3["P1_3 (A1 * B3)"]
    A0["A0"] --> |"AND"| P0_3["P0_3 (A0 * B3)"]

    B3["B3"] --> P3_3
    B3 --> P2_3
    B3 --> P1_3
    B3 --> P0_3

    A3 --> |"AND"| P3_2["P3_2 (A3 * B2)"]
    A2 --> |"AND"| P2_2["P2_2 (A2 * B2)"]
    A1 --> |"AND"| P1_2["P1_2 (A1 * B2)"]
    A0 --> |"AND"| P0_2["P0_2 (A0 * B2)"]

    B2["B2"] --> P3_2
    B2 --> P2_2
    B2 --> P1_2
    B2 --> P0_2

    P3_3 --> S3["Sum Stage 1"]
    P2_3 --> S2
    P1_3 --> S1
    P0_3 --> S0

    S3 --> Output["Final Output (8 bits)"]


## How it works

Explain how your project works

## How to test

Explain how to use your project

## External hardware
N/A

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
