<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->


# 4x4 Array Multiplier

```mermaid
  info
```



```mermaid
graph TD
    A3["A3"] --> |"AND"| P3["P3"]
    A2["A2"] --> |"AND"| P2["P2"]
    A1["A1"] --> |"AND"| P1["P1"]
    A0["A0"] --> |"AND"| P0["P0"]
    
    B3["B3"] --> P3
    B2["B2"] --> P2
    B1["B1"] --> P1
    B0["B0"] --> P0
    
    P3 --> S3["Sum with P2"]
    P2 --> S2["Sum with P1"]
    P1 --> S1["Sum with P0"]
    
    S3 --> Output["Final Output (8 bits)"]


## How it works

Explain how your project works

## How to test

Explain how to use your project

## External hardware
N/A

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
