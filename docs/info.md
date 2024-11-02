<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->




```mermaid

graph TD
    %% Input Bits for Clarity
    X3["X3 (Most Significant Bit of A)"]
    X2["X2 (Second Bit of A)"]
    X1["A1 (Third Bit of A)"]
    X0["X0 (Least Significant Bit of A)"]

    Y3["Y3 (Most Significant Bit of B)"]
    Y2["Y2 (Second Bit of B)"]
    Y1["Y1 (Third Bit of B)"]
    Y0["Y0 (Least Significant Bit of B)"]

    %% Row Q0 (Partial Products of A * Y0)
    X3 --> |"AND with Y0"| Q0_3["Q0_3 = X3 * Y0"]
    X2 --> |"AND with Y0"| Q0_2["Q0_2 = X2 * Y0"]
    A1 --> |"AND with Y0"| Q0_1["Q0_1 = A1 * Y0"]
    X0 --> |"AND with Y0"| Q0_0["Q0_0 = X0 * Y0"]

    %% Row Q1 (Partial Products of A * Y1)
    X3 --> |"AND with Y1"| Q1_3["Q1_3 = X3 * Y1"]
    X2 --> |"AND with Y1"| Q1_2["Q1_2 = X2 * Y1"]
    A1 --> |"AND with Y1"| Q1_1["Q1_1 = A1 * Y1"]
    X0 --> |"AND with Y1"| Q1_0["Q1_0 = X0 * Y1"]

    %% Row Q2 (Partial Products of A * Y2)
    X3 --> |"AND with Y2"| Q2_3["Q2_3 = X3 * Y2"]
    X2 --> |"AND with Y2"| Q2_2["Q2_2 = X2 * Y2"]
    A1 --> |"AND with Y2"| Q2_1["Q2_1 = A1 * Y2"]
    X0 --> |"AND with Y2"| Q2_0["Q2_0 = X0 * Y2"]

    %% Row Q3 (Partial Products of A * Y3)
    X3 --> |"AND with Y3"| Q3_3["Q3_3 = X3 * Y3"]
    X2 --> |"AND with Y3"| Q3_2["Q3_2 = X2 * Y3"]
    A1 --> |"AND with Y3"| Q3_1["Q3_1 = A1 * Y3"]
    X0 --> |"AND with Y3"| Q3_0["Q3_0 = X0 * Y3"]

    %% Add spacing between rows for visibility
    Q0_0 --- Q0_1
    Q0_1 --- Q0_2
    Q0_2 --- Q0_3

    Q1_0 --- Q1_1
    Q1_1 --- Q1_2
    Q1_2 --- Q1_3

    Q2_0 --- Q2_1
    Q2_1 --- Q2_2
    Q2_2 --- Q2_3

    Q3_0 --- Q3_1
    Q3_1 --- Q3_2
    Q3_2 --- Q3_3

    %% Sum Stages with Full Adders and Final Outputs
    %% Full Adder Stage 1 (P0)
    Q0_0 --> P0["P0 (Least Significant Bit of Product)"]

    %% Full Adder Stage 2 (P1)
    Q0_1 --> FA1["Full Adder for P1"]:::fa
    Q1_0 --> FA1
    FA1 --> P1["P1 (Second Bit of Product)"]

    %% Full Adder Stage 3 (P2)
    Q0_2 --> FX2["Full Adder for P2"]:::fa
    Q1_1 --> FX2
    Q2_0 --> FX2
    FX2 --> P2["P2 (Third Bit of Product)"]

    %% Full Adder Stage 4 (P3)
    Q0_3 --> FX3["Full Adder for P3"]:::fa
    Q1_2 --> FX3
    Q2_1 --> FX3
    Q3_0 --> FX3
    FX3 --> P3["P3 (Fourth Bit of Product)"]

    %% Full Adder Stage 5 (P4)
    Q1_3 --> FA4["Full Adder for P4"]:::fa
    Q2_2 --> FA4
    Q3_1 --> FA4
    FA4 --> P4["P4 (Fifth Bit of Product)"]

    %% Full Adder Stage 6 (P5)
    Q2_3 --> FA5["Full Adder for P5"]:::fa
    Q3_2 --> FA5
    FA5 --> P5["P5 (Sixth Bit of Product)"]

    %% Full Adder Stage 7 (P6 and Carry to P7)
    Q3_3 --> FA6["Full Adder for P6"]:::fa
    FA6 --> P6["P6 (Seventh Bit of Product)"]

    FA6 --> P7["P7 (Most Significant Bit of Product)"]

    %% Style Definitions
    classDef fa fill:#cce5ff, stroke:#004085, stroke-width:2px,color:#000000;
    classDef input fill:#d4edda, stroke:#155724, stroke-width:2px, color:#000000;
    classDef product fill:#fff3cd, stroke:#856404, stroke-width:2px, color:#000000;
    classDef output fill:#f8d7da, stroke:#721c24, stroke-width:2px, color:#000000;

    %% Apply styles to nodes
    class X3,X2,A1,X0 input;
    class Y3,Y2,Y1,Y0 input;
    class Q0_0,Q0_1,Q0_2,Q0_3,Q1_0,Q1_1,Q1_2,Q1_3,Q2_0,Q2_1,Q2_2,Q2_3,Q3_0,Q3_1,Q3_2,Q3_3 product;
    class FA1,FX2,FX3,FA4,FA5,FA6 fa;
    class P0,P1,P2,P3,P4,P5,P6,P7 output;

```



















```mermaid
flowchart TD
    style A fill:#ffffff,stroke:#000000,color:#000000
    style B fill:#ffffff,stroke:#000000,color:#000000
    style PP0 fill:#ffffff,stroke:#000000,color:#000000
    style PP1 fill:#ffffff,stroke:#000000,color:#000000
    style PP2 fill:#ffffff,stroke:#000000,color:#000000
    style PP3 fill:#ffffff,stroke:#000000,color:#000000
    style S1 fill:#ffffff,stroke:#000000,color:#000000
    style S2 fill:#ffffff,stroke:#000000,color:#000000
    style Final fill:#ffffff,stroke:#000000,color:#000000

    A["Input X (x3, x2, x1, x0)"] -->|AND| PP0["PP0"];
    A -->|AND| PP1["PP1"];
    A -->|AND| PP2["PP2"];
    A -->|AND| PP3["PP3"];

    B["Input Y (y3, y2, y1, y0)"] -->|y0| PP0;
    B -->|y1| PP1;
    B -->|y2| PP2;
    B -->|y3| PP3;

    PP0 --> S1["Sum Stage"];
    PP1 --> S1;
    PP2 --> S2["Next Sum Stage"];
    PP3 --> S2;

    S1 --> Final["Final Result"];
    S2 --> Final;



```




























## How it works

Explain how your project works

## How to test

Explain how to use your project

## External hardware
N/A

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
